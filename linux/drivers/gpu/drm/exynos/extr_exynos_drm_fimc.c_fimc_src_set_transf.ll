; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_src_set_transf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_src_set_transf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rotation[%x]\0A\00", align 1
@EXYNOS_MSCTRL = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_FLIP_X_MIRROR = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_FLIP_Y_MIRROR = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_INROT90_CLOCKWISE = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, i32)* @fimc_src_set_transf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_src_set_transf(%struct.fimc_context* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @DRM_DEV_DEBUG_KMS(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %17 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %18 = call i32 @fimc_read(%struct.fimc_context* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %20 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %26 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %27 = call i32 @fimc_read(%struct.fimc_context* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @EXYNOS_CITRGFMT_INROT90_CLOCKWISE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %129 [
    i32 131, label %33
    i32 128, label %52
    i32 130, label %74
    i32 129, label %100
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %42
  br label %129

52:                                               ; preds = %2
  %53 = load i32, i32* @EXYNOS_CITRGFMT_INROT90_CLOCKWISE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %64
  br label %129

74:                                               ; preds = %2
  %75 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %76 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %74
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %89
  br label %129

100:                                              ; preds = %2
  %101 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %102 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @EXYNOS_CITRGFMT_INROT90_CLOCKWISE, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load i32, i32* @EXYNOS_MSCTRL_FLIP_X_MIRROR, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %113, %100
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @EXYNOS_MSCTRL_FLIP_Y_MIRROR, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %123, %118
  br label %129

129:                                              ; preds = %2, %128, %99, %73, %51
  %130 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %133 = call i32 @fimc_write(%struct.fimc_context* %130, i32 %131, i32 %132)
  %134 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %137 = call i32 @fimc_write(%struct.fimc_context* %134, i32 %135, i32 %136)
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
