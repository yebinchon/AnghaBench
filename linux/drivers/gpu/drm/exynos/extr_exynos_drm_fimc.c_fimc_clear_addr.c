
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int dummy; } ;


 int EXYNOS_CIICBSA (int) ;
 int EXYNOS_CIICRSA (int) ;
 int EXYNOS_CIIYSA (int) ;
 int EXYNOS_CIOCBSA (int) ;
 int EXYNOS_CIOCRSA (int) ;
 int EXYNOS_CIOYSA (int) ;
 int FIMC_MAX_DST ;
 int FIMC_MAX_SRC ;
 int fimc_write (struct fimc_context*,int ,int ) ;

__attribute__((used)) static void fimc_clear_addr(struct fimc_context *ctx)
{
 int i;

 for (i = 0; i < FIMC_MAX_SRC; i++) {
  fimc_write(ctx, 0, EXYNOS_CIIYSA(i));
  fimc_write(ctx, 0, EXYNOS_CIICBSA(i));
  fimc_write(ctx, 0, EXYNOS_CIICRSA(i));
 }

 for (i = 0; i < FIMC_MAX_DST; i++) {
  fimc_write(ctx, 0, EXYNOS_CIOYSA(i));
  fimc_write(ctx, 0, EXYNOS_CIOCBSA(i));
  fimc_write(ctx, 0, EXYNOS_CIOCRSA(i));
 }
}
