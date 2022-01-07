; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_unbind_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_amd_iommu_unbind_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pasid_state = type { i32, i32, i32 }
%struct.device_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd_iommu_unbind_pasid(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pasid_state*, align 8
  %6 = alloca %struct.device_state*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @might_sleep()
  %9 = call i32 (...) @amd_iommu_v2_supported()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @device_id(%struct.pci_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.device_state* @get_device_state(i32 %15)
  store %struct.device_state* %16, %struct.device_state** %6, align 8
  %17 = load %struct.device_state*, %struct.device_state** %6, align 8
  %18 = icmp eq %struct.device_state* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %58

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.device_state*, %struct.device_state** %6, align 8
  %26 = getelementptr inbounds %struct.device_state, %struct.device_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %20
  br label %53

30:                                               ; preds = %23
  %31 = load %struct.device_state*, %struct.device_state** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.pasid_state* @get_pasid_state(%struct.device_state* %31, i32 %32)
  store %struct.pasid_state* %33, %struct.pasid_state** %5, align 8
  %34 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %35 = icmp eq %struct.pasid_state* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %53

37:                                               ; preds = %30
  %38 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %39 = call i32 @put_pasid_state(%struct.pasid_state* %38)
  %40 = load %struct.device_state*, %struct.device_state** %6, align 8
  %41 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %42 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clear_pasid_state(%struct.device_state* %40, i32 %43)
  %45 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %46 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %45, i32 0, i32 1
  %47 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %48 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmu_notifier_unregister(i32* %46, i32 %49)
  %51 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %52 = call i32 @put_pasid_state_wait(%struct.pasid_state* %51)
  br label %53

53:                                               ; preds = %37, %36, %29
  %54 = load %struct.device_state*, %struct.device_state** %6, align 8
  %55 = call i32 @put_device_state(%struct.device_state* %54)
  %56 = load %struct.device_state*, %struct.device_state** %6, align 8
  %57 = call i32 @put_device_state(%struct.device_state* %56)
  br label %58

58:                                               ; preds = %53, %19, %11
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @amd_iommu_v2_supported(...) #1

declare dso_local i32 @device_id(%struct.pci_dev*) #1

declare dso_local %struct.device_state* @get_device_state(i32) #1

declare dso_local %struct.pasid_state* @get_pasid_state(%struct.device_state*, i32) #1

declare dso_local i32 @put_pasid_state(%struct.pasid_state*) #1

declare dso_local i32 @clear_pasid_state(%struct.device_state*, i32) #1

declare dso_local i32 @mmu_notifier_unregister(i32*, i32) #1

declare dso_local i32 @put_pasid_state_wait(%struct.pasid_state*) #1

declare dso_local i32 @put_device_state(%struct.device_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
