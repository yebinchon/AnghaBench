; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bxt_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.intel_cdclk_state = type { i32, i32, i32 }

@BXT_CDCLK_CD2X_DIV_SEL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unsupported divider\0A\00", align 1
@BXT_CDCLK_CD2X_DIV_SEL_1_5 = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_2 = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_4 = common dso_local global i32 0, align 4
@HSW_PCODE_DE_WRITE_FREQ_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"PCode CDCLK freq change notify failed (err %d, freq %d)\0A\00", align 1
@INVALID_PIPE = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_PIPE_NONE = common dso_local global i32 0, align 4
@BXT_CDCLK_SSA_PRECHARGE_ENABLE = common dso_local global i32 0, align 4
@CDCLK_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"PCode CDCLK freq set failed, (err %d, freq %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @bxt_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
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
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DIV_ROUND_CLOSEST(i32 %18, i32 %19)
  switch i32 %20, label %21 [
    i32 2, label %35
    i32 3, label %37
    i32 4, label %42
    i32 8, label %44
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %22, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  br label %35

35:                                               ; preds = %3, %21
  %36 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_1, align 4
  store i32 %36, i32* %10, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %38)
  %40 = call i32 @WARN(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_1_5, align 4
  store i32 %41, i32* %10, align 4
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_2, align 4
  store i32 %43, i32* %10, align 4
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_4, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %42, %37, %35
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = load i32, i32* @HSW_PCODE_DE_WRITE_FREQ_REQ, align 4
  %49 = call i32 @sandybridge_pcode_write_timeout(%struct.drm_i915_private* %47, i32 %48, i32 -2147483648, i32 150, i32 2)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %137

56:                                               ; preds = %46
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = call i32 @bxt_de_pll_disable(%struct.drm_i915_private* %72)
  br label %74

74:                                               ; preds = %71, %63, %56
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @bxt_de_pll_enable(%struct.drm_i915_private* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @skl_cdclk_decimal(i32 %88)
  %90 = or i32 %87, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @INVALID_PIPE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @BXT_CDCLK_CD2X_PIPE_NONE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %103

98:                                               ; preds = %86
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @BXT_CDCLK_CD2X_PIPE(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i32, i32* %7, align 4
  %105 = icmp sge i32 %104, 500000
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @BXT_CDCLK_SSA_PRECHARGE_ENABLE, align 4
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @CDCLK_CTL, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @I915_WRITE(i32 %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @INVALID_PIPE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %123 = load i32, i32* @HSW_PCODE_DE_WRITE_FREQ_REQ, align 4
  %124 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %125 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sandybridge_pcode_write_timeout(%struct.drm_i915_private* %122, i32 %123, i32 %126, i32 150, i32 2)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132)
  br label %137

134:                                              ; preds = %121
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %136 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %135)
  br label %137

137:                                              ; preds = %134, %130, %52
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @sandybridge_pcode_write_timeout(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @bxt_de_pll_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_de_pll_enable(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @skl_cdclk_decimal(i32) #1

declare dso_local i32 @BXT_CDCLK_CD2X_PIPE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
