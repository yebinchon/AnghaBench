
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SDMA_DESCQ_CNT ;
 int is_power_of_2 (int) ;
 int sdma_descq_cnt ;

u16 sdma_get_descq_cnt(void)
{
 u16 count = sdma_descq_cnt;

 if (!count)
  return SDMA_DESCQ_CNT;



 if (!is_power_of_2(count))
  return SDMA_DESCQ_CNT;
 if (count < 64 || count > 32768)
  return SDMA_DESCQ_CNT;
 return count;
}
