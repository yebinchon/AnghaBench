; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_strtab_2lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_strtab_2lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, %struct.arm_smmu_strtab_cfg }
%struct.arm_smmu_strtab_cfg = type { i32, i32, i8*, i32 }

@STRTAB_L1_SZ_SHIFT = common dso_local global i32 0, align 4
@STRTAB_L1_DESC_DWORDS = common dso_local global i32 0, align 4
@STRTAB_SPLIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"2-level strtab only covers %u/%u bits of SID\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate l1 stream table (%u bytes)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_FMT = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_FMT_2LVL = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_LOG2SIZE = common dso_local global i32 0, align 4
@STRTAB_BASE_CFG_SPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_init_strtab_2lvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_init_strtab_2lvl(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smmu_strtab_cfg*, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %9 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %10 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %9, i32 0, i32 2
  store %struct.arm_smmu_strtab_cfg* %10, %struct.arm_smmu_strtab_cfg** %8, align 8
  %11 = load i32, i32* @STRTAB_L1_SZ_SHIFT, align 4
  %12 = load i32, i32* @STRTAB_L1_DESC_DWORDS, align 4
  %13 = call i32 @ilog2(i32 %12)
  %14 = add nsw i32 %13, 3
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @STRTAB_SPLIT, align 4
  %21 = sub nsw i32 %19, %20
  %22 = call i32 @min(i32 %16, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %8, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @STRTAB_SPLIT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %37 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %41 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %1
  %45 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @STRTAB_L1_DESC_DWORDS, align 4
  %49 = shl i32 %48, 3
  %50 = mul nsw i32 %47, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %52 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %8, align 8
  %56 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %55, i32 0, i32 3
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load i32, i32* @__GFP_ZERO, align 4
  %59 = or i32 %57, %58
  %60 = call i8* @dmam_alloc_coherent(i32 %53, i32 %54, i32* %56, i32 %59)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %44
  %64 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %65 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %93

71:                                               ; preds = %44
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %8, align 8
  %74 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @STRTAB_BASE_CFG_FMT, align 4
  %76 = load i32, i32* @STRTAB_BASE_CFG_FMT_2LVL, align 4
  %77 = call i32 @FIELD_PREP(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @STRTAB_BASE_CFG_LOG2SIZE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @FIELD_PREP(i32 %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @STRTAB_BASE_CFG_SPLIT, align 4
  %84 = load i32, i32* @STRTAB_SPLIT, align 4
  %85 = call i32 @FIELD_PREP(i32 %83, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %8, align 8
  %90 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %92 = call i32 @arm_smmu_init_l1_strtab(%struct.arm_smmu_device* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %71, %63
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i8* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @arm_smmu_init_l1_strtab(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
