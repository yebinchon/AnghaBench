
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qib_pportdata {int dummy; } ;
struct qib_msix_entry {int dummy; } ;
struct qib_devdata {scalar_t__ num_pports; int first_user_ctxt; int flags; int pcidev; TYPE_1__* cspec; scalar_t__* rcd; int f_notify_dca; int f_tempsense_rd; int f_writescratch; int f_sdma_init_early; int f_sdma_hw_start_up; int f_sdma_hw_clean_up; int f_xgxs_reset; int f_wantpiobuf_intr; int f_update_usrhead; int f_txchk_change; int f_setextled; int f_set_intr_state; int f_set_ib_table; int f_get_ib_table; int f_set_ib_loopback; int f_set_ib_cfg; int f_get_ib_cfg; int f_ibphys_portstate; int f_iblink_state; int f_set_cntr_sample; int f_set_armlaunch; int f_sendctrl; int f_sdma_update_tail; int f_sdma_set_desc_cnt; int f_sdma_sendctrl; int f_sdma_gethead; int f_sdma_busy; int f_init_sdma_regs; int f_reset; int f_read_portcntrs; int f_read_cntrs; int f_rcvctrl; int f_quiet_serdes; int f_put_tid; int f_portcntr; int f_setpbc_control; int f_late_initreg; int f_intr_fallback; int f_initvl15_bufs; int f_init_ctxt; int f_ib_updown; int f_hdrqempty; int f_eeprom_wen; int f_gpio_mod; int f_getsendbuf; int f_get_msgheader; int f_get_base_info; int f_free_irq; int f_clear_tids; int f_cleanup; int f_bringup_serdes; } ;
struct qib_chippport_specific {int dummy; } ;
struct qib_chip_specific {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {scalar_t__ port; } ;
struct TYPE_4__ {int num_msix_entries; int msix_entries; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 struct qib_devdata* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct qib_devdata*) ;
 int NUM_IB_PORTS ;
 int QIB_DCA_ENABLED ;
 int dca_add_requester (int *) ;
 int gpio_7322_mod ;
 int init_sdma_7322_regs ;
 TYPE_2__* irq_table ;
 int kcalloc (int,int,int ) ;
 int kr_hwdiagctrl ;
 int qib_7322_bringup_serdes ;
 int qib_7322_clear_tids ;
 int qib_7322_eeprom_wen ;
 int qib_7322_free_irq ;
 int qib_7322_get_base_info ;
 int qib_7322_get_ib_cfg ;
 int qib_7322_get_ib_table ;
 int qib_7322_get_msgheader ;
 int qib_7322_getsendbuf ;
 int qib_7322_hdrqempty ;
 int qib_7322_ib_updown ;
 int qib_7322_iblink_state ;
 int qib_7322_init_ctxt ;
 int qib_7322_initvl15_bufs ;
 int qib_7322_intr_fallback ;
 int qib_7322_mini_pcs_reset ;
 int qib_7322_mini_quiet_serdes ;
 int qib_7322_notify_dca ;
 int qib_7322_phys_portstate ;
 int qib_7322_put_tid ;
 int qib_7322_sdma_hw_clean_up ;
 int qib_7322_sdma_hw_start_up ;
 int qib_7322_sdma_init_early ;
 int qib_7322_sdma_sendctrl ;
 int qib_7322_set_ib_cfg ;
 int qib_7322_set_ib_table ;
 int qib_7322_set_intr_state ;
 int qib_7322_set_loopback ;
 int qib_7322_setpbc_control ;
 int qib_7322_tempsense_rd ;
 int qib_7322_txchk_change ;
 struct qib_devdata* qib_alloc_devdata (struct pci_dev*,int) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_devinfo (int ,char*) ;
 int qib_do_7322_reset ;
 int qib_free_devdata (struct qib_devdata*) ;
 int qib_init_7322_variables (struct qib_devdata*) ;
 scalar_t__ qib_krcvq01_no_msi ;
 int qib_late_7322_initreg ;
 scalar_t__ qib_mini_init ;
 int qib_pcie_ddcleanup (struct qib_devdata*) ;
 int qib_pcie_ddinit (struct qib_devdata*,struct pci_dev*,struct pci_device_id const*) ;
 scalar_t__ qib_pcie_params (struct qib_devdata*,int,int*) ;
 int qib_portcntr_7322 ;
 int qib_read_7322cntrs ;
 int qib_read_7322portcntrs ;
 int qib_sdma_7322_busy ;
 int qib_sdma_7322_gethead ;
 int qib_sdma_set_7322_desc_cnt ;
 int qib_sdma_update_7322_tail ;
 int qib_set_7322_armlaunch ;
 int qib_set_cntr_7322_sample ;
 int qib_setup_7322_cleanup ;
 int qib_setup_7322_interrupt (struct qib_devdata*,int) ;
 int qib_setup_7322_setextled ;
 int qib_setup_dca (struct qib_devdata*) ;
 int qib_update_7322_usrhead ;
 int qib_wantpiobuf_7322_intr ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int rcvctrl_7322_mod ;
 int sendctrl_7322_mod ;
 int writescratch ;

struct qib_devdata *qib_init_iba7322_funcs(struct pci_dev *pdev,
        const struct pci_device_id *ent)
{
 struct qib_devdata *dd;
 int ret, i;
 u32 tabsize, actual_cnt = 0;

 dd = qib_alloc_devdata(pdev,
  NUM_IB_PORTS * sizeof(struct qib_pportdata) +
  sizeof(struct qib_chip_specific) +
  NUM_IB_PORTS * sizeof(struct qib_chippport_specific));
 if (IS_ERR(dd))
  goto bail;

 dd->f_bringup_serdes = qib_7322_bringup_serdes;
 dd->f_cleanup = qib_setup_7322_cleanup;
 dd->f_clear_tids = qib_7322_clear_tids;
 dd->f_free_irq = qib_7322_free_irq;
 dd->f_get_base_info = qib_7322_get_base_info;
 dd->f_get_msgheader = qib_7322_get_msgheader;
 dd->f_getsendbuf = qib_7322_getsendbuf;
 dd->f_gpio_mod = gpio_7322_mod;
 dd->f_eeprom_wen = qib_7322_eeprom_wen;
 dd->f_hdrqempty = qib_7322_hdrqempty;
 dd->f_ib_updown = qib_7322_ib_updown;
 dd->f_init_ctxt = qib_7322_init_ctxt;
 dd->f_initvl15_bufs = qib_7322_initvl15_bufs;
 dd->f_intr_fallback = qib_7322_intr_fallback;
 dd->f_late_initreg = qib_late_7322_initreg;
 dd->f_setpbc_control = qib_7322_setpbc_control;
 dd->f_portcntr = qib_portcntr_7322;
 dd->f_put_tid = qib_7322_put_tid;
 dd->f_quiet_serdes = qib_7322_mini_quiet_serdes;
 dd->f_rcvctrl = rcvctrl_7322_mod;
 dd->f_read_cntrs = qib_read_7322cntrs;
 dd->f_read_portcntrs = qib_read_7322portcntrs;
 dd->f_reset = qib_do_7322_reset;
 dd->f_init_sdma_regs = init_sdma_7322_regs;
 dd->f_sdma_busy = qib_sdma_7322_busy;
 dd->f_sdma_gethead = qib_sdma_7322_gethead;
 dd->f_sdma_sendctrl = qib_7322_sdma_sendctrl;
 dd->f_sdma_set_desc_cnt = qib_sdma_set_7322_desc_cnt;
 dd->f_sdma_update_tail = qib_sdma_update_7322_tail;
 dd->f_sendctrl = sendctrl_7322_mod;
 dd->f_set_armlaunch = qib_set_7322_armlaunch;
 dd->f_set_cntr_sample = qib_set_cntr_7322_sample;
 dd->f_iblink_state = qib_7322_iblink_state;
 dd->f_ibphys_portstate = qib_7322_phys_portstate;
 dd->f_get_ib_cfg = qib_7322_get_ib_cfg;
 dd->f_set_ib_cfg = qib_7322_set_ib_cfg;
 dd->f_set_ib_loopback = qib_7322_set_loopback;
 dd->f_get_ib_table = qib_7322_get_ib_table;
 dd->f_set_ib_table = qib_7322_set_ib_table;
 dd->f_set_intr_state = qib_7322_set_intr_state;
 dd->f_setextled = qib_setup_7322_setextled;
 dd->f_txchk_change = qib_7322_txchk_change;
 dd->f_update_usrhead = qib_update_7322_usrhead;
 dd->f_wantpiobuf_intr = qib_wantpiobuf_7322_intr;
 dd->f_xgxs_reset = qib_7322_mini_pcs_reset;
 dd->f_sdma_hw_clean_up = qib_7322_sdma_hw_clean_up;
 dd->f_sdma_hw_start_up = qib_7322_sdma_hw_start_up;
 dd->f_sdma_init_early = qib_7322_sdma_init_early;
 dd->f_writescratch = writescratch;
 dd->f_tempsense_rd = qib_7322_tempsense_rd;
 ret = qib_pcie_ddinit(dd, pdev, ent);
 if (ret < 0)
  goto bail_free;


 ret = qib_init_7322_variables(dd);
 if (ret)
  goto bail_cleanup;

 if (qib_mini_init || !dd->num_pports)
  goto bail;







 tabsize = dd->first_user_ctxt + ARRAY_SIZE(irq_table);
 for (i = 0; i < tabsize; i++)
  if ((i < ARRAY_SIZE(irq_table) &&
       irq_table[i].port <= dd->num_pports) ||
      (i >= ARRAY_SIZE(irq_table) &&
       dd->rcd[i - ARRAY_SIZE(irq_table)]))
   actual_cnt++;

 if (qib_krcvq01_no_msi)
  actual_cnt -= dd->num_pports;

 tabsize = actual_cnt;
 dd->cspec->msix_entries = kcalloc(tabsize,
       sizeof(struct qib_msix_entry),
       GFP_KERNEL);
 if (!dd->cspec->msix_entries)
  tabsize = 0;

 if (qib_pcie_params(dd, 8, &tabsize))
  qib_dev_err(dd,
   "Failed to setup PCIe or interrupts; continuing anyway\n");

 dd->cspec->num_msix_entries = tabsize;


 qib_setup_7322_interrupt(dd, 1);


 qib_write_kreg(dd, kr_hwdiagctrl, 0);







 goto bail;

bail_cleanup:
 qib_pcie_ddcleanup(dd);
bail_free:
 qib_free_devdata(dd);
 dd = ERR_PTR(ret);
bail:
 return dd;
}
