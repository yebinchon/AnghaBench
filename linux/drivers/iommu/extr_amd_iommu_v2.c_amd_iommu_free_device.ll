; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_state = type { i32, i32, i32 }

@state_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd_iommu_free_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.device_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = call i32 (...) @amd_iommu_v2_supported()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @device_id(%struct.pci_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @state_lock, i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.device_state* @__get_device_state(i32 %14)
  store %struct.device_state* %15, %struct.device_state** %3, align 8
  %16 = load %struct.device_state*, %struct.device_state** %3, align 8
  %17 = icmp eq %struct.device_state* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @state_lock, i64 %19)
  br label %43

21:                                               ; preds = %9
  %22 = load %struct.device_state*, %struct.device_state** %3, align 8
  %23 = getelementptr inbounds %struct.device_state, %struct.device_state* %22, i32 0, i32 2
  %24 = call i32 @list_del(i32* %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @state_lock, i64 %25)
  %27 = load %struct.device_state*, %struct.device_state** %3, align 8
  %28 = call i32 @free_pasid_states(%struct.device_state* %27)
  %29 = load %struct.device_state*, %struct.device_state** %3, align 8
  %30 = call i32 @put_device_state(%struct.device_state* %29)
  %31 = load %struct.device_state*, %struct.device_state** %3, align 8
  %32 = getelementptr inbounds %struct.device_state, %struct.device_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.device_state*, %struct.device_state** %3, align 8
  %35 = getelementptr inbounds %struct.device_state, %struct.device_state* %34, i32 0, i32 0
  %36 = call i32 @atomic_read(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %33, i32 %39)
  %41 = load %struct.device_state*, %struct.device_state** %3, align 8
  %42 = call i32 @free_device_state(%struct.device_state* %41)
  br label %43

43:                                               ; preds = %21, %18, %8
  ret void
}

declare dso_local i32 @amd_iommu_v2_supported(...) #1

declare dso_local i32 @device_id(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.device_state* @__get_device_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_pasid_states(%struct.device_state*) #1

declare dso_local i32 @put_device_state(%struct.device_state*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @free_device_state(%struct.device_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
