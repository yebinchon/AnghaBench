
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int CCE_ERR_INT ;
 int GPIO_ASSERT_INT ;
 int IS_DC_END ;
 int IS_DC_START ;
 int IS_SENDCREDIT_END ;
 int IS_SENDCREDIT_START ;
 int IS_SENDCTXT_ERR_END ;
 int IS_SENDCTXT_ERR_START ;
 int MISC_ERR_INT ;
 int PBC_INT ;
 int PIO_ERR_INT ;
 int TCRIT_INT ;
 int TXE_ERR_INT ;
 int set_intr_bits (struct hfi1_devdata*,int ,int ,int) ;

__attribute__((used)) static void enable_general_intr(struct hfi1_devdata *dd)
{
 set_intr_bits(dd, CCE_ERR_INT, MISC_ERR_INT, 1);
 set_intr_bits(dd, PIO_ERR_INT, TXE_ERR_INT, 1);
 set_intr_bits(dd, IS_SENDCTXT_ERR_START, IS_SENDCTXT_ERR_END, 1);
 set_intr_bits(dd, PBC_INT, GPIO_ASSERT_INT, 1);
 set_intr_bits(dd, TCRIT_INT, TCRIT_INT, 1);
 set_intr_bits(dd, IS_DC_START, IS_DC_END, 1);
 set_intr_bits(dd, IS_SENDCREDIT_START, IS_SENDCREDIT_END, 1);
}
