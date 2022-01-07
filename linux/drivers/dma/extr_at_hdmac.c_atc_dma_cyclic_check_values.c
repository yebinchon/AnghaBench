
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 unsigned int ATC_BTSIZE_MAX ;
 int EINVAL ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
atc_dma_cyclic_check_values(unsigned int reg_width, dma_addr_t buf_addr,
  size_t period_len)
{
 if (period_len > (ATC_BTSIZE_MAX << reg_width))
  goto err_out;
 if (unlikely(period_len & ((1 << reg_width) - 1)))
  goto err_out;
 if (unlikely(buf_addr & ((1 << reg_width) - 1)))
  goto err_out;

 return 0;

err_out:
 return -EINVAL;
}
