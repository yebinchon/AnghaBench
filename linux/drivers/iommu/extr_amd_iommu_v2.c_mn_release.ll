; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_mn_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_mn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32 }
%struct.pasid_state = type { i32, i32, %struct.device_state* }
%struct.device_state = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_notifier*, %struct.mm_struct*)* @mn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn_release(%struct.mmu_notifier* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mmu_notifier*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.pasid_state*, align 8
  %6 = alloca %struct.device_state*, align 8
  %7 = alloca i32, align 4
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %10 = call %struct.pasid_state* @mn_to_state(%struct.mmu_notifier* %9)
  store %struct.pasid_state* %10, %struct.pasid_state** %5, align 8
  %11 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %12 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %11, i32 0, i32 2
  %13 = load %struct.device_state*, %struct.device_state** %12, align 8
  store %struct.device_state* %13, %struct.device_state** %6, align 8
  %14 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %15 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.device_state*, %struct.device_state** %6, align 8
  %24 = getelementptr inbounds %struct.device_state, %struct.device_state* %23, i32 0, i32 1
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = icmp ne i32 (i32, i32)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.device_state*, %struct.device_state** %6, align 8
  %29 = getelementptr inbounds %struct.device_state, %struct.device_state* %28, i32 0, i32 1
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load %struct.device_state*, %struct.device_state** %6, align 8
  %32 = getelementptr inbounds %struct.device_state, %struct.device_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %35 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %30(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %27, %22, %2
  %39 = load %struct.pasid_state*, %struct.pasid_state** %5, align 8
  %40 = call i32 @unbind_pasid(%struct.pasid_state* %39)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.pasid_state* @mn_to_state(%struct.mmu_notifier*) #1

declare dso_local i32 @unbind_pasid(%struct.pasid_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
