
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct paace {int impl_attr; } ;


 int ENOENT ;
 int PAACE_IA_CID ;
 int mb () ;
 struct paace* pamu_get_ppaace (int) ;
 struct paace* pamu_get_spaace (struct paace*,scalar_t__) ;
 int pr_debug (char*) ;
 int set_bf (int ,int ,scalar_t__) ;

int pamu_update_paace_stash(int liodn, u32 subwin, u32 value)
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
 }
 set_bf(paace->impl_attr, PAACE_IA_CID, value);

 mb();

 return 0;
}
