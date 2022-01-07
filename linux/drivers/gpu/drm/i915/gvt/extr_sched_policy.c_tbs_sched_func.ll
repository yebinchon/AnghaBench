; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_tbs_sched_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gvt_sched_data = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.intel_vgpu*, %struct.intel_gvt_workload_scheduler }
%struct.intel_vgpu = type { %struct.vgpu_sched_data* }
%struct.vgpu_sched_data = type { i32, i32 }
%struct.intel_gvt_workload_scheduler = type { %struct.intel_vgpu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gvt_sched_data*)* @tbs_sched_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbs_sched_func(%struct.gvt_sched_data* %0) #0 {
  %2 = alloca %struct.gvt_sched_data*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.intel_gvt_workload_scheduler*, align 8
  %5 = alloca %struct.vgpu_sched_data*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  store %struct.gvt_sched_data* %0, %struct.gvt_sched_data** %2, align 8
  %7 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %2, align 8
  %8 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %7, i32 0, i32 1
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  store %struct.intel_gvt* %9, %struct.intel_gvt** %3, align 8
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %10, i32 0, i32 1
  store %struct.intel_gvt_workload_scheduler* %11, %struct.intel_gvt_workload_scheduler** %4, align 8
  store %struct.intel_vgpu* null, %struct.intel_vgpu** %6, align 8
  %12 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %2, align 8
  %13 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %12, i32 0, i32 0
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %4, align 8
  %18 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %17, i32 0, i32 0
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %18, align 8
  %20 = icmp ne %struct.intel_vgpu* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %2, align 8
  %24 = call %struct.intel_vgpu* @find_busy_vgpu(%struct.gvt_sched_data* %23)
  store %struct.intel_vgpu* %24, %struct.intel_vgpu** %6, align 8
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %26 = icmp ne %struct.intel_vgpu* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %29 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %4, align 8
  %30 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %29, i32 0, i32 0
  store %struct.intel_vgpu* %28, %struct.intel_vgpu** %30, align 8
  %31 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %31, i32 0, i32 0
  %33 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %32, align 8
  store %struct.vgpu_sched_data* %33, %struct.vgpu_sched_data** %5, align 8
  %34 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %5, align 8
  %35 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %27
  %39 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %5, align 8
  %40 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %39, i32 0, i32 0
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %5, align 8
  %43 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %42, i32 0, i32 0
  %44 = load %struct.gvt_sched_data*, %struct.gvt_sched_data** %2, align 8
  %45 = getelementptr inbounds %struct.gvt_sched_data, %struct.gvt_sched_data* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %38, %27
  br label %54

48:                                               ; preds = %22
  %49 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %50 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %49, i32 0, i32 0
  %51 = load %struct.intel_vgpu*, %struct.intel_vgpu** %50, align 8
  %52 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %4, align 8
  %53 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %52, i32 0, i32 0
  store %struct.intel_vgpu* %51, %struct.intel_vgpu** %53, align 8
  br label %54

54:                                               ; preds = %48, %47
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %4, align 8
  %57 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %56, i32 0, i32 0
  %58 = load %struct.intel_vgpu*, %struct.intel_vgpu** %57, align 8
  %59 = icmp ne %struct.intel_vgpu* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %62 = call i32 @try_to_schedule_next_vgpu(%struct.intel_gvt* %61)
  br label %63

63:                                               ; preds = %60, %55
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.intel_vgpu* @find_busy_vgpu(%struct.gvt_sched_data*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @try_to_schedule_next_vgpu(%struct.intel_gvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
