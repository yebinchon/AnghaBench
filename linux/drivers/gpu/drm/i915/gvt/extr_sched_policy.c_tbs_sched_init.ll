; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.intel_gvt_workload_scheduler }
%struct.intel_gvt_workload_scheduler = type { %struct.gvt_sched_data* }
%struct.gvt_sched_data = type { %struct.intel_gvt*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@tbs_timer_fn = common dso_local global i32 0, align 4
@GVT_DEFAULT_TIME_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*)* @tbs_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbs_sched_init(%struct.intel_gvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.intel_gvt_workload_scheduler*, align 8
  %5 = alloca %struct.gvt_sched_data*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  %6 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %7 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %6, i32 0, i32 0
  store %struct.intel_gvt_workload_scheduler* %7, %struct.intel_gvt_workload_scheduler** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.gvt_sched_data* @kzalloc(i32 24, i32 %8)
  store %struct.gvt_sched_data* %9, %struct.gvt_sched_data** %5, align 8
  %10 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %11 = icmp ne %struct.gvt_sched_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %17 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %20 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %19, i32 0, i32 2
  %21 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %22 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %23 = call i32 @hrtimer_init(%struct.TYPE_2__* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @tbs_timer_fn, align 4
  %25 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %26 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @GVT_DEFAULT_TIME_SLICE, align 4
  %29 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %30 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %32 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %33 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %32, i32 0, i32 0
  store %struct.intel_gvt* %31, %struct.intel_gvt** %33, align 8
  %34 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %5, align 8
  %35 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %4, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %35, i32 0, i32 0
  store %struct.gvt_sched_data* %34, %struct.gvt_sched_data** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %15, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.gvt_sched_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
