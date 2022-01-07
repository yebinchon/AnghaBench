; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_rps_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i64, i32, i64 }

@GEN6_PMINTRMSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen6_rps_idle(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.intel_rps* %6, %struct.intel_rps** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i32 @gen6_disable_rps_interrupts(%struct.drm_i915_private* %7)
  %9 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %10 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %13 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %16
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @vlv_set_rps_idle(%struct.drm_i915_private* %25)
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %30 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gen6_set_rps(%struct.drm_i915_private* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %35 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @GEN6_PMINTRMSK, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @gen6_sanitize_rps_pm_mask(%struct.drm_i915_private* %37, i32 -1)
  %39 = call i32 @I915_WRITE(i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %1
  %41 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %42 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @gen6_disable_rps_interrupts(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_set_rps_idle(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_set_rps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @gen6_sanitize_rps_pm_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
