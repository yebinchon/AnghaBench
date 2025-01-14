
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ omi; } ;
struct TYPE_8__ {TYPE_3__ index_ot; } ;
struct TYPE_5__ {scalar_t__ snpid; } ;
struct TYPE_6__ {TYPE_1__ to_host; } ;
struct paace {scalar_t__ addr_bitfields; scalar_t__ win_bitfields; scalar_t__ impl_attr; unsigned long twbah; TYPE_4__ op_encode; TYPE_2__ domain_attr; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ OME_NUMBER_ENTRIES ;
 int PAACE_AF_AP ;
 int PAACE_AF_V ;
 scalar_t__ PAACE_ATM_WINDOW_XLATE ;
 int PAACE_IA_ATM ;
 int PAACE_IA_CID ;
 int PAACE_IA_OTM ;
 scalar_t__ PAACE_OTM_INDEXED ;
 scalar_t__ PAACE_V_VALID ;
 int PAACE_WIN_SWSE ;
 int PAACE_WIN_TWBAL ;
 int PAMU_PAGE_SIZE ;
 int SPAACE_AF_LIODN ;
 unsigned long ULONG_MAX ;
 scalar_t__ map_addrspace_size_to_wse (int) ;
 int mb () ;
 struct paace* pamu_get_ppaace (int) ;
 struct paace* pamu_get_spaace (struct paace*,scalar_t__) ;
 int pamu_init_spaace (struct paace*) ;
 int pr_debug (char*,...) ;
 int set_bf (scalar_t__,int ,scalar_t__) ;
 int smp_wmb () ;

int pamu_config_spaace(int liodn, u32 subwin_cnt, u32 subwin,
         phys_addr_t subwin_size, u32 omi, unsigned long rpn,
         u32 snoopid, u32 stashid, int enable, int prot)
{
 struct paace *paace;


 if (!subwin_cnt) {
  pr_debug("Invalid subwindow count\n");
  return -EINVAL;
 }

 paace = pamu_get_ppaace(liodn);
 if (subwin > 0 && subwin < subwin_cnt && paace) {
  paace = pamu_get_spaace(paace, subwin - 1);

  if (paace && !(paace->addr_bitfields & PAACE_V_VALID)) {
   pamu_init_spaace(paace);
   set_bf(paace->addr_bitfields, SPAACE_AF_LIODN, liodn);
  }
 }

 if (!paace) {
  pr_debug("Invalid liodn entry\n");
  return -ENOENT;
 }

 if ((subwin_size & (subwin_size - 1)) || subwin_size < PAMU_PAGE_SIZE) {
  pr_debug("subwindow size out of range, or not a power of 2\n");
  return -EINVAL;
 }

 if (rpn == ULONG_MAX) {
  pr_debug("real page number out of range\n");
  return -EINVAL;
 }


 set_bf(paace->win_bitfields, PAACE_WIN_SWSE,
        map_addrspace_size_to_wse(subwin_size));

 set_bf(paace->impl_attr, PAACE_IA_ATM, PAACE_ATM_WINDOW_XLATE);
 paace->twbah = rpn >> 20;
 set_bf(paace->win_bitfields, PAACE_WIN_TWBAL, rpn);
 set_bf(paace->addr_bitfields, PAACE_AF_AP, prot);


 if (~snoopid != 0)
  paace->domain_attr.to_host.snpid = snoopid;


 if (omi < OME_NUMBER_ENTRIES) {
  set_bf(paace->impl_attr, PAACE_IA_OTM, PAACE_OTM_INDEXED);
  paace->op_encode.index_ot.omi = omi;
 } else if (~omi != 0) {
  pr_debug("bad operation mapping index: %d\n", omi);
  return -EINVAL;
 }

 if (~stashid != 0)
  set_bf(paace->impl_attr, PAACE_IA_CID, stashid);

 smp_wmb();

 if (enable)
  set_bf(paace->addr_bitfields, PAACE_AF_V, PAACE_V_VALID);

 mb();

 return 0;
}
