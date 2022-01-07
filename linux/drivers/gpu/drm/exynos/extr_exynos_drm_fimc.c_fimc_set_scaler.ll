; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }
%struct.fimc_scaler = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"range[%d]bypass[%d]up_h[%d]up_v[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hratio[%d]vratio[%d]\0A\00", align 1
@EXYNOS_CISCCTRL = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_SCALERBYPASS = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_SCALEUP_H = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_SCALEUP_V = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_MAIN_V_RATIO_MASK = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_MAIN_H_RATIO_MASK = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_CSCR2Y_WIDE = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_CSCY2R_WIDE = common dso_local global i32 0, align 4
@EXYNOS_CIEXTEN = common dso_local global i32 0, align 4
@EXYNOS_CIEXTEN_MAINHORRATIO_EXT_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIEXTEN_MAINVERRATIO_EXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, %struct.fimc_scaler*)* @fimc_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_set_scaler(%struct.fimc_context* %0, %struct.fimc_scaler* %1) #0 {
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca %struct.fimc_scaler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  store %struct.fimc_scaler* %1, %struct.fimc_scaler** %4, align 8
  %7 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %11 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %15 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %19 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %22 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, i32, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i64 %20, i64 %23)
  %25 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %29 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %32 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %36 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %37 = call i32 @fimc_read(%struct.fimc_context* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @EXYNOS_CISCCTRL_SCALERBYPASS, align 4
  %39 = load i32, i32* @EXYNOS_CISCCTRL_SCALEUP_H, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EXYNOS_CISCCTRL_SCALEUP_V, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @EXYNOS_CISCCTRL_MAIN_V_RATIO_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EXYNOS_CISCCTRL_MAIN_H_RATIO_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @EXYNOS_CISCCTRL_CSCR2Y_WIDE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @EXYNOS_CISCCTRL_CSCY2R_WIDE, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %55 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %2
  %59 = load i32, i32* @EXYNOS_CISCCTRL_CSCR2Y_WIDE, align 4
  %60 = load i32, i32* @EXYNOS_CISCCTRL_CSCY2R_WIDE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %2
  %65 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %66 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @EXYNOS_CISCCTRL_SCALERBYPASS, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %75 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @EXYNOS_CISCCTRL_SCALEUP_H, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %84 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @EXYNOS_CISCCTRL_SCALEUP_V, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %93 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 6
  %96 = call i32 @EXYNOS_CISCCTRL_MAINHORRATIO(i32 %95)
  %97 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %98 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 6
  %101 = call i32 @EXYNOS_CISCCTRL_MAINVERRATIO(i32 %100)
  %102 = or i32 %96, %101
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %108 = call i32 @fimc_write(%struct.fimc_context* %105, i32 %106, i32 %107)
  %109 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %110 = load i32, i32* @EXYNOS_CIEXTEN, align 4
  %111 = call i32 @fimc_read(%struct.fimc_context* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @EXYNOS_CIEXTEN_MAINHORRATIO_EXT_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @EXYNOS_CIEXTEN_MAINVERRATIO_EXT_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %121 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @EXYNOS_CIEXTEN_MAINHORRATIO_EXT(i32 %122)
  %124 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %125 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @EXYNOS_CIEXTEN_MAINVERRATIO_EXT(i32 %126)
  %128 = or i32 %123, %127
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @EXYNOS_CIEXTEN, align 4
  %134 = call i32 @fimc_write(%struct.fimc_context* %131, i32 %132, i32 %133)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @EXYNOS_CISCCTRL_MAINHORRATIO(i32) #1

declare dso_local i32 @EXYNOS_CISCCTRL_MAINVERRATIO(i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @EXYNOS_CIEXTEN_MAINHORRATIO_EXT(i32) #1

declare dso_local i32 @EXYNOS_CIEXTEN_MAINVERRATIO_EXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
