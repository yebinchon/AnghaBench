
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paace {int addr_bitfields; } ;


 int EINVAL ;
 int ENOENT ;
 int PAACE_AF_V ;
 int PAACE_V_VALID ;
 int PPAACE_AF_WSE ;
 int get_bf (int ,int ) ;
 int mb () ;
 struct paace* pamu_get_ppaace (int) ;
 int pr_debug (char*,...) ;
 int set_bf (int ,int ,int ) ;

int pamu_enable_liodn(int liodn)
{
 struct paace *ppaace;

 ppaace = pamu_get_ppaace(liodn);
 if (!ppaace) {
  pr_debug("Invalid primary paace entry\n");
  return -ENOENT;
 }

 if (!get_bf(ppaace->addr_bitfields, PPAACE_AF_WSE)) {
  pr_debug("liodn %d not configured\n", liodn);
  return -EINVAL;
 }


 mb();

 set_bf(ppaace->addr_bitfields, PAACE_AF_V, PAACE_V_VALID);
 mb();

 return 0;
}
