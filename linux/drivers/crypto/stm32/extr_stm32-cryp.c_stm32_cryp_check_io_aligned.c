
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp {int hw_blocksize; int total_out; int out_sg; int total_in; int in_sg; } ;


 int stm32_cryp_check_aligned (int ,int ,int ) ;

__attribute__((used)) static int stm32_cryp_check_io_aligned(struct stm32_cryp *cryp)
{
 int ret;

 ret = stm32_cryp_check_aligned(cryp->in_sg, cryp->total_in,
           cryp->hw_blocksize);
 if (ret)
  return ret;

 ret = stm32_cryp_check_aligned(cryp->out_sg, cryp->total_out,
           cryp->hw_blocksize);

 return ret;
}
