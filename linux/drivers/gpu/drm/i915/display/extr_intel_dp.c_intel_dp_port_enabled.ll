; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_port_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_port_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DP_PORT_EN = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@DP_PIPE_SEL_MASK_IVB = common dso_local global i32 0, align 4
@DP_PIPE_SEL_SHIFT_IVB = common dso_local global i32 0, align 4
@DP_PIPE_SEL_MASK_CHV = common dso_local global i32 0, align 4
@DP_PIPE_SEL_SHIFT_CHV = common dso_local global i32 0, align 4
@DP_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@DP_PIPE_SEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_port_enabled(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @I915_READ(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @DP_PORT_EN, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PORT_A, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @DP_PIPE_SEL_MASK_IVB, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @DP_PIPE_SEL_SHIFT_IVB, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %65

30:                                               ; preds = %19, %4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PORT_A, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @cpt_dp_port_selected(%struct.drm_i915_private* %39, i32 %40, i32* %41)
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %64

45:                                               ; preds = %34, %30
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %47 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DP_PIPE_SEL_MASK_CHV, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @DP_PIPE_SEL_SHIFT_CHV, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %63

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DP_PIPE_SEL_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @DP_PIPE_SEL_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @cpt_dp_port_selected(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
