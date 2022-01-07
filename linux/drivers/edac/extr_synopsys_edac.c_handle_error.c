
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synps_edac_priv {int message; TYPE_1__* p_data; } ;
struct ecc_error_info {int row; int bank; int col; int bitpos; int data; int bankgrpnr; int blknr; } ;
struct synps_ecc_status {scalar_t__ ue_cnt; struct ecc_error_info ueinfo; scalar_t__ ce_cnt; struct ecc_error_info ceinfo; } ;
struct mem_ctl_info {struct synps_edac_priv* pvt_info; } ;
struct TYPE_2__ {int quirks; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int SYNPS_EDAC_MSG_SIZE ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,scalar_t__,int ,int ,int ,int ,int ,int,int ,char*) ;
 int memset (struct synps_ecc_status*,int ,int) ;
 int snprintf (int ,int ,char*,...) ;

__attribute__((used)) static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)
{
 struct synps_edac_priv *priv = mci->pvt_info;
 struct ecc_error_info *pinf;

 if (p->ce_cnt) {
  pinf = &p->ceinfo;
  if (!priv->p_data->quirks) {
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "DDR ECC error type:%s Row %d Bank %d Col %d ",
      "CE", pinf->row, pinf->bank, pinf->col);
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "Bit Position: %d Data: 0x%08x\n",
     pinf->bitpos, pinf->data);
  } else {
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "DDR ECC error type:%s Row %d Bank %d Col %d ",
      "CE", pinf->row, pinf->bank, pinf->col);
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "BankGroup Number %d Block Number %d ",
     pinf->bankgrpnr, pinf->blknr);
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "Bit Position: %d Data: 0x%08x\n",
     pinf->bitpos, pinf->data);
  }

  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci,
         p->ce_cnt, 0, 0, 0, 0, 0, -1,
         priv->message, "");
 }

 if (p->ue_cnt) {
  pinf = &p->ueinfo;
  if (!priv->p_data->quirks) {
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "DDR ECC error type :%s Row %d Bank %d Col %d ",
    "UE", pinf->row, pinf->bank, pinf->col);
  } else {
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "DDR ECC error type :%s Row %d Bank %d Col %d ",
     "UE", pinf->row, pinf->bank, pinf->col);
   snprintf(priv->message, SYNPS_EDAC_MSG_SIZE,
     "BankGroup Number %d Block Number %d",
     pinf->bankgrpnr, pinf->blknr);
  }

  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci,
         p->ue_cnt, 0, 0, 0, 0, 0, -1,
         priv->message, "");
 }

 memset(p, 0, sizeof(*p));
}
