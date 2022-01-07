; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_pci_bus_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_pci_bus_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.pci_dev = type { i64 }
%struct.dmar_pci_notify_info = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@BUS_NOTIFY_ADD_DEVICE = common dso_local global i64 0, align 8
@BUS_NOTIFY_REMOVED_DEVICE = common dso_local global i64 0, align 8
@dmar_global_lock = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dmar_pci_bus_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_pci_bus_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.dmar_pci_notify_info*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(i8* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %8, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @BUS_NOTIFY_ADD_DEVICE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @BUS_NOTIFY_REMOVED_DEVICE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %22, %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.dmar_pci_notify_info* @dmar_alloc_pci_notify_info(%struct.pci_dev* %29, i64 %30)
  store %struct.dmar_pci_notify_info* %31, %struct.dmar_pci_notify_info** %9, align 8
  %32 = load %struct.dmar_pci_notify_info*, %struct.dmar_pci_notify_info** %9, align 8
  %33 = icmp ne %struct.dmar_pci_notify_info* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %28
  %37 = call i32 @down_write(i32* @dmar_global_lock)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @BUS_NOTIFY_ADD_DEVICE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.dmar_pci_notify_info*, %struct.dmar_pci_notify_info** %9, align 8
  %43 = call i32 @dmar_pci_bus_add_dev(%struct.dmar_pci_notify_info* %42)
  br label %52

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @BUS_NOTIFY_REMOVED_DEVICE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.dmar_pci_notify_info*, %struct.dmar_pci_notify_info** %9, align 8
  %50 = call i32 @dmar_pci_bus_del_dev(%struct.dmar_pci_notify_info* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %41
  %53 = call i32 @up_write(i32* @dmar_global_lock)
  %54 = load %struct.dmar_pci_notify_info*, %struct.dmar_pci_notify_info** %9, align 8
  %55 = call i32 @dmar_free_pci_notify_info(%struct.dmar_pci_notify_info* %54)
  %56 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %34, %26, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.pci_dev* @to_pci_dev(i8*) #1

declare dso_local %struct.dmar_pci_notify_info* @dmar_alloc_pci_notify_info(%struct.pci_dev*, i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @dmar_pci_bus_add_dev(%struct.dmar_pci_notify_info*) #1

declare dso_local i32 @dmar_pci_bus_del_dev(%struct.dmar_pci_notify_info*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @dmar_free_pci_notify_info(%struct.dmar_pci_notify_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
