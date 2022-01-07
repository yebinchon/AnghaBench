; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_dra7_get_dsp_system_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_dra7_get_dsp_system_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.omap_iommu = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"ti,dra7-dsp-iommu\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ti,syscon-mmuconfig\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ti,syscon-mmuconfig property is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"couldn't get the IOMMU instance id within subsystem\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid IOMMU instance id\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.omap_iommu*)* @omap_iommu_dra7_get_dsp_system_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_iommu_dra7_get_dsp_system_cfg(%struct.platform_device* %0, %struct.omap_iommu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.omap_iommu*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.omap_iommu* %1, %struct.omap_iommu** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i32 @of_device_is_compatible(%struct.device_node* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_property_read_bool(%struct.device_node* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %16
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.omap_iommu*, %struct.omap_iommu** %5, align 8
  %30 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.omap_iommu*, %struct.omap_iommu** %5, align 8
  %32 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.omap_iommu*, %struct.omap_iommu** %5, align 8
  %38 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %26
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = load %struct.omap_iommu*, %struct.omap_iommu** %5, align 8
  %45 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %44, i32 0, i32 0
  %46 = call i64 @of_property_read_u32_index(%struct.device_node* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_2__* %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %42
  %55 = load %struct.omap_iommu*, %struct.omap_iommu** %5, align 8
  %56 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.omap_iommu*, %struct.omap_iommu** %5, align 8
  %61 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(%struct.TYPE_2__* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %59, %54
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %64, %48, %36, %20, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
