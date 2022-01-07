; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_fwspec = type { %struct.mtk_iommu_data*, i32* }
%struct.mtk_iommu_data = type { i32 }
%struct.iommu_group = type { i32 }

@mtk_iommu_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mtk_iommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_fwspec*, align 8
  %5 = alloca %struct.mtk_iommu_data*, align 8
  %6 = alloca %struct.iommu_group*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %7)
  store %struct.iommu_fwspec* %8, %struct.iommu_fwspec** %4, align 8
  %9 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %10 = icmp ne %struct.iommu_fwspec* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %13 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @mtk_iommu_ops
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %11
  %20 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %4, align 8
  %21 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %20, i32 0, i32 0
  %22 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %21, align 8
  store %struct.mtk_iommu_data* %22, %struct.mtk_iommu_data** %5, align 8
  %23 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @iommu_device_link(i32* %24, %struct.device* %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %27)
  store %struct.iommu_group* %28, %struct.iommu_group** %6, align 8
  %29 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %30 = call i64 @IS_ERR(%struct.iommu_group* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.iommu_group* %33)
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %19
  %36 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %37 = call i32 @iommu_group_put(%struct.iommu_group* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %32, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
