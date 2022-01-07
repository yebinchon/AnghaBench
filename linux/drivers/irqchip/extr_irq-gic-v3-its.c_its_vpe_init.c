
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct its_vpe {int vpe_id; int vpe_proxy_event; struct page* vpt_page; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int its_alloc_vpe_table (int) ;
 struct page* its_allocate_pending_table (int ) ;
 int its_free_pending_table (struct page*) ;
 int its_vpe_id_alloc () ;
 int its_vpe_id_free (int) ;

__attribute__((used)) static int its_vpe_init(struct its_vpe *vpe)
{
 struct page *vpt_page;
 int vpe_id;


 vpe_id = its_vpe_id_alloc();
 if (vpe_id < 0)
  return vpe_id;


 vpt_page = its_allocate_pending_table(GFP_KERNEL);
 if (!vpt_page) {
  its_vpe_id_free(vpe_id);
  return -ENOMEM;
 }

 if (!its_alloc_vpe_table(vpe_id)) {
  its_vpe_id_free(vpe_id);
  its_free_pending_table(vpt_page);
  return -ENOMEM;
 }

 vpe->vpe_id = vpe_id;
 vpe->vpt_page = vpt_page;
 vpe->vpe_proxy_event = -1;

 return 0;
}
