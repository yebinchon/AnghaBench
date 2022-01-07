; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_mn_invalidate_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_mn_invalidate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32 }
%struct.pasid_state = type { i32, %struct.device_state* }
%struct.device_state = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_notifier*, %struct.mm_struct*, i64, i64)* @mn_invalidate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn_invalidate_range(%struct.mmu_notifier* %0, %struct.mm_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mmu_notifier*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pasid_state*, align 8
  %10 = alloca %struct.device_state*, align 8
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.mmu_notifier*, %struct.mmu_notifier** %5, align 8
  %12 = call %struct.pasid_state* @mn_to_state(%struct.mmu_notifier* %11)
  store %struct.pasid_state* %12, %struct.pasid_state** %9, align 8
  %13 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %14 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %13, i32 0, i32 1
  %15 = load %struct.device_state*, %struct.device_state** %14, align 8
  store %struct.device_state* %15, %struct.device_state** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 1
  %19 = xor i64 %16, %18
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.device_state*, %struct.device_state** %10, align 8
  %24 = getelementptr inbounds %struct.device_state, %struct.device_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %27 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @amd_iommu_flush_page(i32 %25, i32 %28, i64 %29)
  br label %39

31:                                               ; preds = %4
  %32 = load %struct.device_state*, %struct.device_state** %10, align 8
  %33 = getelementptr inbounds %struct.device_state, %struct.device_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %36 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @amd_iommu_flush_tlb(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %22
  ret void
}

declare dso_local %struct.pasid_state* @mn_to_state(%struct.mmu_notifier*) #1

declare dso_local i32 @amd_iommu_flush_page(i32, i32, i64) #1

declare dso_local i32 @amd_iommu_flush_tlb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
