; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_test_smr_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_test_smr_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i8*, i8*, i32 }

@SMR_ID = common dso_local global i32 0, align 4
@SMR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*)* @arm_smmu_test_smr_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_test_smr_masks(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca %struct.arm_smmu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %2, align 8
  %4 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %5 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load i32, i32* @SMR_ID, align 4
  %11 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %12 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @FIELD_PREP(i32 %10, i8* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %16 = call i32 @ARM_SMMU_GR0_SMR(i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %15, i32 %16, i32 %17)
  %19 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %20 = call i32 @ARM_SMMU_GR0_SMR(i32 0)
  %21 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @SMR_ID, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @FIELD_GET(i32 %22, i32 %23)
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @SMR_MASK, align 4
  %28 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %29 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @FIELD_PREP(i32 %27, i8* %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %33 = call i32 @ARM_SMMU_GR0_SMR(i32 0)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %32, i32 %33, i32 %34)
  %36 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %37 = call i32 @ARM_SMMU_GR0_SMR(i32 0)
  %38 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @SMR_MASK, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @FIELD_GET(i32 %39, i32 %40)
  %42 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %43 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i8*) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @ARM_SMMU_GR0_SMR(i32) #1

declare dso_local i32 @arm_smmu_gr0_read(%struct.arm_smmu_device*, i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
