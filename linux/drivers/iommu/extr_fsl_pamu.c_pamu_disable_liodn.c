
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paace {int addr_bitfields; } ;


 int ENOENT ;
 int PAACE_AF_V ;
 int PAACE_V_INVALID ;
 int mb () ;
 struct paace* pamu_get_ppaace (int) ;
 int pr_debug (char*) ;
 int set_bf (int ,int ,int ) ;

int pamu_disable_liodn(int liodn)
{
 struct paace *ppaace;

 ppaace = pamu_get_ppaace(liodn);
 if (!ppaace) {
  pr_debug("Invalid primary paace entry\n");
  return -ENOENT;
 }

 set_bf(ppaace->addr_bitfields, PAACE_AF_V, PAACE_V_INVALID);
 mb();

 return 0;
}
