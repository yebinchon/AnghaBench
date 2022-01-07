; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_set_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_set_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i64 }

@GEN6_RPNSWREQ = common dso_local global i32 0, align 4
@GEN6_AGGRESSIVE_TURBO = common dso_local global i32 0, align 4
@GEN6_RP_INTERRUPT_LIMITS = common dso_local global i32 0, align 4
@GEN6_PMINTRMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i64)* @gen6_set_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_set_rps(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_rps*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.intel_rps* %8, %struct.intel_rps** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %11 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @gen6_set_rps_thresholds(%struct.drm_i915_private* %15, i64 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = icmp sge i32 %19, 9
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @GEN6_RPNSWREQ, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @GEN9_FREQUENCY(i64 %23)
  %25 = call i32 @I915_WRITE(i32 %22, i32 %24)
  br label %49

26:                                               ; preds = %14
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @IS_HASWELL(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @GEN6_RPNSWREQ, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @HSW_FREQUENCY(i64 %36)
  %38 = call i32 @I915_WRITE(i32 %35, i32 %37)
  br label %48

39:                                               ; preds = %30
  %40 = load i32, i32* @GEN6_RPNSWREQ, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @GEN6_FREQUENCY(i64 %41)
  %43 = call i32 @GEN6_OFFSET(i32 0)
  %44 = or i32 %42, %43
  %45 = load i32, i32* @GEN6_AGGRESSIVE_TURBO, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @I915_WRITE(i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* @GEN6_RP_INTERRUPT_LIMITS, align 4
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @intel_rps_limits(%struct.drm_i915_private* %52, i64 %53)
  %55 = call i32 @I915_WRITE(i32 %51, i32 %54)
  %56 = load i32, i32* @GEN6_PMINTRMSK, align 4
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @gen6_rps_pm_mask(%struct.drm_i915_private* %57, i64 %58)
  %60 = call i32 @I915_WRITE(i32 %56, i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.intel_rps*, %struct.intel_rps** %5, align 8
  %63 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %64, i64 %65)
  %67 = call i32 @trace_intel_gpu_freq_change(i32 %66)
  ret i32 0
}

declare dso_local i32 @gen6_set_rps_thresholds(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @GEN9_FREQUENCY(i64) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @HSW_FREQUENCY(i64) #1

declare dso_local i32 @GEN6_FREQUENCY(i64) #1

declare dso_local i32 @GEN6_OFFSET(i32) #1

declare dso_local i32 @intel_rps_limits(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @gen6_rps_pm_mask(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @trace_intel_gpu_freq_change(i32) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
