
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct videomode {int vactive; int hactive; } ;
struct exynos_mic {scalar_t__ reg; struct videomode vm; } ;


 scalar_t__ MIC_IMG_H_SIZE (int ) ;
 scalar_t__ MIC_IMG_SIZE ;
 scalar_t__ MIC_IMG_V_SIZE (int ) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mic_set_img_size(struct exynos_mic *mic)
{
 struct videomode *vm = &mic->vm;
 u32 reg;

 reg = MIC_IMG_H_SIZE(vm->hactive) +
  MIC_IMG_V_SIZE(vm->vactive);

 writel(reg, mic->reg + MIC_IMG_SIZE);
}
