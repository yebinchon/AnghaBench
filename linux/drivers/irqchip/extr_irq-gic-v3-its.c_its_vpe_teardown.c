
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int vpt_page; int vpe_id; } ;


 int its_free_pending_table (int ) ;
 int its_vpe_db_proxy_unmap (struct its_vpe*) ;
 int its_vpe_id_free (int ) ;

__attribute__((used)) static void its_vpe_teardown(struct its_vpe *vpe)
{
 its_vpe_db_proxy_unmap(vpe);
 its_vpe_id_free(vpe->vpe_id);
 its_free_pending_table(vpe->vpt_page);
}
