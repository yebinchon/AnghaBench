
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic_res_chunk {int type; } ;
struct usnic_ib_qp_grp {struct usnic_vnic_res_chunk** res_chunk_list; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;


 int EINVAL ;
 struct usnic_vnic_res_chunk* ERR_PTR (int ) ;

struct usnic_vnic_res_chunk*
usnic_ib_qp_grp_get_chunk(struct usnic_ib_qp_grp *qp_grp,
    enum usnic_vnic_res_type res_type)
{
 int i;

 for (i = 0; qp_grp->res_chunk_list[i]; i++) {
  if (qp_grp->res_chunk_list[i]->type == res_type)
   return qp_grp->res_chunk_list[i];
 }

 return ERR_PTR(-EINVAL);
}
