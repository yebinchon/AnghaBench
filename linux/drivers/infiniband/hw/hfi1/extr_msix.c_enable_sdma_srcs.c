
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 scalar_t__ IS_SDMAENG_ERR_START ;
 scalar_t__ IS_SDMA_IDLE_START ;
 scalar_t__ IS_SDMA_PROGRESS_START ;
 scalar_t__ IS_SDMA_START ;
 int set_intr_bits (struct hfi1_devdata*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void enable_sdma_srcs(struct hfi1_devdata *dd, int i)
{
 set_intr_bits(dd, IS_SDMA_START + i, IS_SDMA_START + i, 1);
 set_intr_bits(dd, IS_SDMA_PROGRESS_START + i,
        IS_SDMA_PROGRESS_START + i, 1);
 set_intr_bits(dd, IS_SDMA_IDLE_START + i, IS_SDMA_IDLE_START + i, 1);
 set_intr_bits(dd, IS_SDMAENG_ERR_START + i, IS_SDMAENG_ERR_START + i,
        1);
}
