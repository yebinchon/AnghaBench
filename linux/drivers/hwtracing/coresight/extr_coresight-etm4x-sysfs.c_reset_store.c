
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {int mode; int cfg; int eventctrl0; int eventctrl1; int ts_ctrl; int stall_ctrl; int syncfreq; int vinst_ctrl; int viiectlr; int vissctlr; int* seq_ctrl; int seq_rst; int seq_state; int ext_inp; int cntr_idx; int* cntrldvr; int* cntr_ctrl; int* cntr_val; int res_idx; int* res_ctrl; int* ss_ctrl; int* ss_pe_cmp; int addr_idx; int* addr_val; int* addr_acc; int ctxid_idx; int* ctxid_pid; int ctxid_mask0; int ctxid_mask1; int vmid_idx; int* vmid_val; int vmid_mask0; int vmid_mask1; int * addr_type; } ;
struct etmv4_drvdata {int syncpr; int nr_addr_cmp; int nrseqstate; int nr_cntr; int nr_resource; int nr_ss_cmp; int numcidc; int numvmidc; int spinlock; scalar_t__ cpu; scalar_t__ trcid; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 int BIT (int) ;
 size_t EINVAL ;
 int ETM_ADDR_TYPE_NONE ;
 int ETM_MODE_DATA_TRACE_ADDR ;
 int ETM_MODE_DATA_TRACE_VAL ;
 int ETM_MODE_LOAD ;
 int ETM_MODE_STORE ;
 int ETM_MODE_VIEWINST_STARTSTOP ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t size)
{
 int i;
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 if (val)
  config->mode = 0x0;


 config->mode &= ~(ETM_MODE_LOAD | ETM_MODE_STORE);
 config->cfg &= ~(BIT(1) | BIT(2));


 config->mode &= ~(ETM_MODE_DATA_TRACE_ADDR |
      ETM_MODE_DATA_TRACE_VAL);
 config->cfg &= ~(BIT(16) | BIT(17));


 config->eventctrl0 = 0x0;
 config->eventctrl1 = 0x0;


 config->ts_ctrl = 0x0;


 config->stall_ctrl = 0x0;


 if (drvdata->syncpr == 0)
  config->syncfreq = 0x8;






 config->vinst_ctrl |= BIT(0);
 if (drvdata->nr_addr_cmp == 1) {
  config->mode |= ETM_MODE_VIEWINST_STARTSTOP;

  config->vinst_ctrl |= BIT(9);
 }


 config->viiectlr = 0x0;


 config->vissctlr = 0x0;


 for (i = 0; i < drvdata->nrseqstate-1; i++)
  config->seq_ctrl[i] = 0x0;
 config->seq_rst = 0x0;
 config->seq_state = 0x0;


 config->ext_inp = 0x0;

 config->cntr_idx = 0x0;
 for (i = 0; i < drvdata->nr_cntr; i++) {
  config->cntrldvr[i] = 0x0;
  config->cntr_ctrl[i] = 0x0;
  config->cntr_val[i] = 0x0;
 }

 config->res_idx = 0x0;
 for (i = 0; i < drvdata->nr_resource; i++)
  config->res_ctrl[i] = 0x0;

 for (i = 0; i < drvdata->nr_ss_cmp; i++) {
  config->ss_ctrl[i] = 0x0;
  config->ss_pe_cmp[i] = 0x0;
 }

 config->addr_idx = 0x0;
 for (i = 0; i < drvdata->nr_addr_cmp * 2; i++) {
  config->addr_val[i] = 0x0;
  config->addr_acc[i] = 0x0;
  config->addr_type[i] = ETM_ADDR_TYPE_NONE;
 }

 config->ctxid_idx = 0x0;
 for (i = 0; i < drvdata->numcidc; i++)
  config->ctxid_pid[i] = 0x0;

 config->ctxid_mask0 = 0x0;
 config->ctxid_mask1 = 0x0;

 config->vmid_idx = 0x0;
 for (i = 0; i < drvdata->numvmidc; i++)
  config->vmid_val[i] = 0x0;
 config->vmid_mask0 = 0x0;
 config->vmid_mask1 = 0x0;

 drvdata->trcid = drvdata->cpu + 1;

 spin_unlock(&drvdata->spinlock);

 return size;
}
