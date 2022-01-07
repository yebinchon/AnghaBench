; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_intel_vgpu_stop_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_intel_vgpu_stop_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__*, i32, %struct.vgpu_sched_data* }
%struct.TYPE_4__ = type { i32, %struct.drm_i915_private*, %struct.intel_gvt_workload_scheduler }
%struct.drm_i915_private = type { i32 }
%struct.intel_gvt_workload_scheduler = type { i32, i32, %struct.intel_vgpu**, %struct.intel_vgpu*, %struct.intel_vgpu*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.intel_vgpu*)* }
%struct.vgpu_sched_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"vgpu%d: stop schedule\0A\00", align 1
@I915_NUM_ENGINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_stop_schedule(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca %struct.intel_gvt_workload_scheduler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vgpu_sched_data*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store %struct.intel_gvt_workload_scheduler* %10, %struct.intel_gvt_workload_scheduler** %3, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 2
  %13 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %12, align 8
  store %struct.vgpu_sched_data* %13, %struct.vgpu_sched_data** %5, align 8
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %5, align 8
  %20 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %107

24:                                               ; preds = %1
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %35 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.intel_vgpu*)*, i32 (%struct.intel_vgpu*)** %37, align 8
  %39 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %40 = call i32 %38(%struct.intel_vgpu* %39)
  %41 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %42 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %41, i32 0, i32 4
  %43 = load %struct.intel_vgpu*, %struct.intel_vgpu** %42, align 8
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %45 = icmp eq %struct.intel_vgpu* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %24
  %47 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %48 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %47, i32 0, i32 4
  store %struct.intel_vgpu* null, %struct.intel_vgpu** %48, align 8
  br label %49

49:                                               ; preds = %46, %24
  %50 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %51 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %50, i32 0, i32 3
  %52 = load %struct.intel_vgpu*, %struct.intel_vgpu** %51, align 8
  %53 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %54 = icmp eq %struct.intel_vgpu* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %57 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %59 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %58, i32 0, i32 3
  store %struct.intel_vgpu* null, %struct.intel_vgpu** %59, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 0
  %63 = call i32 @intel_runtime_pm_get(i32* %62)
  %64 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %65 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_bh(i32* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %92, %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @I915_NUM_ENGINES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %73 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %72, i32 0, i32 2
  %74 = load %struct.intel_vgpu**, %struct.intel_vgpu*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.intel_vgpu*, %struct.intel_vgpu** %74, i64 %76
  %78 = load %struct.intel_vgpu*, %struct.intel_vgpu** %77, align 8
  %79 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %80 = icmp eq %struct.intel_vgpu* %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @intel_gvt_switch_mmio(%struct.intel_vgpu* %82, i32* null, i32 %83)
  %85 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %86 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %85, i32 0, i32 2
  %87 = load %struct.intel_vgpu**, %struct.intel_vgpu*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.intel_vgpu*, %struct.intel_vgpu** %87, i64 %89
  store %struct.intel_vgpu* null, %struct.intel_vgpu** %90, align 8
  br label %91

91:                                               ; preds = %81, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %67

95:                                               ; preds = %67
  %96 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %3, align 8
  %97 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %100 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %99, i32 0, i32 0
  %101 = call i32 @intel_runtime_pm_put_unchecked(i32* %100)
  %102 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %103 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %95, %23
  ret void
}

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @intel_gvt_switch_mmio(%struct.intel_vgpu*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @intel_runtime_pm_put_unchecked(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
