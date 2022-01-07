
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int DCC_CFG_LED_CNTRL ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static inline void setextled(struct hfi1_devdata *dd, u32 on)
{
 if (on)
  write_csr(dd, DCC_CFG_LED_CNTRL, 0x1F);
 else
  write_csr(dd, DCC_CFG_LED_CNTRL, 0x10);
}
