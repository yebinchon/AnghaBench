; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_workq_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_workq_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.delayed_work = type { i32 }
%struct.edac_device_ctl_info = type { i64, i32, i32, i32, i32 (%struct.edac_device_ctl_info*)* }

@device_ctls_mutex = common dso_local global i32 0, align 4
@OP_OFFLINE = common dso_local global i64 0, align 8
@OP_RUNNING_POLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @edac_device_workq_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_device_workq_function(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.edac_device_ctl_info*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.delayed_work* @to_delayed_work(%struct.work_struct* %5)
  store %struct.delayed_work* %6, %struct.delayed_work** %3, align 8
  %7 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %8 = call %struct.edac_device_ctl_info* @to_edac_device_ctl_work(%struct.delayed_work* %7)
  store %struct.edac_device_ctl_info* %8, %struct.edac_device_ctl_info** %4, align 8
  %9 = call i32 @mutex_lock(i32* @device_ctls_mutex)
  %10 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %11 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OP_OFFLINE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @mutex_unlock(i32* @device_ctls_mutex)
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %19 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OP_RUNNING_POLL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %25 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %24, i32 0, i32 4
  %26 = load i32 (%struct.edac_device_ctl_info*)*, i32 (%struct.edac_device_ctl_info*)** %25, align 8
  %27 = icmp ne i32 (%struct.edac_device_ctl_info*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %30 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %29, i32 0, i32 4
  %31 = load i32 (%struct.edac_device_ctl_info*)*, i32 (%struct.edac_device_ctl_info*)** %30, align 8
  %32 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %33 = call i32 %31(%struct.edac_device_ctl_info* %32)
  br label %34

34:                                               ; preds = %28, %23, %17
  %35 = call i32 @mutex_unlock(i32* @device_ctls_mutex)
  %36 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %37 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1000
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %42 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %41, i32 0, i32 3
  %43 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %44 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @round_jiffies_relative(i32 %45)
  %47 = call i32 @edac_queue_work(i32* %42, i32 %46)
  br label %55

48:                                               ; preds = %34
  %49 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %50 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %49, i32 0, i32 3
  %51 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %4, align 8
  %52 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @edac_queue_work(i32* %50, i32 %53)
  br label %55

55:                                               ; preds = %15, %48, %40
  ret void
}

declare dso_local %struct.delayed_work* @to_delayed_work(%struct.work_struct*) #1

declare dso_local %struct.edac_device_ctl_info* @to_edac_device_ctl_work(%struct.delayed_work*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @edac_queue_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
