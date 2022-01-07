
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int trans_map; } ;


 int vfree (int ) ;

__attribute__((used)) static void pblk_l2p_free(struct pblk *pblk)
{
 vfree(pblk->trans_map);
}
