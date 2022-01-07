
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int dummy; } ;


 int EXYNOS_CIFCNTSEQ ;
 int EXYNOS_CIGCTRL ;
 int EXYNOS_CIGCTRL_SWRST ;
 int EXYNOS_CIIMGCPT ;
 int EXYNOS_CIIMGCPT_IMGCPTEN ;
 int EXYNOS_CIIMGCPT_IMGCPTEN_SC ;
 int EXYNOS_CISRCFMT ;
 int EXYNOS_CISRCFMT_ITU601_8BIT ;
 int EXYNOS_CISTATUS ;
 scalar_t__ EXYNOS_CISTATUS_GET_ENVID_STATUS (int ) ;
 int EXYNOS_MSCTRL ;
 int EXYNOS_MSCTRL_ENVID ;
 int fimc_clear_bits (struct fimc_context*,int ,int) ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_set_bits (struct fimc_context*,int ,int) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_sw_reset(struct fimc_context *ctx)
{
 u32 cfg;


 cfg = fimc_read(ctx, EXYNOS_CISTATUS);
 if (EXYNOS_CISTATUS_GET_ENVID_STATUS(cfg))
  fimc_clear_bits(ctx, EXYNOS_MSCTRL, EXYNOS_MSCTRL_ENVID);

 fimc_set_bits(ctx, EXYNOS_CISRCFMT, EXYNOS_CISRCFMT_ITU601_8BIT);


 fimc_clear_bits(ctx, EXYNOS_CIIMGCPT,
  EXYNOS_CIIMGCPT_IMGCPTEN_SC | EXYNOS_CIIMGCPT_IMGCPTEN);


 fimc_set_bits(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_SWRST);


 fimc_clear_bits(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_SWRST);


 fimc_write(ctx, 0x0, EXYNOS_CIFCNTSEQ);
}
