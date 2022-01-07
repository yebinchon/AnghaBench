; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"PCI dev %s is disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to discover %s resources with err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Allocated vnic for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usnic_vnic* @usnic_vnic_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.usnic_vnic*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.usnic_vnic*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_is_enabled(%struct.pci_dev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @pci_name(%struct.pci_dev* %10)
  %12 = call i32 (i8*, i32, ...) @usnic_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.usnic_vnic* @ERR_PTR(i32 %14)
  store %struct.usnic_vnic* %15, %struct.usnic_vnic** %2, align 8
  br label %49

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.usnic_vnic* @kzalloc(i32 4, i32 %17)
  store %struct.usnic_vnic* %18, %struct.usnic_vnic** %4, align 8
  %19 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  %20 = icmp ne %struct.usnic_vnic* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.usnic_vnic* @ERR_PTR(i32 %23)
  store %struct.usnic_vnic* %24, %struct.usnic_vnic** %2, align 8
  br label %49

25:                                               ; preds = %16
  %26 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  %27 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  %31 = call i32 @usnic_vnic_discover_resources(%struct.pci_dev* %29, %struct.usnic_vnic* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = call i32 @pci_name(%struct.pci_dev* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, i32, ...) @usnic_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %44

39:                                               ; preds = %25
  %40 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  %41 = call i32 @usnic_vnic_pci_name(%struct.usnic_vnic* %40)
  %42 = call i32 @usnic_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  store %struct.usnic_vnic* %43, %struct.usnic_vnic** %2, align 8
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.usnic_vnic*, %struct.usnic_vnic** %4, align 8
  %46 = call i32 @kfree(%struct.usnic_vnic* %45)
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.usnic_vnic* @ERR_PTR(i32 %47)
  store %struct.usnic_vnic* %48, %struct.usnic_vnic** %2, align 8
  br label %49

49:                                               ; preds = %44, %39, %21, %9
  %50 = load %struct.usnic_vnic*, %struct.usnic_vnic** %2, align 8
  ret %struct.usnic_vnic* %50
}

declare dso_local i32 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local i32 @usnic_err(i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.usnic_vnic* @ERR_PTR(i32) #1

declare dso_local %struct.usnic_vnic* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usnic_vnic_discover_resources(%struct.pci_dev*, %struct.usnic_vnic*) #1

declare dso_local i32 @usnic_dbg(i8*, i32) #1

declare dso_local i32 @usnic_vnic_pci_name(%struct.usnic_vnic*) #1

declare dso_local i32 @kfree(%struct.usnic_vnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
