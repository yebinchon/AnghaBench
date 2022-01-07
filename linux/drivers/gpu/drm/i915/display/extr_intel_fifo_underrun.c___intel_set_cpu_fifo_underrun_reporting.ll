; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c___intel_set_cpu_fifo_underrun_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c___intel_set_cpu_fifo_underrun_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @__intel_set_cpu_fifo_underrun_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_set_cpu_fifo_underrun_reporting(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private* %12, i32 %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %8, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %31 = call i64 @HAS_GMCH(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @i9xx_set_fifo_underrun_reporting(%struct.drm_device* %34, i32 %35, i32 %36, i32 %37)
  br label %70

39:                                               ; preds = %3
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %41 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %40, i32 5, i32 6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ironlake_set_fifo_underrun_reporting(%struct.drm_device* %44, i32 %45, i32 %46)
  br label %69

48:                                               ; preds = %39
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %50 = call i64 @IS_GEN(%struct.drm_i915_private* %49, i32 7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ivybridge_set_fifo_underrun_reporting(%struct.drm_device* %53, i32 %54, i32 %55, i32 %56)
  br label %68

58:                                               ; preds = %48
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %60 = call i32 @INTEL_GEN(%struct.drm_i915_private* %59)
  %61 = icmp sge i32 %60, 8
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @broadwell_set_fifo_underrun_reporting(%struct.drm_device* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @intel_get_crtc_for_pipe(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @i9xx_set_fifo_underrun_reporting(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @ironlake_set_fifo_underrun_reporting(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ivybridge_set_fifo_underrun_reporting(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @broadwell_set_fifo_underrun_reporting(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
