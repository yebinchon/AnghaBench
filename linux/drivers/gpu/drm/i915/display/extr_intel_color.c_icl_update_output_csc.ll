; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_update_output_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_update_output_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, i32*, i32*, i32*)* @icl_update_output_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_update_output_csc(%struct.intel_crtc* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %9, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @PIPE_CSC_OUTPUT_PREOFF_HI(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @I915_WRITE(i32 %20, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @PIPE_CSC_OUTPUT_PREOFF_ME(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @I915_WRITE(i32 %26, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @PIPE_CSC_OUTPUT_PREOFF_LO(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @I915_WRITE(i32 %32, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @PIPE_CSC_OUTPUT_COEFF_RY_GY(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = call i32 @I915_WRITE(i32 %38, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @PIPE_CSC_OUTPUT_COEFF_BY(i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = call i32 @I915_WRITE(i32 %49, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @PIPE_CSC_OUTPUT_COEFF_RU_GU(i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = call i32 @I915_WRITE(i32 %56, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @PIPE_CSC_OUTPUT_COEFF_BU(i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = call i32 @I915_WRITE(i32 %67, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @PIPE_CSC_OUTPUT_COEFF_RV_GV(i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 16
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = call i32 @I915_WRITE(i32 %74, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @PIPE_CSC_OUTPUT_COEFF_BV(i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = call i32 @I915_WRITE(i32 %85, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @PIPE_CSC_OUTPUT_POSTOFF_HI(i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @I915_WRITE(i32 %92, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @PIPE_CSC_OUTPUT_POSTOFF_ME(i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @I915_WRITE(i32 %98, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @PIPE_CSC_OUTPUT_POSTOFF_LO(i32 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @I915_WRITE(i32 %104, i32 %107)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_PREOFF_HI(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_PREOFF_ME(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_PREOFF_LO(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_COEFF_RY_GY(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_COEFF_BY(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_COEFF_RU_GU(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_COEFF_BU(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_COEFF_RV_GV(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_COEFF_BV(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_POSTOFF_HI(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_POSTOFF_ME(i32) #1

declare dso_local i32 @PIPE_CSC_OUTPUT_POSTOFF_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
