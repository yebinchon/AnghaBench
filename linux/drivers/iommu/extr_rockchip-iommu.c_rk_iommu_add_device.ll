; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rk_iommudata* }
%struct.rk_iommudata = type { i32 }
%struct.iommu_group = type { i32 }
%struct.rk_iommu = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rk_iommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_group*, align 8
  %5 = alloca %struct.rk_iommu*, align 8
  %6 = alloca %struct.rk_iommudata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rk_iommudata*, %struct.rk_iommudata** %9, align 8
  store %struct.rk_iommudata* %10, %struct.rk_iommudata** %6, align 8
  %11 = load %struct.rk_iommudata*, %struct.rk_iommudata** %6, align 8
  %12 = icmp ne %struct.rk_iommudata* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call %struct.rk_iommu* @rk_iommu_from_dev(%struct.device* %17)
  store %struct.rk_iommu* %18, %struct.rk_iommu** %5, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %19)
  store %struct.iommu_group* %20, %struct.iommu_group** %4, align 8
  %21 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %22 = call i64 @IS_ERR(%struct.iommu_group* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.iommu_group* %25)
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %16
  %28 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %29 = call i32 @iommu_group_put(%struct.iommu_group* %28)
  %30 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %31 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %30, i32 0, i32 1
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @iommu_device_link(i32* %31, %struct.device* %32)
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load %struct.rk_iommu*, %struct.rk_iommu** %5, align 8
  %36 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %39 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @device_link_add(%struct.device* %34, i32 %37, i32 %40)
  %42 = load %struct.rk_iommudata*, %struct.rk_iommudata** %6, align 8
  %43 = getelementptr inbounds %struct.rk_iommudata, %struct.rk_iommudata* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %24, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.rk_iommu* @rk_iommu_from_dev(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

declare dso_local i32 @device_link_add(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
