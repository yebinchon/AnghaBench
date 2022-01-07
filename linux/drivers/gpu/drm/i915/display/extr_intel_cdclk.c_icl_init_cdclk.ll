; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_init_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_icl_init_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.intel_cdclk_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Current CDCLK\00", align 1
@CDCLK_CTL = common dso_local global i32 0, align 4
@BXT_CDCLK_CD2X_DIV_SEL_MASK = common dso_local global i32 0, align 4
@CDCLK_FREQ_DECIMAL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Sanitizing cdclk programmed by pre-os\0A\00", align 1
@INVALID_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @icl_init_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_init_cdclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_cdclk_state, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %5)
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @intel_dump_cdclk_state(%struct.TYPE_4__* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @CDCLK_CTL, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BXT_CDCLK_CD2X_DIV_SEL_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %44

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CDCLK_FREQ_DECIMAL_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @skl_cdclk_decimal(i64 %39)
  %41 = icmp ne i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %44

43:                                               ; preds = %31
  br label %69

44:                                               ; preds = %42, %30, %22
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @icl_calc_cdclk(i32 0, i32 %53)
  %55 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @icl_calc_cdclk_pll_vco(%struct.drm_i915_private* %56, i32 %58)
  %60 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @icl_calc_voltage_level(%struct.drm_i915_private* %61, i32 %63)
  %65 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %3, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = load i32, i32* @INVALID_PIPE, align 4
  %68 = call i32 @icl_set_cdclk(%struct.drm_i915_private* %66, %struct.intel_cdclk_state* %3, i32 %67)
  br label %69

69:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dump_cdclk_state(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @skl_cdclk_decimal(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @icl_calc_cdclk(i32, i32) #1

declare dso_local i32 @icl_calc_cdclk_pll_vco(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_calc_voltage_level(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_set_cdclk(%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
