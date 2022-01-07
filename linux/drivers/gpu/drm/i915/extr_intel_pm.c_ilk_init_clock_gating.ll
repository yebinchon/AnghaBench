; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@ILK_VRHUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DPFCRUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DPFCUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DPFDUNIT_CLOCK_GATE_ENABLE = common dso_local global i32 0, align 4
@PCH_3DCGDIS0 = common dso_local global i32 0, align 4
@MARIUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@SVSMUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@PCH_3DCGDIS1 = common dso_local global i32 0, align 4
@VFMUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DISPLAY_CHICKEN2 = common dso_local global i32 0, align 4
@ILK_DPARB_GATE = common dso_local global i32 0, align 4
@ILK_VSDPFD_FULL = common dso_local global i32 0, align 4
@ILK_DPARBUNIT_CLOCK_GATE_ENABLE = common dso_local global i32 0, align 4
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_FBC_WM_DIS = common dso_local global i32 0, align 4
@ILK_DISPLAY_CHICKEN1 = common dso_local global i32 0, align 4
@ILK_FBCQ_DIS = common dso_local global i32 0, align 4
@ILK_DSPCLK_GATE_D = common dso_local global i32 0, align 4
@ILK_ELPIN_409_SELECT = common dso_local global i32 0, align 4
@_3D_CHICKEN2 = common dso_local global i32 0, align 4
@_3D_CHICKEN2_WM_READ_PIPELINED = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@CM0_PIPELINED_RENDER_FLUSH_DISABLE = common dso_local global i32 0, align 4
@RC_OP_FLUSH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ilk_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_init_clock_gating(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @ILK_VRHUNIT_CLOCK_GATE_DISABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @ILK_DPFCRUNIT_CLOCK_GATE_DISABLE, align 4
  %6 = load i32, i32* @ILK_DPFCUNIT_CLOCK_GATE_DISABLE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @ILK_DPFDUNIT_CLOCK_GATE_ENABLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @PCH_3DCGDIS0, align 4
  %13 = load i32, i32* @MARIUNIT_CLOCK_GATE_DISABLE, align 4
  %14 = load i32, i32* @SVSMUNIT_CLOCK_GATE_DISABLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @I915_WRITE(i32 %12, i32 %15)
  %17 = load i32, i32* @PCH_3DCGDIS1, align 4
  %18 = load i32, i32* @VFMUNIT_CLOCK_GATE_DISABLE, align 4
  %19 = call i32 @I915_WRITE(i32 %17, i32 %18)
  %20 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %21 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* @ILK_DPARB_GATE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ILK_VSDPFD_FULL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @I915_WRITE(i32 %20, i32 %26)
  %28 = load i32, i32* @ILK_DPARBUNIT_CLOCK_GATE_ENABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @DISP_ARB_CTL, align 4
  %32 = load i32, i32* @DISP_ARB_CTL, align 4
  %33 = call i32 @I915_READ(i32 %32)
  %34 = load i32, i32* @DISP_FBC_WM_DIS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @I915_WRITE(i32 %31, i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i64 @IS_IRONLAKE_M(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %1
  %41 = load i32, i32* @ILK_DISPLAY_CHICKEN1, align 4
  %42 = load i32, i32* @ILK_DISPLAY_CHICKEN1, align 4
  %43 = call i32 @I915_READ(i32 %42)
  %44 = load i32, i32* @ILK_FBCQ_DIS, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @I915_WRITE(i32 %41, i32 %45)
  %47 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %48 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %49 = call i32 @I915_READ(i32 %48)
  %50 = load i32, i32* @ILK_DPARB_GATE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @I915_WRITE(i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %40, %1
  %54 = load i32, i32* @ILK_DSPCLK_GATE_D, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @I915_WRITE(i32 %54, i32 %55)
  %57 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %58 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %59 = call i32 @I915_READ(i32 %58)
  %60 = load i32, i32* @ILK_ELPIN_409_SELECT, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @I915_WRITE(i32 %57, i32 %61)
  %63 = load i32, i32* @_3D_CHICKEN2, align 4
  %64 = load i32, i32* @_3D_CHICKEN2_WM_READ_PIPELINED, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* @_3D_CHICKEN2_WM_READ_PIPELINED, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @I915_WRITE(i32 %63, i32 %67)
  %69 = load i32, i32* @CACHE_MODE_0, align 4
  %70 = load i32, i32* @CM0_PIPELINED_RENDER_FLUSH_DISABLE, align 4
  %71 = call i32 @_MASKED_BIT_ENABLE(i32 %70)
  %72 = call i32 @I915_WRITE(i32 %69, i32 %71)
  %73 = load i32, i32* @CACHE_MODE_0, align 4
  %74 = load i32, i32* @RC_OP_FLUSH_ENABLE, align 4
  %75 = call i32 @_MASKED_BIT_DISABLE(i32 %74)
  %76 = call i32 @I915_WRITE(i32 %73, i32 %75)
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %78 = call i32 @g4x_disable_trickle_feed(%struct.drm_i915_private* %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = call i32 @ibx_init_clock_gating(%struct.drm_i915_private* %79)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @g4x_disable_trickle_feed(%struct.drm_i915_private*) #1

declare dso_local i32 @ibx_init_clock_gating(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
