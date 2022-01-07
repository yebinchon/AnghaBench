; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_vgpu_update_timeslice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_sched_policy.c_vgpu_update_timeslice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.vgpu_sched_data*, %struct.TYPE_2__* }
%struct.vgpu_sched_data = type { i8*, i8*, i32 }
%struct.TYPE_2__ = type { %struct.intel_vgpu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*, i8*)* @vgpu_update_timeslice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgpu_update_timeslice(%struct.intel_vgpu* %0, i8* %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vgpu_sched_data*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %8 = icmp ne %struct.intel_vgpu* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %14, align 8
  %16 = icmp eq %struct.intel_vgpu* %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9, %2
  br label %44

18:                                               ; preds = %9
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 0
  %21 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %20, align 8
  store %struct.vgpu_sched_data* %21, %struct.vgpu_sched_data** %6, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @ktime_sub(i8* %22, i8* %25)
  store i8* %26, i8** %5, align 8
  %27 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %6, align 8
  %28 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @ktime_add(i32 %29, i8* %30)
  %32 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %6, align 8
  %33 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %6, align 8
  %35 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @ktime_sub(i8* %36, i8* %37)
  %39 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %6, align 8
  %40 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.vgpu_sched_data*, %struct.vgpu_sched_data** %6, align 8
  %43 = getelementptr inbounds %struct.vgpu_sched_data, %struct.vgpu_sched_data* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %18, %17
  ret void
}

declare dso_local i8* @ktime_sub(i8*, i8*) #1

declare dso_local i32 @ktime_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
