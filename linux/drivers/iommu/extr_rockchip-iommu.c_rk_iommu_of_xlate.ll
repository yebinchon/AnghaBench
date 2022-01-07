; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rk_iommudata* }
%struct.rk_iommudata = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.platform_device = type { i32 }

@dma_dev = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_phandle_args*)* @rk_iommu_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.rk_iommudata*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load i32, i32* @dma_dev, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rk_iommudata* @devm_kzalloc(i32 %8, i32 4, i32 %9)
  store %struct.rk_iommudata* %10, %struct.rk_iommudata** %7, align 8
  %11 = load %struct.rk_iommudata*, %struct.rk_iommudata** %7, align 8
  %12 = icmp ne %struct.rk_iommudata* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.platform_device* @of_find_device_by_node(i32 %19)
  store %struct.platform_device* %20, %struct.platform_device** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = call i32 @platform_get_drvdata(%struct.platform_device* %21)
  %23 = load %struct.rk_iommudata*, %struct.rk_iommudata** %7, align 8
  %24 = getelementptr inbounds %struct.rk_iommudata, %struct.rk_iommudata* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rk_iommudata*, %struct.rk_iommudata** %7, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.rk_iommudata* %25, %struct.rk_iommudata** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %30 = call i32 @platform_device_put(%struct.platform_device* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.rk_iommudata* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
