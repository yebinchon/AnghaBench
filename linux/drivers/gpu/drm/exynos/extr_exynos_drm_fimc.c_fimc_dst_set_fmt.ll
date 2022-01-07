; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fmt[0x%x]\0A\00", align 1
@EXYNOS_CIEXTEN = common dso_local global i32 0, align 4
@DRM_FORMAT_AYUV = common dso_local global i32 0, align 4
@EXYNOS_CIEXTEN_YUV444_OUT = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTFORMAT_MASK = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTFORMAT_RGB = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422_1PLANE = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422 = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTFORMAT_YCBCR420 = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM_W_MODE_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM_W_MODE_64X32 = common dso_local global i32 0, align 4
@EXYNOS_CIDMAPARAM_W_MODE_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, i32, i32)* @fimc_dst_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_dst_set_fmt(%struct.fimc_context* %0, i32 %1, i32 %2) #0 {
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
  %14 = load i32, i32* @EXYNOS_CIEXTEN, align 4
  %15 = call i32 @fimc_read(%struct.fimc_context* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DRM_FORMAT_AYUV, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @EXYNOS_CIEXTEN_YUV444_OUT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @EXYNOS_CIEXTEN, align 4
  %26 = call i32 @fimc_write(%struct.fimc_context* %23, i32 %24, i32 %25)
  br label %65

27:                                               ; preds = %3
  %28 = load i32, i32* @EXYNOS_CIEXTEN_YUV444_OUT, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EXYNOS_CIEXTEN, align 4
  %35 = call i32 @fimc_write(%struct.fimc_context* %32, i32 %33, i32 %34)
  %36 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %37 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %38 = call i32 @fimc_read(%struct.fimc_context* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @EXYNOS_CITRGFMT_OUTFORMAT_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %60 [
    i32 137, label %44
    i32 136, label %44
    i32 133, label %44
    i32 130, label %48
    i32 128, label %48
    i32 135, label %48
    i32 134, label %48
    i32 140, label %52
    i32 138, label %52
    i32 131, label %52
    i32 132, label %56
    i32 129, label %56
    i32 141, label %56
    i32 139, label %56
  ]

44:                                               ; preds = %27, %27, %27
  %45 = load i32, i32* @EXYNOS_CITRGFMT_OUTFORMAT_RGB, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %60

48:                                               ; preds = %27, %27, %27, %27
  %49 = load i32, i32* @EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422_1PLANE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %60

52:                                               ; preds = %27, %27, %27
  %53 = load i32, i32* @EXYNOS_CITRGFMT_OUTFORMAT_YCBCR422, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %60

56:                                               ; preds = %27, %27, %27, %27
  %57 = load i32, i32* @EXYNOS_CITRGFMT_OUTFORMAT_YCBCR420, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %27, %56, %52, %48, %44
  %61 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %64 = call i32 @fimc_write(%struct.fimc_context* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %19
  %66 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %67 = load i32, i32* @EXYNOS_CIDMAPARAM, align 4
  %68 = call i32 @fimc_read(%struct.fimc_context* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @EXYNOS_CIDMAPARAM_W_MODE_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @EXYNOS_CIDMAPARAM_W_MODE_64X32, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %83

79:                                               ; preds = %65
  %80 = load i32, i32* @EXYNOS_CIDMAPARAM_W_MODE_LINEAR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @EXYNOS_CIDMAPARAM, align 4
  %87 = call i32 @fimc_write(%struct.fimc_context* %84, i32 %85, i32 %86)
  %88 = load %struct.fimc_context*, %struct.fimc_context** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @fimc_dst_set_fmt_order(%struct.fimc_context* %88, i32 %89)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_dst_set_fmt_order(%struct.fimc_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
