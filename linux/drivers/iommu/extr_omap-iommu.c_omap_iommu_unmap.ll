; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.omap_iommu_domain = type { i32, %struct.omap_iommu_device*, %struct.device* }
%struct.omap_iommu_device = type { %struct.omap_iommu* }
%struct.omap_iommu = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"unmapping da 0x%lx size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @omap_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap_iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_iotlb_gather*, align 8
  %9 = alloca %struct.omap_iommu_domain*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.omap_iommu_device*, align 8
  %12 = alloca %struct.omap_iommu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %8, align 8
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %17 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %16)
  store %struct.omap_iommu_domain* %17, %struct.omap_iommu_domain** %9, align 8
  %18 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %9, align 8
  %19 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %18, i32 0, i32 2
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %10, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %21 = load %struct.device*, %struct.device** %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %9, align 8
  %26 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %25, i32 0, i32 1
  %27 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %26, align 8
  store %struct.omap_iommu_device* %27, %struct.omap_iommu_device** %11, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %45, %4
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %9, align 8
  %31 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %11, align 8
  %36 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %35, i32 0, i32 0
  %37 = load %struct.omap_iommu*, %struct.omap_iommu** %36, align 8
  store %struct.omap_iommu* %37, %struct.omap_iommu** %12, align 8
  %38 = load %struct.omap_iommu*, %struct.omap_iommu** %12, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @iopgtable_clear_entry(%struct.omap_iommu* %38, i64 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %11, align 8
  %49 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %48, i32 1
  store %struct.omap_iommu_device* %49, %struct.omap_iommu_device** %11, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %14, align 8
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i64 [ 0, %53 ], [ %55, %54 ]
  ret i64 %57
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64) #1

declare dso_local i64 @iopgtable_clear_entry(%struct.omap_iommu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
