; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_workq_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_workq_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.delayed_work = type { i32 }
%struct.edac_pci_ctl_info = type { i64, i32, i32 (%struct.edac_pci_ctl_info*)* }

@.str = private unnamed_addr constant [10 x i8] c"checking\0A\00", align 1
@edac_pci_ctls_mutex = common dso_local global i32 0, align 4
@OP_RUNNING_POLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @edac_pci_workq_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_pci_workq_function(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.edac_pci_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.delayed_work* @to_delayed_work(%struct.work_struct* %7)
  store %struct.delayed_work* %8, %struct.delayed_work** %3, align 8
  %9 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %10 = call %struct.edac_pci_ctl_info* @to_edac_pci_ctl_work(%struct.delayed_work* %9)
  store %struct.edac_pci_ctl_info* %10, %struct.edac_pci_ctl_info** %4, align 8
  %11 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @mutex_lock(i32* @edac_pci_ctls_mutex)
  %13 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OP_RUNNING_POLL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @mutex_unlock(i32* @edac_pci_ctls_mutex)
  br label %46

20:                                               ; preds = %1
  %21 = call i64 (...) @edac_pci_get_check_errors()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %25 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %24, i32 0, i32 2
  %26 = load i32 (%struct.edac_pci_ctl_info*)*, i32 (%struct.edac_pci_ctl_info*)** %25, align 8
  %27 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %28 = call i32 %26(%struct.edac_pci_ctl_info* %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = call i32 (...) @edac_pci_get_poll_msec()
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1000
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @msecs_to_jiffies(i32 %34)
  %36 = call i64 @round_jiffies_relative(i64 %35)
  store i64 %36, i64* %6, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %42 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %41, i32 0, i32 1
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @edac_queue_work(i32* %42, i64 %43)
  %45 = call i32 @mutex_unlock(i32* @edac_pci_ctls_mutex)
  br label %46

46:                                               ; preds = %40, %18
  ret void
}

declare dso_local %struct.delayed_work* @to_delayed_work(%struct.work_struct*) #1

declare dso_local %struct.edac_pci_ctl_info* @to_edac_pci_ctl_work(%struct.delayed_work*) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @edac_pci_get_check_errors(...) #1

declare dso_local i32 @edac_pci_get_poll_msec(...) #1

declare dso_local i64 @round_jiffies_relative(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @edac_queue_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
