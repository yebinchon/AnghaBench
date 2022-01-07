
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int snpid; } ;
struct TYPE_8__ {TYPE_3__ to_host; } ;
struct TYPE_5__ {int omi; } ;
struct TYPE_6__ {TYPE_1__ index_ot; } ;
struct paace {int wbah; unsigned long fspi; unsigned long twbah; int addr_bitfields; int impl_attr; int win_bitfields; TYPE_4__ domain_attr; TYPE_2__ op_encode; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int ENOENT ;
 int OME_NUMBER_ENTRIES ;
 int PAACE_AF_AP ;
 int PAACE_ATM_WINDOW_XLATE ;
 int PAACE_IA_ATM ;
 int PAACE_IA_CID ;
 int PAACE_IA_OTM ;
 int PAACE_IA_WCE ;
 int PAACE_OTM_INDEXED ;
 int PAACE_WIN_TWBAL ;
 int PAMU_PAGE_SHIFT ;
 int PAMU_PAGE_SIZE ;
 int PPAACE_AF_MW ;
 int PPAACE_AF_WBAL ;
 int PPAACE_AF_WSE ;
 unsigned long ULONG_MAX ;
 int map_addrspace_size_to_wse (int) ;
 int map_subwindow_cnt_to_wce (int) ;
 int mb () ;
 unsigned long pamu_get_fspi_and_allocate (int) ;
 struct paace* pamu_get_ppaace (int) ;
 int pamu_init_ppaace (struct paace*) ;
 int pr_debug (char*,...) ;
 int set_bf (int ,int ,int) ;

int pamu_config_ppaace(int liodn, phys_addr_t win_addr, phys_addr_t win_size,
         u32 omi, unsigned long rpn, u32 snoopid, u32 stashid,
         u32 subwin_cnt, int prot)
{
 struct paace *ppaace;
 unsigned long fspi;

 if ((win_size & (win_size - 1)) || win_size < PAMU_PAGE_SIZE) {
  pr_debug("window size too small or not a power of two %pa\n",
    &win_size);
  return -EINVAL;
 }

 if (win_addr & (win_size - 1)) {
  pr_debug("window address is not aligned with window size\n");
  return -EINVAL;
 }

 ppaace = pamu_get_ppaace(liodn);
 if (!ppaace)
  return -ENOENT;


 set_bf(ppaace->addr_bitfields, PPAACE_AF_WSE,
        map_addrspace_size_to_wse(win_size));

 pamu_init_ppaace(ppaace);

 ppaace->wbah = win_addr >> (PAMU_PAGE_SHIFT + 20);
 set_bf(ppaace->addr_bitfields, PPAACE_AF_WBAL,
        (win_addr >> PAMU_PAGE_SHIFT));


 if (omi < OME_NUMBER_ENTRIES) {
  set_bf(ppaace->impl_attr, PAACE_IA_OTM, PAACE_OTM_INDEXED);
  ppaace->op_encode.index_ot.omi = omi;
 } else if (~omi != 0) {
  pr_debug("bad operation mapping index: %d\n", omi);
  return -EINVAL;
 }


 if (~stashid != 0)
  set_bf(ppaace->impl_attr, PAACE_IA_CID, stashid);


 if (~snoopid != 0)
  ppaace->domain_attr.to_host.snpid = snoopid;

 if (subwin_cnt) {

  fspi = pamu_get_fspi_and_allocate(subwin_cnt - 1);
  if (fspi == ULONG_MAX) {
   pr_debug("spaace indexes exhausted\n");
   return -EINVAL;
  }


  set_bf(ppaace->impl_attr, PAACE_IA_WCE,
         map_subwindow_cnt_to_wce(subwin_cnt));
  set_bf(ppaace->addr_bitfields, PPAACE_AF_MW, 0x1);
  ppaace->fspi = fspi;
 } else {
  set_bf(ppaace->impl_attr, PAACE_IA_ATM, PAACE_ATM_WINDOW_XLATE);
  ppaace->twbah = rpn >> 20;
  set_bf(ppaace->win_bitfields, PAACE_WIN_TWBAL, rpn);
  set_bf(ppaace->addr_bitfields, PAACE_AF_AP, prot);
  set_bf(ppaace->impl_attr, PAACE_IA_WCE, 0);
  set_bf(ppaace->addr_bitfields, PPAACE_AF_MW, 0);
 }
 mb();

 return 0;
}
