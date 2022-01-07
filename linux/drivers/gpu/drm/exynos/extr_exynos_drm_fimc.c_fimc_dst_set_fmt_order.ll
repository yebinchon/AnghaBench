; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_fmt_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_fmt_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fmt[0x%x]\0A\00", align 1
@EXYNOS_CISCCTRL = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_OUTRGB_FMT_RGB_MASK = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_OUTRGB_FMT_RGB565 = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_OUTRGB_FMT_RGB888 = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_EXTRGB_EXTENSION = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER2P_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER422_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_YCBCR_PLANE_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ALPHA_OUT = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER422_YCBYCR = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER422_YCRYCB = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER422_CBYCRY = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER422_CRYCBY = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER2P_LSB_CRCB = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_YCBCR_2PLANE = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_YCBCR_3PLANE = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_ORDER2P_LSB_CBCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, i32)* @fimc_dst_set_fmt_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_dst_set_fmt_order(%struct.fimc_context* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @DRM_DEV_DEBUG_KMS(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %12 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %13 = call i32 @fimc_read(%struct.fimc_context* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @EXYNOS_CISCCTRL_OUTRGB_FMT_RGB_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %45 [
    i32 137, label %19
    i32 136, label %27
    i32 133, label %35
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @EXYNOS_CISCCTRL_OUTRGB_FMT_RGB565, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %26 = call i32 @fimc_write(%struct.fimc_context* %23, i32 %24, i32 %25)
  br label %102

27:                                               ; preds = %2
  %28 = load i32, i32* @EXYNOS_CISCCTRL_OUTRGB_FMT_RGB888, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %34 = call i32 @fimc_write(%struct.fimc_context* %31, i32 %32, i32 %33)
  br label %102

35:                                               ; preds = %2
  %36 = load i32, i32* @EXYNOS_CISCCTRL_OUTRGB_FMT_RGB888, align 4
  %37 = load i32, i32* @EXYNOS_CISCCTRL_EXTRGB_EXTENSION, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %44 = call i32 @fimc_write(%struct.fimc_context* %41, i32 %42, i32 %43)
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %48 = load i32, i32* @EXYNOS_CIOCTRL, align 4
  %49 = call i32 @fimc_read(%struct.fimc_context* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @EXYNOS_CIOCTRL_ORDER2P_MASK, align 4
  %51 = load i32, i32* @EXYNOS_CIOCTRL_ORDER422_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EXYNOS_CIOCTRL_YCBCR_PLANE_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  switch i32 %58, label %97 [
    i32 133, label %59
    i32 130, label %63
    i32 128, label %67
    i32 135, label %71
    i32 134, label %75
    i32 139, label %79
    i32 138, label %79
    i32 131, label %86
    i32 132, label %86
    i32 129, label %86
    i32 141, label %90
    i32 140, label %90
  ]

59:                                               ; preds = %46
  %60 = load i32, i32* @EXYNOS_CIOCTRL_ALPHA_OUT, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %97

63:                                               ; preds = %46
  %64 = load i32, i32* @EXYNOS_CIOCTRL_ORDER422_YCBYCR, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %97

67:                                               ; preds = %46
  %68 = load i32, i32* @EXYNOS_CIOCTRL_ORDER422_YCRYCB, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %97

71:                                               ; preds = %46
  %72 = load i32, i32* @EXYNOS_CIOCTRL_ORDER422_CBYCRY, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %97

75:                                               ; preds = %46
  %76 = load i32, i32* @EXYNOS_CIOCTRL_ORDER422_CRYCBY, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %97

79:                                               ; preds = %46, %46
  %80 = load i32, i32* @EXYNOS_CIOCTRL_ORDER2P_LSB_CRCB, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @EXYNOS_CIOCTRL_YCBCR_2PLANE, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %97

86:                                               ; preds = %46, %46, %46
  %87 = load i32, i32* @EXYNOS_CIOCTRL_YCBCR_3PLANE, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %97

90:                                               ; preds = %46, %46
  %91 = load i32, i32* @EXYNOS_CIOCTRL_ORDER2P_LSB_CBCR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @EXYNOS_CIOCTRL_YCBCR_2PLANE, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %46, %90, %86, %79, %75, %71, %67, %63, %59
  %98 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @EXYNOS_CIOCTRL, align 4
  %101 = call i32 @fimc_write(%struct.fimc_context* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %27, %19
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
