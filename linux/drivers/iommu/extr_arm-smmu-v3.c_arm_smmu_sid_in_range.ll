; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_sid_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_sid_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ARM_SMMU_FEAT_2_LVL_STRTAB = common dso_local global i32 0, align 4
@STRTAB_SPLIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*, i64)* @arm_smmu_sid_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_sid_in_range(%struct.arm_smmu_device* %0, i64 %1) #0 {
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %7 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ARM_SMMU_FEAT_2_LVL_STRTAB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* @STRTAB_SPLIT, align 8
  %18 = shl i64 1, %17
  %19 = load i64, i64* %5, align 8
  %20 = mul i64 %19, %18
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ult i64 %22, %23
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
