; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_vmid_nosync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_tlb_inv_vmid_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_domain = type { %struct.TYPE_2__, %struct.arm_smmu_device* }
%struct.TYPE_2__ = type { i32 }
%struct.arm_smmu_device = type { i32 }

@ARM_SMMU_FEAT_COHERENT_WALK = common dso_local global i32 0, align 4
@ARM_SMMU_GR0_TLBIVMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i8*)* @arm_smmu_tlb_inv_vmid_nosync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_tlb_inv_vmid_nosync(i64 %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.arm_smmu_domain*, align 8
  %12 = alloca %struct.arm_smmu_device*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.arm_smmu_domain*
  store %struct.arm_smmu_domain* %14, %struct.arm_smmu_domain** %11, align 8
  %15 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %15, i32 0, i32 1
  %17 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %16, align 8
  store %struct.arm_smmu_device* %17, %struct.arm_smmu_device** %12, align 8
  %18 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %19 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ARM_SMMU_FEAT_COHERENT_WALK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = call i32 (...) @wmb()
  br label %26

26:                                               ; preds = %24, %5
  %27 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %12, align 8
  %28 = load i32, i32* @ARM_SMMU_GR0_TLBIVMID, align 4
  %29 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  %30 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %27, i32 %28, i32 %32)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
