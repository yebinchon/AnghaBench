; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_del_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_del_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i32, i32, i32, i32, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@edac_pci_ctls_mutex = common dso_local global i32 0, align 4
@OP_OFFLINE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@EDAC_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Removed device %d for %s %s: DEV %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edac_pci_ctl_info* @edac_pci_del_device(%struct.device* %0) #0 {
  %2 = alloca %struct.edac_pci_ctl_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.edac_pci_ctl_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @mutex_lock(i32* @edac_pci_ctls_mutex)
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.edac_pci_ctl_info* @find_edac_pci_by_dev(%struct.device* %7)
  store %struct.edac_pci_ctl_info* %8, %struct.edac_pci_ctl_info** %4, align 8
  %9 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %10 = icmp eq %struct.edac_pci_ctl_info* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @mutex_unlock(i32* @edac_pci_ctls_mutex)
  store %struct.edac_pci_ctl_info* null, %struct.edac_pci_ctl_info** %2, align 8
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @OP_OFFLINE, align 4
  %15 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %16 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %18 = call i32 @del_edac_pci_from_global_list(%struct.edac_pci_ctl_info* %17)
  %19 = call i32 @mutex_unlock(i32* @edac_pci_ctls_mutex)
  %20 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %21 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %26 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %25, i32 0, i32 3
  %27 = call i32 @edac_stop_work(i32* %26)
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i32, i32* @KERN_INFO, align 4
  %30 = load i32, i32* @EDAC_PCI, align 4
  %31 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %32 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %35 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %38 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  %41 = call i32 @edac_dev_name(%struct.edac_pci_ctl_info* %40)
  %42 = call i32 @edac_printk(i32 %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %41)
  %43 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %4, align 8
  store %struct.edac_pci_ctl_info* %43, %struct.edac_pci_ctl_info** %2, align 8
  br label %44

44:                                               ; preds = %28, %11
  %45 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  ret %struct.edac_pci_ctl_info* %45
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.edac_pci_ctl_info* @find_edac_pci_by_dev(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_edac_pci_from_global_list(%struct.edac_pci_ctl_info*) #1

declare dso_local i32 @edac_stop_work(i32*) #1

declare dso_local i32 @edac_printk(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @edac_dev_name(%struct.edac_pci_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
