; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_strtab_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_strtab_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, %struct.arm_smmu_strtab_cfg }
%struct.arm_smmu_strtab_cfg = type { i32, i32, i8*, i32 }

@STRTAB_STE_DWORDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to allocate linear stream table (%u bytes)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_FMT = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_FMT_LINEAR = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_LOG2SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_init_strtab_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_init_strtab_linear(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arm_smmu_strtab_cfg*, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %8 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %9 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %8, i32 0, i32 2
  store %struct.arm_smmu_strtab_cfg* %9, %struct.arm_smmu_strtab_cfg** %7, align 8
  %10 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  %14 = load i32, i32* @STRTAB_STE_DWORDS, align 4
  %15 = shl i32 %14, 3
  %16 = mul nsw i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %7, align 8
  %22 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %21, i32 0, i32 3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @dmam_alloc_coherent(i32 %19, i32 %20, i32* %22, i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %1
  %30 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %31 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %1
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %7, align 8
  %40 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %42 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %7, align 8
  %46 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @STRTAB_BASE_CFG_FMT, align 4
  %48 = load i32, i32* @STRTAB_BASE_CFG_FMT_LINEAR, align 4
  %49 = call i32 @FIELD_PREP(i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @STRTAB_BASE_CFG_LOG2SIZE, align 4
  %51 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %52 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @FIELD_PREP(i32 %50, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %7, align 8
  %62 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @arm_smmu_init_bypass_stes(i8* %60, i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %37, %29
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @arm_smmu_init_bypass_stes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
