; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_win_set_bldmod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_win_set_bldmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i32 }

@WINCONx_ALPHA_SEL_F = common dso_local global i32 0, align 4
@WINCONx_BLD_PIX_F = common dso_local global i32 0, align 4
@WINCONx_ALPHA_MUL_F = common dso_local global i32 0, align 4
@WINCONx_BLEND_MODE_MASK = common dso_local global i32 0, align 4
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@VIDOSDxC_ALPHA0_RGB_MASK = common dso_local global i32 0, align 4
@DECON_BLENDCON = common dso_local global i32 0, align 4
@BLEND_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*, i32, i32, i32)* @decon_win_set_bldmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_win_set_bldmod(%struct.decon_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.decon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.decon_context* %0, %struct.decon_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = lshr i32 %11, 8
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %15
  ]

14:                                               ; preds = %4
  br label %26

15:                                               ; preds = %4, %4
  br label %16

16:                                               ; preds = %4, %15
  %17 = load i32, i32* @WINCONx_ALPHA_SEL_F, align 4
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @WINCONx_BLD_PIX_F, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @WINCONx_ALPHA_MUL_F, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %16, %14
  %27 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DECON_WINCONx(i32 %28)
  %30 = load i32, i32* @WINCONx_BLEND_MODE_MASK, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @decon_set_bits(%struct.decon_context* %27, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @VIDOSD_Wx_ALPHA_R_F(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @VIDOSD_Wx_ALPHA_G_F(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @VIDOSD_Wx_ALPHA_B_F(i32 %42)
  %44 = or i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DECON_VIDOSDxC(i32 %46)
  %48 = load i32, i32* @VIDOSDxC_ALPHA0_RGB_MASK, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @decon_set_bits(%struct.decon_context* %45, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %52 = load i32, i32* @DECON_BLENDCON, align 4
  %53 = load i32, i32* @BLEND_NEW, align 4
  %54 = load i32, i32* @BLEND_NEW, align 4
  %55 = call i32 @decon_set_bits(%struct.decon_context* %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %36, %26
  ret void
}

declare dso_local i32 @decon_set_bits(%struct.decon_context*, i32, i32, i32) #1

declare dso_local i32 @DECON_WINCONx(i32) #1

declare dso_local i32 @VIDOSD_Wx_ALPHA_R_F(i32) #1

declare dso_local i32 @VIDOSD_Wx_ALPHA_G_F(i32) #1

declare dso_local i32 @VIDOSD_Wx_ALPHA_B_F(i32) #1

declare dso_local i32 @DECON_VIDOSDxC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
