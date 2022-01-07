; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_group = type { i32 }
%struct.viommu_endpoint = type { i32, %struct.viommu_dev*, %struct.device* }
%struct.viommu_dev = type { i32, i64 }
%struct.iommu_fwspec = type { %struct.viommu_endpoint*, i32, i32* }

@viommu_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @viommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca %struct.viommu_endpoint*, align 8
  %7 = alloca %struct.viommu_dev*, align 8
  %8 = alloca %struct.iommu_fwspec*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.viommu_dev* null, %struct.viommu_dev** %7, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %9)
  store %struct.iommu_fwspec* %10, %struct.iommu_fwspec** %8, align 8
  %11 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %12 = icmp ne %struct.iommu_fwspec* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %15 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, @viommu_ops
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %99

21:                                               ; preds = %13
  %22 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %23 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.viommu_dev* @viommu_get_by_fwnode(i32 %24)
  store %struct.viommu_dev* %25, %struct.viommu_dev** %7, align 8
  %26 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %27 = icmp ne %struct.viommu_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %21
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.viommu_endpoint* @kzalloc(i32 24, i32 %32)
  store %struct.viommu_endpoint* %33, %struct.viommu_endpoint** %6, align 8
  %34 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %35 = icmp ne %struct.viommu_endpoint* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %99

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %42 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %41, i32 0, i32 2
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %44 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %45 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %44, i32 0, i32 1
  store %struct.viommu_dev* %43, %struct.viommu_dev** %45, align 8
  %46 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %47 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %46, i32 0, i32 0
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %50 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %51 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %50, i32 0, i32 0
  store %struct.viommu_endpoint* %49, %struct.viommu_endpoint** %51, align 8
  %52 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %53 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %39
  %57 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @viommu_probe_endpoint(%struct.viommu_dev* %57, %struct.device* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %91

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %66 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %65, i32 0, i32 0
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = call i32 @iommu_device_link(i32* %66, %struct.device* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %91

72:                                               ; preds = %64
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %73)
  store %struct.iommu_group* %74, %struct.iommu_group** %5, align 8
  %75 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %76 = call i64 @IS_ERR(%struct.iommu_group* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %80 = call i32 @PTR_ERR(%struct.iommu_group* %79)
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %72
  %82 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %83 = call i32 @iommu_group_put(%struct.iommu_group* %82)
  %84 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %85 = call i32 @PTR_ERR_OR_ZERO(%struct.iommu_group* %84)
  store i32 %85, i32* %2, align 4
  br label %99

86:                                               ; preds = %78
  %87 = load %struct.viommu_dev*, %struct.viommu_dev** %7, align 8
  %88 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %87, i32 0, i32 0
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = call i32 @iommu_device_unlink(i32* %88, %struct.device* %89)
  br label %91

91:                                               ; preds = %86, %71, %62
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %94 = getelementptr inbounds %struct.viommu_endpoint, %struct.viommu_endpoint* %93, i32 0, i32 0
  %95 = call i32 @viommu_put_resv_regions(%struct.device* %92, i32* %94)
  %96 = load %struct.viommu_endpoint*, %struct.viommu_endpoint** %6, align 8
  %97 = call i32 @kfree(%struct.viommu_endpoint* %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %91, %81, %36, %28, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.viommu_dev* @viommu_get_by_fwnode(i32) #1

declare dso_local %struct.viommu_endpoint* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @viommu_probe_endpoint(%struct.viommu_dev*, %struct.device*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.iommu_group*) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @viommu_put_resv_regions(%struct.device*, i32*) #1

declare dso_local i32 @kfree(%struct.viommu_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
