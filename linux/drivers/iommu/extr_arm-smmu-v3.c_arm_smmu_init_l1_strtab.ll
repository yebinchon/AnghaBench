; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_l1_strtab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_init_l1_strtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, %struct.arm_smmu_strtab_cfg }
%struct.arm_smmu_strtab_cfg = type { i32, i32*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to allocate l1 stream table desc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@STRTAB_L1_DESC_DWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_smmu_device*)* @arm_smmu_init_l1_strtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_init_l1_strtab(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_smmu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smmu_strtab_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %3, align 8
  %8 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %9 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %8, i32 0, i32 1
  store %struct.arm_smmu_strtab_cfg* %9, %struct.arm_smmu_strtab_cfg** %5, align 8
  %10 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %16 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @devm_kzalloc(i32 %21, i64 %22, i32 %23)
  %25 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %1
  %32 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %3, align 8
  %33 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %63

38:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.arm_smmu_strtab_cfg*, %struct.arm_smmu_strtab_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.arm_smmu_strtab_cfg, %struct.arm_smmu_strtab_cfg* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @arm_smmu_write_strtab_l1_desc(i8* %46, i32* %52)
  %54 = load i32, i32* @STRTAB_L1_DESC_DWORDS, align 4
  %55 = shl i32 %54, 3
  %56 = load i8*, i8** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %39

62:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @arm_smmu_write_strtab_l1_desc(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
