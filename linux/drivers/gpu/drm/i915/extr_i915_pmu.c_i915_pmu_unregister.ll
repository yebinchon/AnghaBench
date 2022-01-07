; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.i915_pmu }
%struct.i915_pmu = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_pmu_unregister(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_pmu*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.i915_pmu* %5, %struct.i915_pmu** %3, align 8
  %6 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %18 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %17, i32 0, i32 1
  %19 = call i32 @hrtimer_cancel(i32* %18)
  %20 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %21 = call i32 @i915_pmu_unregister_cpuhp_state(%struct.i915_pmu* %20)
  %22 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %23 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %22, i32 0, i32 0
  %24 = call i32 @perf_pmu_unregister(%struct.TYPE_2__* %23)
  %25 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %26 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %29 = call i32 @free_event_attributes(%struct.i915_pmu* %28)
  br label %30

30:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @i915_pmu_unregister_cpuhp_state(%struct.i915_pmu*) #1

declare dso_local i32 @perf_pmu_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @free_event_attributes(%struct.i915_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
