
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ib_vendor_mad {int oui; } ;
struct ib_mad_port_private {int port_num; TYPE_2__* device; int reg_lock; TYPE_1__* version; } ;
struct ib_mad_mgmt_vendor_class_table {struct ib_mad_mgmt_vendor_class** vendor_class; } ;
struct ib_mad_mgmt_vendor_class {struct ib_mad_mgmt_method_table** method_table; } ;
struct ib_mad_mgmt_method_table {struct ib_mad_agent_private** agent; } ;
struct ib_mad_mgmt_class_table {struct ib_mad_mgmt_method_table** method_table; } ;
struct ib_mad_hdr {size_t class_version; size_t method; int mgmt_class; int tid; } ;
struct TYPE_6__ {int recv_handler; } ;
struct ib_mad_agent_private {TYPE_3__ agent; int refcount; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct ib_mad_mgmt_vendor_class_table* vendor; struct ib_mad_mgmt_class_table* class; } ;


 size_t ARRAY_SIZE (struct ib_mad_mgmt_method_table**) ;
 size_t IB_MGMT_METHOD_RESP ;
 size_t MAX_MGMT_VERSION ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 int be64_to_cpu (int ) ;
 size_t convert_mgmt_class (int ) ;
 int deref_mad_agent (struct ib_mad_agent_private*) ;
 int dev_notice (int *,char*,TYPE_3__*,int ) ;
 int find_vendor_oui (struct ib_mad_mgmt_vendor_class*,int ) ;
 int ib_mad_clients ;
 scalar_t__ ib_response_mad (struct ib_mad_hdr const*) ;
 int is_vendor_class (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t vendor_class_index (int ) ;
 struct ib_mad_agent_private* xa_load (int *,int) ;

__attribute__((used)) static struct ib_mad_agent_private *
find_mad_agent(struct ib_mad_port_private *port_priv,
        const struct ib_mad_hdr *mad_hdr)
{
 struct ib_mad_agent_private *mad_agent = ((void*)0);
 unsigned long flags;

 if (ib_response_mad(mad_hdr)) {
  u32 hi_tid;





  hi_tid = be64_to_cpu(mad_hdr->tid) >> 32;
  rcu_read_lock();
  mad_agent = xa_load(&ib_mad_clients, hi_tid);
  if (mad_agent && !atomic_inc_not_zero(&mad_agent->refcount))
   mad_agent = ((void*)0);
  rcu_read_unlock();
 } else {
  struct ib_mad_mgmt_class_table *class;
  struct ib_mad_mgmt_method_table *method;
  struct ib_mad_mgmt_vendor_class_table *vendor;
  struct ib_mad_mgmt_vendor_class *vendor_class;
  const struct ib_vendor_mad *vendor_mad;
  int index;

  spin_lock_irqsave(&port_priv->reg_lock, flags);




  if (mad_hdr->class_version >= MAX_MGMT_VERSION)
   goto out;
  if (!is_vendor_class(mad_hdr->mgmt_class)) {
   class = port_priv->version[
     mad_hdr->class_version].class;
   if (!class)
    goto out;
   if (convert_mgmt_class(mad_hdr->mgmt_class) >=
       ARRAY_SIZE(class->method_table))
    goto out;
   method = class->method_table[convert_mgmt_class(
       mad_hdr->mgmt_class)];
   if (method)
    mad_agent = method->agent[mad_hdr->method &
         ~IB_MGMT_METHOD_RESP];
  } else {
   vendor = port_priv->version[
     mad_hdr->class_version].vendor;
   if (!vendor)
    goto out;
   vendor_class = vendor->vendor_class[vendor_class_index(
      mad_hdr->mgmt_class)];
   if (!vendor_class)
    goto out;

   vendor_mad = (const struct ib_vendor_mad *)mad_hdr;
   index = find_vendor_oui(vendor_class, vendor_mad->oui);
   if (index == -1)
    goto out;
   method = vendor_class->method_table[index];
   if (method) {
    mad_agent = method->agent[mad_hdr->method &
         ~IB_MGMT_METHOD_RESP];
   }
  }
  if (mad_agent)
   atomic_inc(&mad_agent->refcount);
out:
  spin_unlock_irqrestore(&port_priv->reg_lock, flags);
 }

 if (mad_agent && !mad_agent->agent.recv_handler) {
  dev_notice(&port_priv->device->dev,
      "No receive handler for client %p on port %d\n",
      &mad_agent->agent, port_priv->port_num);
  deref_mad_agent(mad_agent);
  mad_agent = ((void*)0);
 }

 return mad_agent;
}
