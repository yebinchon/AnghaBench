; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_pci_is_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_pci_is_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sp_device = type { %struct.device* }
%struct.pci_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@sp_dev_master = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sp_device*)* @sp_pci_is_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_pci_is_master(%struct.sp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %8 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %9 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sp_dev_master, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(%struct.device* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(%struct.device* %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @PCI_SLOT(i32 %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @PCI_SLOT(i32 %37)
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @PCI_FUNC(i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @PCI_FUNC(i32 %48)
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51, %40, %29
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
