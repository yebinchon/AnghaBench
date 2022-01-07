; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { i64, i64, %struct.device*, %struct.sp_pci* }
%struct.device = type { i32 }
%struct.sp_pci = type { i64 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sp_device*)* @sp_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_free_irqs(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.sp_device*, align 8
  %3 = alloca %struct.sp_pci*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %2, align 8
  %6 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %7 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %6, i32 0, i32 3
  %8 = load %struct.sp_pci*, %struct.sp_pci** %7, align 8
  store %struct.sp_pci* %8, %struct.sp_pci** %3, align 8
  %9 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %10 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(%struct.device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.sp_pci*, %struct.sp_pci** %3, align 8
  %15 = getelementptr inbounds %struct.sp_pci, %struct.sp_pci* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = call i32 @pci_disable_msix(%struct.pci_dev* %19)
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %23 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32 @pci_disable_msi(%struct.pci_dev* %27)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %32 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %34 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
