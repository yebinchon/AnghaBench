; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_get_step_for_sid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_get_step_for_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.arm_smmu_strtab_cfg }
%struct.arm_smmu_strtab_cfg = type { i32*, %struct.arm_smmu_strtab_l1_desc* }
%struct.arm_smmu_strtab_l1_desc = type { i32* }

@ARM_SMMU_FEAT_2_LVL_STRTAB = common dso_local global i32 0, align 4
@STRTAB_SPLIT = common dso_local global i32 0, align 4
@STRTAB_L1_DESC_DWORDS = common dso_local global i32 0, align 4
@STRTAB_STE_DWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.arm_smmu_device*, i32)* @arm_smmu_get_step_for_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arm_smmu_get_step_for_sid(%struct.arm_smmu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.arm_smmu_strtab_cfg*, align 8
  %7 = alloca %struct.arm_smmu_strtab_l1_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %10 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %9, i32 0, i32 1
  store %struct.arm_smmu_strtab_cfg* %10, %struct.arm_smmu_strtab_cfg** %6, align 8
  %11 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %12 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ARM_SMMU_FEAT_2_LVL_STRTAB, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @STRTAB_SPLIT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @STRTAB_L1_DESC_DWORDS, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %23, i32 0, i32 1
  %25 = load %struct.arm_smmu_strtab_l1_desc*, %struct.arm_smmu_strtab_l1_desc** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.arm_smmu_strtab_l1_desc, %struct.arm_smmu_strtab_l1_desc* %25, i64 %27
  store %struct.arm_smmu_strtab_l1_desc* %28, %struct.arm_smmu_strtab_l1_desc** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STRTAB_SPLIT, align 4
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %29, %32
  %34 = load i32, i32* @STRTAB_STE_DWORDS, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.arm_smmu_strtab_l1_desc*, %struct.arm_smmu_strtab_l1_desc** %7, align 8
  %37 = getelementptr inbounds %struct.arm_smmu_strtab_l1_desc, %struct.arm_smmu_strtab_l1_desc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %5, align 8
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %6, align 8
  %44 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @STRTAB_STE_DWORDS, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %42, %17
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
