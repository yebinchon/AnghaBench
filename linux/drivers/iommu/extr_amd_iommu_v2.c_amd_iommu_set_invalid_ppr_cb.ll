; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_set_invalid_ppr_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_set_invalid_ppr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_state = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@state_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_set_invalid_ppr_cb(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @amd_iommu_v2_supported()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @device_id(%struct.pci_dev* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @state_lock, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.device_state* @__get_device_state(i32 %22)
  store %struct.device_state* %23, %struct.device_state** %6, align 8
  %24 = load %struct.device_state*, %struct.device_state** %6, align 8
  %25 = icmp eq %struct.device_state* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %31

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.device_state*, %struct.device_state** %6, align 8
  %30 = getelementptr inbounds %struct.device_state, %struct.device_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @state_lock, i64 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @amd_iommu_v2_supported(...) #1

declare dso_local i32 @device_id(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.device_state* @__get_device_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
