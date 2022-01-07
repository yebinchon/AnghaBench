
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_sa_query {int release; int callback; TYPE_1__* mad_buf; int flags; struct ib_sa_port* port; } ;
struct ib_sa_port {int port_num; struct ib_mad_agent* agent; } ;
struct TYPE_6__ {scalar_t__ comp_mask; } ;
struct TYPE_5__ {int attr_id; int method; } ;
struct ib_sa_mad {TYPE_3__ sa_hdr; TYPE_2__ mad_hdr; } ;
struct ib_sa_classport_info_query {void (* callback ) (void*) ;struct ib_sa_query sa_query; void* context; } ;
struct ib_mad_agent {int device; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct ib_sa_mad* mad; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_MGMT_METHOD_GET ;
 int IB_SA_ATTR_CLASS_PORTINFO ;
 int IB_SA_QUERY_OPA ;
 int alloc_mad (struct ib_sa_query*,int ) ;
 int cpu_to_be16 (int ) ;
 int free_mad (struct ib_sa_query*) ;
 int ib_sa_classport_info_rec_callback ;
 int ib_sa_classport_info_rec_release ;
 int init_mad (struct ib_sa_query*,struct ib_mad_agent*) ;
 int kfree (struct ib_sa_classport_info_query*) ;
 struct ib_sa_classport_info_query* kzalloc (int,int ) ;
 scalar_t__ rdma_cap_opa_ah (int ,int ) ;
 int send_mad (struct ib_sa_query*,unsigned long,int ) ;

__attribute__((used)) static int ib_sa_classport_info_rec_query(struct ib_sa_port *port,
       unsigned long timeout_ms,
       void (*callback)(void *context),
       void *context,
       struct ib_sa_query **sa_query)
{
 struct ib_mad_agent *agent;
 struct ib_sa_classport_info_query *query;
 struct ib_sa_mad *mad;
 gfp_t gfp_mask = GFP_KERNEL;
 int ret;

 agent = port->agent;

 query = kzalloc(sizeof(*query), gfp_mask);
 if (!query)
  return -ENOMEM;

 query->sa_query.port = port;
 query->sa_query.flags |= rdma_cap_opa_ah(port->agent->device,
       port->port_num) ?
     IB_SA_QUERY_OPA : 0;
 ret = alloc_mad(&query->sa_query, gfp_mask);
 if (ret)
  goto err_free;

 query->callback = callback;
 query->context = context;

 mad = query->sa_query.mad_buf->mad;
 init_mad(&query->sa_query, agent);

 query->sa_query.callback = ib_sa_classport_info_rec_callback;
 query->sa_query.release = ib_sa_classport_info_rec_release;
 mad->mad_hdr.method = IB_MGMT_METHOD_GET;
 mad->mad_hdr.attr_id = cpu_to_be16(IB_SA_ATTR_CLASS_PORTINFO);
 mad->sa_hdr.comp_mask = 0;
 *sa_query = &query->sa_query;

 ret = send_mad(&query->sa_query, timeout_ms, gfp_mask);
 if (ret < 0)
  goto err_free_mad;

 return ret;

err_free_mad:
 *sa_query = ((void*)0);
 free_mad(&query->sa_query);

err_free:
 kfree(query);
 return ret;
}
