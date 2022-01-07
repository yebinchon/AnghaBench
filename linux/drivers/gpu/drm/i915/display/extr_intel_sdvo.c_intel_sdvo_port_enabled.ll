; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_port_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_port_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SDVO_PIPE_SEL_MASK_CPT = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_SHIFT_CPT = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_MASK_CHV = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_SHIFT_CHV = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_SHIFT = common dso_local global i32 0, align 4
@SDVO_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_sdvo_port_enabled(%struct.drm_i915_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SDVO_PIPE_SEL_MASK_CPT, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SDVO_PIPE_SEL_SHIFT_CPT, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SDVO_PIPE_SEL_MASK_CHV, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SDVO_PIPE_SEL_SHIFT_CHV, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %38

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SDVO_PIPE_SEL_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @SDVO_PIPE_SEL_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %24
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SDVO_ENABLE, align 4
  %42 = and i32 %40, %41
  ret i32 %42
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
