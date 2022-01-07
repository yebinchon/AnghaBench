
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hfi1_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {int hfi1_id; } ;


 int EIO ;
 int QSFP_TX_CTRL_BYTE_OFFS ;
 int qsfp_write (struct hfi1_pportdata*,int ,int ,int*,int) ;

int set_qsfp_tx(struct hfi1_pportdata *ppd, int on)
{
 u8 tx_ctrl_byte = on ? 0x0 : 0xF;
 int ret = 0;

 ret = qsfp_write(ppd, ppd->dd->hfi1_id, QSFP_TX_CTRL_BYTE_OFFS,
    &tx_ctrl_byte, 1);

 if (ret == 0)
  ret = -EIO;
 else if (ret == 1)
  ret = 0;
 return ret;
}
