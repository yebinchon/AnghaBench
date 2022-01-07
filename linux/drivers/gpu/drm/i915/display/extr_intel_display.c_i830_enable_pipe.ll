; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i830_enable_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i830_enable_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpll = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@__const.i830_enable_pipe.clock = private unnamed_addr constant %struct.dpll { i32 18, i32 7, i32 13, i32 4, i32 2, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [53 x i8] c"enabling pipe %c due to force quirk (vco=%d dot=%d)\0A\00", align 1
@DPLL_DVO_2X_MODE = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@PLL_P2_DIVIDE_BY_4 = common dso_local global i32 0, align 4
@PLL_REF_INPUT_DREFCLK = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_PROGRESSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i830_enable_pipe(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.dpll, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %10, i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %5, align 8
  %13 = bitcast %struct.dpll* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.dpll* @__const.i830_enable_pipe.clock to i8*), i64 28, i1 false)
  %14 = call i32 @i9xx_calc_dpll_params(i32 48000, %struct.dpll* %6)
  %15 = icmp ne i32 %14, 25154
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pipe_name(i32 %18)
  %20 = getelementptr inbounds %struct.dpll, %struct.dpll* %6, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.dpll, %struct.dpll* %6, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %23)
  %25 = call i32 @i9xx_dpll_compute_fp(%struct.dpll* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @DPLL_DVO_2X_MODE, align 4
  %27 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.dpll, %struct.dpll* %6, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 2
  %32 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load i32, i32* @PLL_P2_DIVIDE_BY_4, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PLL_REF_INPUT_DREFCLK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @FP0(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @I915_WRITE(i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @FP1(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @HTOTAL(i32 %49)
  %51 = call i32 @I915_WRITE(i32 %50, i32 52363903)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @HBLANK(i32 %52)
  %54 = call i32 @I915_WRITE(i32 %53, i32 52363903)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @HSYNC(i32 %55)
  %57 = call i32 @I915_WRITE(i32 %56, i32 49218191)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @VTOTAL(i32 %58)
  %60 = call i32 @I915_WRITE(i32 %59, i32 34341343)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @VBLANK(i32 %61)
  %63 = call i32 @I915_WRITE(i32 %62, i32 34341343)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @VSYNC(i32 %64)
  %66 = call i32 @I915_WRITE(i32 %65, i32 32178665)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @PIPESRC(i32 %67)
  %69 = call i32 @I915_WRITE(i32 %68, i32 41877983)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @DPLL(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = call i32 @I915_WRITE(i32 %71, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @DPLL(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @DPLL(i32 %81)
  %83 = call i32 @POSTING_READ(i32 %82)
  %84 = call i32 @udelay(i32 150)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @DPLL(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @I915_WRITE(i32 %86, i32 %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %101, %2
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @DPLL(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @DPLL(i32 %97)
  %99 = call i32 @POSTING_READ(i32 %98)
  %100 = call i32 @udelay(i32 150)
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @PIPECONF(i32 %105)
  %107 = load i32, i32* @PIPECONF_ENABLE, align 4
  %108 = load i32, i32* @PIPECONF_PROGRESSIVE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @I915_WRITE(i32 %106, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @PIPECONF(i32 %111)
  %113 = call i32 @POSTING_READ(i32 %112)
  %114 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %115 = call i32 @intel_wait_for_pipe_scanline_moving(%struct.intel_crtc* %114)
  ret void
}

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @i9xx_calc_dpll_params(i32, %struct.dpll*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @i9xx_dpll_compute_fp(%struct.dpll*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FP0(i32) #1

declare dso_local i32 @FP1(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @HBLANK(i32) #1

declare dso_local i32 @HSYNC(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i32 @PIPESRC(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @intel_wait_for_pipe_scanline_moving(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
