
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_context {int sc; } ;


 int EXYNOS_CIGCTRL ;
 int EXYNOS_CIGCTRL_IRQ_END_DISABLE ;
 int EXYNOS_CIIMGCPT ;
 int EXYNOS_CIIMGCPT_IMGCPTEN ;
 int EXYNOS_CIIMGCPT_IMGCPTEN_SC ;
 int EXYNOS_CIOCTRL ;
 int EXYNOS_CIOCTRL_WEAVE_MASK ;
 int EXYNOS_CISCCTRL ;
 int EXYNOS_CISCCTRL_PROGRESSIVE ;
 int EXYNOS_CISCCTRL_SCALERSTART ;
 int EXYNOS_CISCCTRL_SCAN_MASK ;
 int EXYNOS_CISTATUS ;
 int EXYNOS_MSCTRL ;
 int EXYNOS_MSCTRL_ENVID ;
 int EXYNOS_MSCTRL_INPUT_MASK ;
 int EXYNOS_MSCTRL_INPUT_MEMORY ;
 int fimc_clear_bits (struct fimc_context*,int ,int ) ;
 int fimc_handle_jpeg (struct fimc_context*,int) ;
 int fimc_handle_lastend (struct fimc_context*,int) ;
 int fimc_mask_irq (struct fimc_context*,int) ;
 int fimc_read (struct fimc_context*,int ) ;
 int fimc_set_bits (struct fimc_context*,int ,int ) ;
 int fimc_set_scaler (struct fimc_context*,int *) ;
 int fimc_set_type_ctrl (struct fimc_context*) ;
 int fimc_write (struct fimc_context*,int,int ) ;

__attribute__((used)) static void fimc_start(struct fimc_context *ctx)
{
 u32 cfg0, cfg1;

 fimc_mask_irq(ctx, 1);


 fimc_handle_jpeg(ctx, 0);
 fimc_set_scaler(ctx, &ctx->sc);

 fimc_set_type_ctrl(ctx);
 fimc_handle_lastend(ctx, 0);


 cfg0 = fimc_read(ctx, EXYNOS_MSCTRL);
 cfg0 &= ~EXYNOS_MSCTRL_INPUT_MASK;
 cfg0 |= EXYNOS_MSCTRL_INPUT_MEMORY;
 fimc_write(ctx, cfg0, EXYNOS_MSCTRL);


 fimc_write(ctx, 0x0, EXYNOS_CISTATUS);

 cfg0 = fimc_read(ctx, EXYNOS_CIIMGCPT);
 cfg0 &= ~EXYNOS_CIIMGCPT_IMGCPTEN_SC;
 cfg0 |= EXYNOS_CIIMGCPT_IMGCPTEN_SC;


 cfg1 = fimc_read(ctx, EXYNOS_CISCCTRL);
 cfg1 &= ~EXYNOS_CISCCTRL_SCAN_MASK;
 cfg1 |= (EXYNOS_CISCCTRL_PROGRESSIVE |
  EXYNOS_CISCCTRL_SCALERSTART);

 fimc_write(ctx, cfg1, EXYNOS_CISCCTRL);


 cfg0 |= EXYNOS_CIIMGCPT_IMGCPTEN;
 fimc_write(ctx, cfg0, EXYNOS_CIIMGCPT);


 fimc_clear_bits(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_IRQ_END_DISABLE);

 fimc_clear_bits(ctx, EXYNOS_CIOCTRL, EXYNOS_CIOCTRL_WEAVE_MASK);

 fimc_set_bits(ctx, EXYNOS_MSCTRL, EXYNOS_MSCTRL_ENVID);
}
