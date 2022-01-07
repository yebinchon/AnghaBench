; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.mtk_iommu_domain = type { i32 }
%struct.mtk_iommu_data = type { %struct.mtk_iommu_domain* }
%struct.TYPE_2__ = type { %struct.mtk_iommu_data* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @mtk_iommu_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_attach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtk_iommu_domain*, align 8
  %7 = alloca %struct.mtk_iommu_data*, align 8
  %8 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %10 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %9)
  store %struct.mtk_iommu_domain* %10, %struct.mtk_iommu_domain** %6, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.TYPE_2__* @dev_iommu_fwspec_get(%struct.device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %13, align 8
  store %struct.mtk_iommu_data* %14, %struct.mtk_iommu_data** %7, align 8
  %15 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %16 = icmp ne %struct.mtk_iommu_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %22 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %21, i32 0, i32 0
  %23 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %22, align 8
  %24 = icmp ne %struct.mtk_iommu_domain* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %6, align 8
  %27 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %28 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %27, i32 0, i32 0
  store %struct.mtk_iommu_domain* %26, %struct.mtk_iommu_domain** %28, align 8
  %29 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %30 = call i32 @mtk_iommu_domain_finalise(%struct.mtk_iommu_data* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %34, i32 0, i32 0
  store %struct.mtk_iommu_domain* null, %struct.mtk_iommu_domain** %35, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @mtk_iommu_config(%struct.mtk_iommu_data* %39, %struct.device* %40, i32 1)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %33, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain*) #1

declare dso_local %struct.TYPE_2__* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @mtk_iommu_domain_finalise(%struct.mtk_iommu_data*) #1

declare dso_local i32 @mtk_iommu_config(%struct.mtk_iommu_data*, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
