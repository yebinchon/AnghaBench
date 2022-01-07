; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_transf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_dst_set_transf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rotation[0x%x]\0A\00", align 1
@EXYNOS_CITRGFMT = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_FLIP_MASK = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_FLIP_X_MIRROR = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@EXYNOS_CITRGFMT_FLIP_Y_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*, i32)* @fimc_dst_set_transf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_dst_set_transf(%struct.fimc_context* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DRM_DEV_DEBUG_KMS(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %16 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %17 = call i32 @fimc_read(%struct.fimc_context* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %122 [
    i32 131, label %27
    i32 128, label %46
    i32 130, label %68
    i32 129, label %94
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_X_MIRROR, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_Y_MIRROR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %122

46:                                               ; preds = %2
  %47 = load i32, i32* @EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_X_MIRROR, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_Y_MIRROR, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %122

68:                                               ; preds = %2
  %69 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_X_MIRROR, align 4
  %70 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_Y_MIRROR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_X_MIRROR, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %68
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_Y_MIRROR, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %83
  br label %122

94:                                               ; preds = %2
  %95 = load i32, i32* @EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE, align 4
  %96 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_X_MIRROR, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_Y_MIRROR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_X_MIRROR, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %106, %94
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* @EXYNOS_CITRGFMT_FLIP_Y_MIRROR, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %2, %121, %93, %67, %45
  %123 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @EXYNOS_CITRGFMT, align 4
  %126 = call i32 @fimc_write(%struct.fimc_context* %123, i32 %124, i32 %125)
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
