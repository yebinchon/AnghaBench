
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic_res_chunk {int dummy; } ;


 int kfree (struct usnic_vnic_res_chunk**) ;
 int usnic_vnic_put_resources (struct usnic_vnic_res_chunk*) ;

__attribute__((used)) static void free_qp_grp_res(struct usnic_vnic_res_chunk **res_chunk_list)
{
 int i;
 for (i = 0; res_chunk_list[i]; i++)
  usnic_vnic_put_resources(res_chunk_list[i]);
 kfree(res_chunk_list);
}
