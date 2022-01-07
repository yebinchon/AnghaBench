; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cnl_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_cnl_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@_3D_CHICKEN3 = common dso_local global i32 0, align 4
@_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE = common dso_local global i32 0, align 4
@GEN8_CHICKEN_DCPR_1 = common dso_local global i32 0, align 4
@MASK_WAKEMEM = common dso_local global i32 0, align 4
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_FBC_MEMORY_WAKE = common dso_local global i32 0, align 4
@SLICE_UNIT_LEVEL_CLKGATE = common dso_local global i32 0, align 4
@RCCUNIT_CLKGATE_DIS = common dso_local global i32 0, align 4
@CNL_REVID_A0 = common dso_local global i32 0, align 4
@CNL_REVID_B0 = common dso_local global i32 0, align 4
@SARBUNIT_CLKGATE_DIS = common dso_local global i32 0, align 4
@SUBSLICE_UNIT_LEVEL_CLKGATE = common dso_local global i32 0, align 4
@GWUNIT_CLKGATE_DIS = common dso_local global i32 0, align 4
@UNSLICE_UNIT_LEVEL_CLKGATE = common dso_local global i32 0, align 4
@VFUNIT_CLKGATE_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @cnl_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call i32 @cnp_init_clock_gating(%struct.drm_i915_private* %4)
  %6 = load i32, i32* @_3D_CHICKEN3, align 4
  %7 = load i32, i32* @_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE, align 4
  %8 = call i32 @_MASKED_BIT_ENABLE(i32 %7)
  %9 = call i32 @I915_WRITE(i32 %6, i32 %8)
  %10 = load i32, i32* @GEN8_CHICKEN_DCPR_1, align 4
  %11 = load i32, i32* @GEN8_CHICKEN_DCPR_1, align 4
  %12 = call i32 @I915_READ(i32 %11)
  %13 = load i32, i32* @MASK_WAKEMEM, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @I915_WRITE(i32 %10, i32 %14)
  %16 = load i32, i32* @DISP_ARB_CTL, align 4
  %17 = load i32, i32* @DISP_ARB_CTL, align 4
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @DISP_FBC_MEMORY_WAKE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @I915_WRITE(i32 %16, i32 %20)
  %22 = load i32, i32* @SLICE_UNIT_LEVEL_CLKGATE, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @RCCUNIT_CLKGATE_DIS, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = load i32, i32* @CNL_REVID_A0, align 4
  %29 = load i32, i32* @CNL_REVID_B0, align 4
  %30 = call i64 @IS_CNL_REVID(%struct.drm_i915_private* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @SARBUNIT_CLKGATE_DIS, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %1
  %37 = load i32, i32* @SLICE_UNIT_LEVEL_CLKGATE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @I915_WRITE(i32 %37, i32 %38)
  %40 = load i32, i32* @SUBSLICE_UNIT_LEVEL_CLKGATE, align 4
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @GWUNIT_CLKGATE_DIS, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @SUBSLICE_UNIT_LEVEL_CLKGATE, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @I915_WRITE(i32 %45, i32 %46)
  %48 = load i32, i32* @UNSLICE_UNIT_LEVEL_CLKGATE, align 4
  %49 = call i32 @I915_READ(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @VFUNIT_CLKGATE_DIS, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @UNSLICE_UNIT_LEVEL_CLKGATE, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @I915_WRITE(i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @cnp_init_clock_gating(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_CNL_REVID(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
