; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_write_smr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_write_smr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.arm_smmu_smr* }
%struct.arm_smmu_smr = type { i64, i32, i32 }

@SMR_ID = common dso_local global i32 0, align 4
@SMR_MASK = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_EXIDS = common dso_local global i32 0, align 4
@SMR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*, i32)* @arm_smmu_write_smr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_write_smr(%struct.arm_smmu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smmu_smr*, align 8
  %6 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %7, i32 0, i32 1
  %9 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %9, i64 %11
  store %struct.arm_smmu_smr* %12, %struct.arm_smmu_smr** %5, align 8
  %13 = load i32, i32* @SMR_ID, align 4
  %14 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %5, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FIELD_PREP(i32 %13, i32 %16)
  %18 = load i32, i32* @SMR_MASK, align 4
  %19 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %5, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @FIELD_PREP(i32 %18, i32 %21)
  %23 = or i32 %17, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %25 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ARM_SMMU_FEAT_EXIDS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load %struct.arm_smmu_smr*, %struct.arm_smmu_smr** %5, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_smr, %struct.arm_smmu_smr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @SMR_VALID, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30, %2
  %40 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ARM_SMMU_GR0_SMR(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %40, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @ARM_SMMU_GR0_SMR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
