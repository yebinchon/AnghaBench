
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct paace {int addr_bitfields; } ;


 int ENOENT ;
 int PAACE_AF_AP ;
 int PAACE_AF_V ;
 int PAACE_AP_PERMS_DENIED ;
 int PAACE_V_INVALID ;
 int mb () ;
 struct paace* pamu_get_ppaace (int) ;
 struct paace* pamu_get_spaace (struct paace*,scalar_t__) ;
 int pr_debug (char*) ;
 int set_bf (int ,int ,int ) ;

int pamu_disable_spaace(int liodn, u32 subwin)
{
 struct paace *paace;

 paace = pamu_get_ppaace(liodn);
 if (!paace) {
  pr_debug("Invalid liodn entry\n");
  return -ENOENT;
 }
 if (subwin) {
  paace = pamu_get_spaace(paace, subwin - 1);
  if (!paace)
   return -ENOENT;
  set_bf(paace->addr_bitfields, PAACE_AF_V, PAACE_V_INVALID);
 } else {
  set_bf(paace->addr_bitfields, PAACE_AF_AP,
         PAACE_AP_PERMS_DENIED);
 }

 mb();

 return 0;
}
