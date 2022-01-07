; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.mtk_iommu_domain = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.mtk_iommu_data = type { i64, %struct.mtk_iommu_domain* }
%struct.TYPE_6__ = type { %struct.mtk_iommu_data* }

@ENODEV = common dso_local global i32 0, align 4
@MMU_PT_ADDR_MASK = common dso_local global i32 0, align 4
@REG_MMU_PT_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @mtk_iommu_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_attach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtk_iommu_domain*, align 8
  %7 = alloca %struct.mtk_iommu_data*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %9 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %8)
  store %struct.mtk_iommu_domain* %9, %struct.mtk_iommu_domain** %6, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.TYPE_6__* @dev_iommu_fwspec_get(%struct.device* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %12, align 8
  store %struct.mtk_iommu_data* %13, %struct.mtk_iommu_data** %7, align 8
  %14 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %15 = icmp ne %struct.mtk_iommu_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %21 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %20, i32 0, i32 1
  %22 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %21, align 8
  %23 = icmp ne %struct.mtk_iommu_domain* %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %6, align 8
  %26 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %27 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %26, i32 0, i32 1
  store %struct.mtk_iommu_domain* %25, %struct.mtk_iommu_domain** %27, align 8
  %28 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MMU_PT_ADDR_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %38 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REG_MMU_PT_BASE_ADDR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %24, %19
  %44 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %7, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @mtk_iommu_config(%struct.mtk_iommu_data* %44, %struct.device* %45, i32 1)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain*) #1

declare dso_local %struct.TYPE_6__* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtk_iommu_config(%struct.mtk_iommu_data*, %struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
