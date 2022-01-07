
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isar_hw {int* buf; scalar_t__ iis; int clsb; int hw; int (* write_reg ) (int ,int ,int ) ;} ;


 int ISAR_HIS_VNR ;
 scalar_t__ ISAR_IIS_VNR ;
 int ISAR_IRQBIT ;
 int ISAR_MSG_HWVER ;
 int poll_mbox (struct isar_hw*,int) ;
 int send_mbox (struct isar_hw*,int ,int ,int,int *) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int
ISARVersion(struct isar_hw *isar)
{
 int ver;


 isar->write_reg(isar->hw, ISAR_IRQBIT, 0);
 isar->buf[0] = ISAR_MSG_HWVER;
 isar->buf[1] = 0;
 isar->buf[2] = 1;
 if (!send_mbox(isar, ISAR_HIS_VNR, 0, 3, ((void*)0)))
  return -1;
 if (!poll_mbox(isar, 1000))
  return -2;
 if (isar->iis == ISAR_IIS_VNR) {
  if (isar->clsb == 1) {
   ver = isar->buf[0] & 0xf;
   return ver;
  }
  return -3;
 }
 return -4;
}
