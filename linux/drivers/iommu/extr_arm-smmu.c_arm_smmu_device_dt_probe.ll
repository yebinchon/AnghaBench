; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_dt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_dt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arm_smmu_device = type { i32, i32, i32, i32 }
%struct.arm_smmu_match_data = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"#global-interrupts\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"missing #global-interrupts property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mmu-masters\00", align 1
@using_generic_binding = common dso_local global i32 0, align 4
@using_legacy_binding = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"deprecated \22mmu-masters\22 DT property in use; DMA API support unavailable\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"not probing due to mismatched DT properties\0A\00", align 1
@ARM_SMMU_FEAT_COHERENT_WALK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.arm_smmu_device*)* @arm_smmu_device_dt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_device_dt_probe(%struct.platform_device* %0, %struct.arm_smmu_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca %struct.arm_smmu_match_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.arm_smmu_device* %1, %struct.arm_smmu_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %14, i32 0, i32 3
  %16 = call i64 @of_property_read_u32(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call %struct.arm_smmu_match_data* @of_device_get_match_data(%struct.device* %24)
  store %struct.arm_smmu_match_data* %25, %struct.arm_smmu_match_data** %6, align 8
  %26 = load %struct.arm_smmu_match_data*, %struct.arm_smmu_match_data** %6, align 8
  %27 = getelementptr inbounds %struct.arm_smmu_match_data, %struct.arm_smmu_match_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %30 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.arm_smmu_match_data*, %struct.arm_smmu_match_data** %6, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_match_data, %struct.arm_smmu_match_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @of_find_property(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %23
  %43 = load i32, i32* @using_generic_binding, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @using_legacy_binding, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i32 @pr_notice(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  store i32 1, i32* @using_legacy_binding, align 4
  br label %64

51:                                               ; preds = %42, %23
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @using_legacy_binding, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 1, i32* @using_generic_binding, align 4
  br label %63

58:                                               ; preds = %54, %51
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @of_dma_is_coherent(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @ARM_SMMU_FEAT_COHERENT_WALK, align 4
  %72 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %73 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %58, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.arm_smmu_match_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i64 @of_dma_is_coherent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
