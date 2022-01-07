; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_src_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_src_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fmt[0x%x]\0A\00", align 1
@EXYNOS_MSCTRL = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INFORMAT_RGB = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INFORMAT_YCBCR420 = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INFORMAT_YCBCR422_1PLANE = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INFORMAT_YCBCR422 = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM_R_MODE_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM_R_MODE_64X32 = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM_R_MODE_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, i32, i32)* @fimc_src_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_src_set_fmt(%struct.fimc_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fimc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %9 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DRM_DEV_DEBUG_KMS(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %14 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %15 = call i32 @fimc_read(%struct.fimc_context* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @EXYNOS_MSCTRL_INFORMAT_RGB, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %41 [
    i32 138, label %21
    i32 137, label %21
    i32 134, label %21
    i32 131, label %25
    i32 130, label %29
    i32 128, label %29
    i32 136, label %29
    i32 135, label %29
    i32 141, label %33
    i32 139, label %33
    i32 132, label %33
    i32 133, label %37
    i32 129, label %37
    i32 142, label %37
    i32 140, label %37
  ]

21:                                               ; preds = %3, %3, %3
  %22 = load i32, i32* @EXYNOS_MSCTRL_INFORMAT_RGB, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load i32, i32* @EXYNOS_MSCTRL_INFORMAT_YCBCR420, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %41

29:                                               ; preds = %3, %3, %3, %3
  %30 = load i32, i32* @EXYNOS_MSCTRL_INFORMAT_YCBCR422_1PLANE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %41

33:                                               ; preds = %3, %3, %3
  %34 = load i32, i32* @EXYNOS_MSCTRL_INFORMAT_YCBCR422, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %3, %3, %3, %3
  %38 = load i32, i32* @EXYNOS_MSCTRL_INFORMAT_YCBCR420, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %3, %37, %33, %29, %25, %21
  %42 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %45 = call i32 @fimc_write(%struct.fimc_context* %42, i32 %43, i32 %44)
  %46 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %47 = load i32, i32* @EXYNOS_CIDMAPARAM, align 4
  %48 = call i32 @fimc_read(%struct.fimc_context* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @EXYNOS_CIDMAPARAM_R_MODE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load i32, i32* @EXYNOS_CIDMAPARAM_R_MODE_64X32, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %41
  %60 = load i32, i32* @EXYNOS_CIDMAPARAM_R_MODE_LINEAR, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @EXYNOS_CIDMAPARAM, align 4
  %67 = call i32 @fimc_write(%struct.fimc_context* %64, i32 %65, i32 %66)
  %68 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @fimc_src_set_fmt_order(%struct.fimc_context* %68, i32 %69)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_src_set_fmt_order(%struct.fimc_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
