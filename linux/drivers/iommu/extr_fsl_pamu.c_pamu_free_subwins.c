
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct paace {size_t fspi; int addr_bitfields; int impl_attr; } ;


 int PAACE_IA_WCE ;
 int PPAACE_AF_MW ;
 int gen_pool_free (int ,unsigned long,int) ;
 int get_bf (int ,int ) ;
 struct paace* pamu_get_ppaace (int) ;
 int pr_debug (char*) ;
 int set_bf (int ,int ,int ) ;
 int spaace_pool ;
 int * spaact ;

void pamu_free_subwins(int liodn)
{
 struct paace *ppaace;
 u32 subwin_cnt, size;

 ppaace = pamu_get_ppaace(liodn);
 if (!ppaace) {
  pr_debug("Invalid liodn entry\n");
  return;
 }

 if (get_bf(ppaace->addr_bitfields, PPAACE_AF_MW)) {
  subwin_cnt = 1UL << (get_bf(ppaace->impl_attr, PAACE_IA_WCE) + 1);
  size = (subwin_cnt - 1) * sizeof(struct paace);
  gen_pool_free(spaace_pool, (unsigned long)&spaact[ppaace->fspi], size);
  set_bf(ppaace->addr_bitfields, PPAACE_AF_MW, 0);
 }
}
