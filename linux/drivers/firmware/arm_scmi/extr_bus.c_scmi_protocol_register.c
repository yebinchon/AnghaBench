
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scmi_prot_init_fn_t ;


 int GFP_ATOMIC ;
 int idr_alloc (int *,int ,int,int,int ) ;
 int pr_err (char*,int) ;
 int protocol_lock ;
 int scmi_protocols ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn)
{
 int ret;

 spin_lock(&protocol_lock);
 ret = idr_alloc(&scmi_protocols, fn, protocol_id, protocol_id + 1,
   GFP_ATOMIC);
 spin_unlock(&protocol_lock);
 if (ret != protocol_id)
  pr_err("unable to allocate SCMI idr slot, err %d\n", ret);

 return ret;
}
