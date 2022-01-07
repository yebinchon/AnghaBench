; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_win_set_bldmod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_win_set_bldmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimd_context = type { i64 }

@WINCON1_ALPHA_SEL = common dso_local global i32 0, align 4
@WINCON1_BLD_PIX = common dso_local global i32 0, align 4
@WINCON1_ALPHA_MUL = common dso_local global i32 0, align 4
@WINCONx_BLEND_MODE_MASK = common dso_local global i32 0, align 4
@BLENDCON = common dso_local global i32 0, align 4
@BLENDCON_NEW_MASK = common dso_local global i32 0, align 4
@BLENDCON_NEW_8BIT_ALPHA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimd_context*, i32, i32, i32)* @fimd_win_set_bldmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_win_set_bldmod(%struct.fimd_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fimd_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fimd_context* %0, %struct.fimd_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 15
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = lshr i32 %15, 12
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %20 [
    i32 129, label %18
    i32 130, label %19
    i32 128, label %19
  ]

18:                                               ; preds = %4
  br label %30

19:                                               ; preds = %4, %4
  br label %20

20:                                               ; preds = %4, %19
  %21 = load i32, i32* @WINCON1_ALPHA_SEL, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @WINCON1_BLD_PIX, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @WINCON1_ALPHA_MUL, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %20, %18
  %31 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @WINCON(i32 %32)
  %34 = load i32, i32* @WINCONx_BLEND_MODE_MASK, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @fimd_set_bits(%struct.fimd_context* %31, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @VIDISD14C_ALPHA0_R(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @VIDISD14C_ALPHA0_G(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @VIDISD14C_ALPHA0_B(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i32 @VIDISD14C_ALPHA1_R(i32 0)
  %46 = or i32 %44, %45
  %47 = call i32 @VIDISD14C_ALPHA1_G(i32 0)
  %48 = or i32 %46, %47
  %49 = call i32 @VIDISD14C_ALPHA1_B(i32 0)
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %53 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @VIDOSD_C(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel(i32 %51, i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @VIDW_ALPHA_R(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @VIDW_ALPHA_G(i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @VIDW_ALPHA_B(i32 %64)
  %66 = or i32 %63, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %69 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @VIDWnALPHA0(i32 %71)
  %73 = add nsw i64 %70, %72
  %74 = call i32 @writel(i32 %67, i64 %73)
  %75 = call i32 @VIDW_ALPHA_R(i32 0)
  %76 = call i32 @VIDW_ALPHA_G(i32 0)
  %77 = or i32 %75, %76
  %78 = call i32 @VIDW_ALPHA_B(i32 0)
  %79 = or i32 %77, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %82 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @VIDWnALPHA1(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @writel(i32 %80, i64 %86)
  %88 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %89 = load i32, i32* @BLENDCON, align 4
  %90 = load i32, i32* @BLENDCON_NEW_MASK, align 4
  %91 = load i32, i32* @BLENDCON_NEW_8BIT_ALPHA_VALUE, align 4
  %92 = call i32 @fimd_set_bits(%struct.fimd_context* %88, i32 %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @fimd_set_bits(%struct.fimd_context*, i32, i32, i32) #1

declare dso_local i32 @WINCON(i32) #1

declare dso_local i32 @VIDISD14C_ALPHA0_R(i32) #1

declare dso_local i32 @VIDISD14C_ALPHA0_G(i32) #1

declare dso_local i32 @VIDISD14C_ALPHA0_B(i32) #1

declare dso_local i32 @VIDISD14C_ALPHA1_R(i32) #1

declare dso_local i32 @VIDISD14C_ALPHA1_G(i32) #1

declare dso_local i32 @VIDISD14C_ALPHA1_B(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @VIDOSD_C(i32) #1

declare dso_local i32 @VIDW_ALPHA_R(i32) #1

declare dso_local i32 @VIDW_ALPHA_G(i32) #1

declare dso_local i32 @VIDW_ALPHA_B(i32) #1

declare dso_local i64 @VIDWnALPHA0(i32) #1

declare dso_local i64 @VIDWnALPHA1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
