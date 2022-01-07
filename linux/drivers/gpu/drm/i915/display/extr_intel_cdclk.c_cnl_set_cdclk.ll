; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnl_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.intel_cdclk_state = type { i32, i32, i32 }

@SKL_PCODE_CDCLK_CONTROL = common dso_local global i32 0, align 4
@SKL_CDCLK_PREPARE_FOR_CHANGE = common dso_local global i32 0, align 4
@SKL_CDCLK_READY_FOR_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to inform PCU about cdclk change (%d)\0A\00", align 1
@BXT_CDCLK_CD2X_DIV_SEL_1 = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_2 = common dso_local global i32 0, align 4
@INVALID_PIPE = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_PIPE_NONE = common dso_local global i32 0, align 4
@CDCLK_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @cnl_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_cdclk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = load i32, i32* @SKL_PCODE_CDCLK_CONTROL, align 4
  %20 = load i32, i32* @SKL_CDCLK_PREPARE_FOR_CHANGE, align 4
  %21 = load i32, i32* @SKL_CDCLK_READY_FOR_CHANGE, align 4
  %22 = load i32, i32* @SKL_CDCLK_READY_FOR_CHANGE, align 4
  %23 = call i32 @skl_pcode_request(%struct.drm_i915_private* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 3)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %125

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %30, i32 %31)
  switch i32 %32, label %33 [
    i32 2, label %47
    i32 4, label %49
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %34, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  br label %47

47:                                               ; preds = %29, %33
  %48 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_1, align 4
  store i32 %48, i32* %10, align 4
  br label %51

49:                                               ; preds = %29
  %50 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_2, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %68 = call i32 @cnl_cdclk_pll_disable(%struct.drm_i915_private* %67)
  br label %69

69:                                               ; preds = %66, %58, %51
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cnl_cdclk_pll_enable(%struct.drm_i915_private* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %69
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @skl_cdclk_decimal(i32 %83)
  %85 = or i32 %82, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @INVALID_PIPE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @BXT_CDCLK_CD2X_PIPE_NONE, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %98

93:                                               ; preds = %81
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @BXT_CDCLK_CD2X_PIPE(i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* @CDCLK_CTL, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @I915_WRITE(i32 %99, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @INVALID_PIPE, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %98
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %111 = load i32, i32* @SKL_PCODE_CDCLK_CONTROL, align 4
  %112 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %113 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %110, i32 %111, i32 %114)
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %117 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %116)
  %118 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %119 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %122 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %109, %26
  ret void
}

declare dso_local i32 @skl_pcode_request(%struct.drm_i915_private*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cnl_cdclk_pll_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_cdclk_pll_enable(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @skl_cdclk_decimal(i32) #1

declare dso_local i32 @BXT_CDCLK_CD2X_PIPE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
