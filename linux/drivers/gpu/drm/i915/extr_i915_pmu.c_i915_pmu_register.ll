; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.i915_pmu }
%struct.TYPE_6__ = type { i32 }
%struct.i915_pmu = type { %struct.TYPE_7__, %struct.TYPE_9__, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"PMU not supported for this GPU.\00", align 1
@i915_pmu_events_attr_group = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i915_pmu_attr_groups = common dso_local global i32 0, align 4
@perf_invalid_context = common dso_local global i32 0, align 4
@i915_pmu_event_init = common dso_local global i32* null, align 8
@i915_pmu_event_add = common dso_local global i32 0, align 4
@i915_pmu_event_del = common dso_local global i32 0, align 4
@i915_pmu_event_start = common dso_local global i32 0, align 4
@i915_pmu_event_stop = common dso_local global i32 0, align 4
@i915_pmu_event_read = common dso_local global i32 0, align 4
@i915_pmu_event_event_idx = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@i915_sample = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to register PMU! (err=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_pmu_register(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  store %struct.i915_pmu* %6, %struct.i915_pmu** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %18 = call i32 @create_event_attributes(%struct.i915_pmu* %17)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i915_pmu_events_attr_group, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i915_pmu_events_attr_group, i32 0, i32 0), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %90

24:                                               ; preds = %16
  %25 = load i32, i32* @i915_pmu_attr_groups, align 4
  %26 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %27 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 8
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @perf_invalid_context, align 4
  %30 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %31 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  store i32 %29, i32* %32, align 8
  %33 = load i32*, i32** @i915_pmu_event_init, align 8
  %34 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %35 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load i32, i32* @i915_pmu_event_add, align 4
  %38 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %39 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @i915_pmu_event_del, align 4
  %42 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %43 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @i915_pmu_event_start, align 4
  %46 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %47 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @i915_pmu_event_stop, align 4
  %50 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %51 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @i915_pmu_event_read, align 4
  %54 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %55 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @i915_pmu_event_event_idx, align 4
  %58 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %59 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %62 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %61, i32 0, i32 2
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %65 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %64, i32 0, i32 1
  %66 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %67 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %68 = call i32 @hrtimer_init(%struct.TYPE_9__* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @i915_sample, align 4
  %70 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %71 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %74 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %73, i32 0, i32 0
  %75 = call i32 @perf_pmu_register(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %24
  br label %90

79:                                               ; preds = %24
  %80 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %81 = call i32 @i915_pmu_register_cpuhp_state(%struct.i915_pmu* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %86

85:                                               ; preds = %79
  br label %98

86:                                               ; preds = %84
  %87 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %88 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %87, i32 0, i32 0
  %89 = call i32 @perf_pmu_unregister(%struct.TYPE_7__* %88)
  br label %90

90:                                               ; preds = %86, %78, %21
  %91 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %92 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  %94 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %95 = call i32 @free_event_attributes(%struct.i915_pmu* %94)
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @DRM_NOTE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %90, %85, %10
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @create_event_attributes(%struct.i915_pmu*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @i915_pmu_register_cpuhp_state(%struct.i915_pmu*) #1

declare dso_local i32 @perf_pmu_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @free_event_attributes(%struct.i915_pmu*) #1

declare dso_local i32 @DRM_NOTE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
