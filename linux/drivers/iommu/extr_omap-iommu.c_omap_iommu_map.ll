; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.omap_iommu_domain = type { i32, %struct.omap_iommu_device*, %struct.device* }
%struct.omap_iommu_device = type { %struct.omap_iommu* }
%struct.omap_iommu = type { i32 }
%struct.device = type { i32 }
%struct.iotlb_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid size to map: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"mapping da 0x%lx to pa %pa size 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"omap_iopgtable_store_entry failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i32, i64, i32)* @omap_iommu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_iommu_map(%struct.iommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.omap_iommu_domain*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.omap_iommu_device*, align 8
  %15 = alloca %struct.omap_iommu*, align 8
  %16 = alloca %struct.iotlb_entry, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %21 = call %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain* %20)
  store %struct.omap_iommu_domain* %21, %struct.omap_iommu_domain** %12, align 8
  %22 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %12, align 8
  %23 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %13, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @bytes_to_iopgsz(i64 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.device*, %struct.device** %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %95

38:                                               ; preds = %5
  %39 = load %struct.device*, %struct.device** %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32* %9, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @iotlb_init_entry(%struct.iotlb_entry* %16, i64 %43, i32 %44, i32 %45)
  %47 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %12, align 8
  %48 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %47, i32 0, i32 1
  %49 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %48, align 8
  store %struct.omap_iommu_device* %49, %struct.omap_iommu_device** %14, align 8
  store i32 0, i32* %19, align 4
  br label %50

50:                                               ; preds = %69, %38
  %51 = load i32, i32* %19, align 4
  %52 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %12, align 8
  %53 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %14, align 8
  %58 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %57, i32 0, i32 0
  %59 = load %struct.omap_iommu*, %struct.omap_iommu** %58, align 8
  store %struct.omap_iommu* %59, %struct.omap_iommu** %15, align 8
  %60 = load %struct.omap_iommu*, %struct.omap_iommu** %15, align 8
  %61 = call i64 @omap_iopgtable_store_entry(%struct.omap_iommu* %60, %struct.iotlb_entry* %16)
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %18, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.device*, %struct.device** %13, align 8
  %66 = load i64, i64* %18, align 8
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  br label %74

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  %72 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %14, align 8
  %73 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %72, i32 1
  store %struct.omap_iommu_device* %73, %struct.omap_iommu_device** %14, align 8
  br label %50

74:                                               ; preds = %64, %50
  %75 = load i64, i64* %18, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %82, %77
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %19, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %14, align 8
  %84 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %83, i32 -1
  store %struct.omap_iommu_device* %84, %struct.omap_iommu_device** %14, align 8
  %85 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %14, align 8
  %86 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %85, i32 0, i32 0
  %87 = load %struct.omap_iommu*, %struct.omap_iommu** %86, align 8
  store %struct.omap_iommu* %87, %struct.omap_iommu** %15, align 8
  %88 = load %struct.omap_iommu*, %struct.omap_iommu** %15, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @iopgtable_clear_entry(%struct.omap_iommu* %88, i64 %89)
  br label %78

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i64, i64* %18, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %32
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.omap_iommu_domain* @to_omap_domain(%struct.iommu_domain*) #1

declare dso_local i32 @bytes_to_iopgsz(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32*, i64) #1

declare dso_local i32 @iotlb_init_entry(%struct.iotlb_entry*, i64, i32, i32) #1

declare dso_local i64 @omap_iopgtable_store_entry(%struct.omap_iommu*, %struct.iotlb_entry*) #1

declare dso_local i32 @iopgtable_clear_entry(%struct.omap_iommu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
