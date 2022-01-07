; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_intel_gvt_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_intel_gvt_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.gvt_sched_data* }
%struct.gvt_sched_data = type { i64 }

@INTEL_GVT_REQUEST_SCHED = common dso_local global i32 0, align 4
@GVT_TS_BALANCE_PERIOD_MS = common dso_local global i32 0, align 4
@INTEL_GVT_REQUEST_EVENT_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_schedule(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca %struct.gvt_sched_data*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %5 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %7, align 8
  store %struct.gvt_sched_data* %8, %struct.gvt_sched_data** %3, align 8
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %10 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = call i64 (...) @ktime_get()
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @INTEL_GVT_REQUEST_SCHED, align 4
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %15 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %14, i32 0, i32 2
  %16 = bitcast i32* %15 to i8*
  %17 = call i64 @test_and_clear_bit(i32 %13, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %27 = call i32 @gvt_balance_timeslice(%struct.gvt_sched_data* %26)
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @GVT_TS_BALANCE_PERIOD_MS, align 4
  %30 = call i64 @ktime_add_ms(i64 %28, i32 %29)
  %31 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %32 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %19
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* @INTEL_GVT_REQUEST_EVENT_SCHED, align 4
  %36 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %37 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %36, i32 0, i32 2
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 @clear_bit(i32 %35, i8* %38)
  %40 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %41 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @vgpu_update_timeslice(i32 %43, i64 %44)
  %46 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %3, align 8
  %47 = call i32 @tbs_sched_func(%struct.gvt_sched_data* %46)
  %48 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %49 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ktime_get(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i8*) #1

declare dso_local i32 @gvt_balance_timeslice(%struct.gvt_sched_data*) #1

declare dso_local i64 @ktime_add_ms(i64, i32) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

declare dso_local i32 @vgpu_update_timeslice(i32, i64) #1

declare dso_local i32 @tbs_sched_func(%struct.gvt_sched_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
