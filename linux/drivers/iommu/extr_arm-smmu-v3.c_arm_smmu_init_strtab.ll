; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_strtab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_strtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ARM_SMMU_FEAT_2_LVL_STRTAB = common dso_local global i32 0, align 4
@STRTAB_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@STRTAB_BASE_RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_init_strtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_init_strtab(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %6 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %7 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ARM_SMMU_FEAT_2_LVL_STRTAB, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %14 = call i32 @arm_smmu_init_strtab_2lvl(%struct.arm_smmu_device* %13)
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %17 = call i32 @arm_smmu_init_strtab_linear(%struct.arm_smmu_device* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %18
  %24 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %25 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STRTAB_BASE_ADDR_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @STRTAB_BASE_RA, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %38 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_bit(i32 0, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %23, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @arm_smmu_init_strtab_2lvl(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_init_strtab_linear(%struct.arm_smmu_device*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
