; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_tegra_gart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_tegra_gart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gart_device = type { i32, i32, i32, i32, i64, i32, i64, %struct.device* }
%struct.device = type { i32 }
%struct.tegra_mc = type { i64 }
%struct.resource = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GART_PAGE_SHIFT = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Memory aperture resource unavailable\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gart_handle = common dso_local global %struct.gart_device* null, align 8
@GART_REG_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"gart\00", align 1
@gart_iommu_ops = common dso_local global i32 0, align 4
@GART_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gart_device* @tegra_gart_probe(%struct.device* %0, %struct.tegra_mc* %1) #0 {
  %3 = alloca %struct.gart_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_mc*, align 8
  %6 = alloca %struct.gart_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tegra_mc* %1, %struct.tegra_mc** %5, align 8
  %9 = load i64, i64* @PAGE_SHIFT, align 8
  %10 = load i64, i64* @GART_PAGE_SHIFT, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @to_platform_device(%struct.device* %14)
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(i32 %15, i32 %16, i32 1)
  store %struct.resource* %17, %struct.resource** %7, align 8
  %18 = load %struct.resource*, %struct.resource** %7, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.gart_device* @ERR_PTR(i32 %24)
  store %struct.gart_device* %25, %struct.gart_device** %3, align 8
  br label %122

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.gart_device* @kzalloc(i32 48, i32 %27)
  store %struct.gart_device* %28, %struct.gart_device** %6, align 8
  %29 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %30 = icmp ne %struct.gart_device* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.gart_device* @ERR_PTR(i32 %33)
  store %struct.gart_device* %34, %struct.gart_device** %3, align 8
  br label %122

35:                                               ; preds = %26
  %36 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  store %struct.gart_device* %36, %struct.gart_device** @gart_handle, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %39 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %38, i32 0, i32 7
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GART_REG_BASE, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %46 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  %47 = load %struct.resource*, %struct.resource** %7, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %51 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %57 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %59 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %58, i32 0, i32 3
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %62 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %61, i32 0, i32 2
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %65 = call i32 @do_gart_setup(%struct.gart_device* %64, i32* null)
  %66 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %67 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %66, i32 0, i32 0
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @iommu_device_sysfs_add(i32* %67, %struct.device* %68, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %35
  br label %117

73:                                               ; preds = %35
  %74 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %75 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %74, i32 0, i32 0
  %76 = call i32 @iommu_device_set_ops(i32* %75, i32* @gart_iommu_ops)
  %77 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %78 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %77, i32 0, i32 0
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @iommu_device_set_fwnode(i32* %78, i32 %81)
  %83 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %84 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %83, i32 0, i32 0
  %85 = call i32 @iommu_device_register(i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %113

89:                                               ; preds = %73
  %90 = load %struct.resource*, %struct.resource** %7, align 8
  %91 = call i32 @resource_size(%struct.resource* %90)
  %92 = load i32, i32* @GART_PAGE_SIZE, align 4
  %93 = sdiv i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @vmalloc(i32 %96)
  %98 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %99 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %101 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %89
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %109

107:                                              ; preds = %89
  %108 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  store %struct.gart_device* %108, %struct.gart_device** %3, align 8
  br label %122

109:                                              ; preds = %104
  %110 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %111 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %110, i32 0, i32 0
  %112 = call i32 @iommu_device_unregister(i32* %111)
  br label %113

113:                                              ; preds = %109, %88
  %114 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %115 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %114, i32 0, i32 0
  %116 = call i32 @iommu_device_sysfs_remove(i32* %115)
  br label %117

117:                                              ; preds = %113, %72
  %118 = load %struct.gart_device*, %struct.gart_device** %6, align 8
  %119 = call i32 @kfree(%struct.gart_device* %118)
  %120 = load i32, i32* %8, align 4
  %121 = call %struct.gart_device* @ERR_PTR(i32 %120)
  store %struct.gart_device* %121, %struct.gart_device** %3, align 8
  br label %122

122:                                              ; preds = %117, %107, %31, %20
  %123 = load %struct.gart_device*, %struct.gart_device** %3, align 8
  ret %struct.gart_device* %123
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.gart_device* @ERR_PTR(i32) #1

declare dso_local %struct.gart_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @do_gart_setup(%struct.gart_device*, i32*) #1

declare dso_local i32 @iommu_device_sysfs_add(i32*, %struct.device*, i32*, i8*) #1

declare dso_local i32 @iommu_device_set_ops(i32*, i32*) #1

declare dso_local i32 @iommu_device_set_fwnode(i32*, i32) #1

declare dso_local i32 @iommu_device_register(i32*) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @iommu_device_unregister(i32*) #1

declare dso_local i32 @iommu_device_sysfs_remove(i32*) #1

declare dso_local i32 @kfree(%struct.gart_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
