; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_gfx_blend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_gfx_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32 }

@MXR_GRP_CFG_COLOR_KEY_DISABLE = common dso_local global i32 0, align 4
@MXR_GRP_CFG_PIXEL_BLEND_EN = common dso_local global i32 0, align 4
@MXR_GRP_CFG_BLEND_PRE_MUL = common dso_local global i32 0, align 4
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@MXR_GRP_CFG_WIN_BLEND_EN = common dso_local global i32 0, align 4
@MXR_GRP_CFG_MISC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*, i32, i32, i32)* @mixer_cfg_gfx_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_cfg_gfx_blend(%struct.mixer_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mixer_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, 8
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @MXR_GRP_CFG_COLOR_KEY_DISABLE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 130, label %16
    i32 128, label %20
  ]

15:                                               ; preds = %4
  br label %28

16:                                               ; preds = %4
  %17 = load i32, i32* @MXR_GRP_CFG_PIXEL_BLEND_EN, align 4
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %10, align 4
  br label %28

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %4, %20
  %22 = load i32, i32* @MXR_GRP_CFG_BLEND_PRE_MUL, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @MXR_GRP_CFG_PIXEL_BLEND_EN, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %21, %16, %15
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @MXR_GRP_CFG_WIN_BLEND_EN, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @MXR_GRAPHIC_CFG(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MXR_GRP_CFG_MISC_MASK, align 4
  %45 = call i32 @mixer_reg_writemask(%struct.mixer_context* %40, i32 %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @MXR_GRAPHIC_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
