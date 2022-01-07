; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_start_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_start_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.vgpu_sched_data*, %struct.TYPE_3__* }
%struct.vgpu_sched_data = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gvt_sched_data* }
%struct.gvt_sched_data = type { i32, i32, i32 }

@GVT_SCHED_VGPU_PRI_TIME = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*)* @tbs_sched_start_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbs_sched_start_schedule(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca %struct.gvt_sched_data*, align 8
  %4 = alloca %struct.vgpu_sched_data*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %6 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %10, align 8
  store %struct.gvt_sched_data* %11, %struct.gvt_sched_data** %3, align 8
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 0
  %14 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %13, align 8
  store %struct.vgpu_sched_data* %14, %struct.vgpu_sched_data** %4, align 8
  %15 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %16 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %15, i32 0, i32 2
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %52

20:                                               ; preds = %1
  %21 = call i32 (...) @ktime_get()
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @GVT_SCHED_VGPU_PRI_TIME, align 4
  %24 = call i32 @ktime_set(i32 %23, i32 0)
  %25 = call i32 @ktime_add(i32 %22, i32 %24)
  %26 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %27 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %29 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %31 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %30, i32 0, i32 2
  %32 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %33 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %32, i32 0, i32 2
  %34 = call i32 @list_add(i32* %31, i32* %33)
  %35 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %36 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %35, i32 0, i32 1
  %37 = call i32 @hrtimer_active(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %20
  %40 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %41 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %40, i32 0, i32 1
  %42 = call i32 (...) @ktime_get()
  %43 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %44 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ktime_add_ns(i32 %42, i32 %45)
  %47 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %48 = call i32 @hrtimer_start(i32* %41, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %20
  %50 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %4, align 8
  %51 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %19
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
