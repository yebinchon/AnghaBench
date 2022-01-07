; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.device = type { i32* }
%struct.iommu_dev_data = type { i32, i64 }
%struct.iommu_domain = type { i64 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to initialize - trying to proceed anyway\0A\00", align 1
@IOMMU_DOMAIN_IDENTITY = common dso_local global i64 0, align 8
@amd_iommu_dma_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @amd_iommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_iommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_dev_data*, align 8
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca %struct.amd_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @check_device(%struct.device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.iommu_dev_data* @get_dev_data(%struct.device* %13)
  %15 = icmp ne %struct.iommu_dev_data* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %82

17:                                               ; preds = %12
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @get_device_id(%struct.device* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %17
  %25 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %25, i64 %27
  %29 = load %struct.amd_iommu*, %struct.amd_iommu** %28, align 8
  store %struct.amd_iommu* %29, %struct.amd_iommu** %6, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @iommu_init_device(%struct.device* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ENOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @iommu_ignore_device(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %79

47:                                               ; preds = %24
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = call i32 @init_iommu_group(%struct.device* %48)
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = call %struct.iommu_dev_data* @get_dev_data(%struct.device* %50)
  store %struct.iommu_dev_data* %51, %struct.iommu_dev_data** %4, align 8
  %52 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %53 = icmp ne %struct.iommu_dev_data* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %58 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @iommu_request_dm_for_dev(%struct.device* %62)
  br label %64

64:                                               ; preds = %61, %47
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %65)
  store %struct.iommu_domain* %66, %struct.iommu_domain** %5, align 8
  %67 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %68 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IOMMU_DOMAIN_IDENTITY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %4, align 8
  %74 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %78

75:                                               ; preds = %64
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  store i32* @amd_iommu_dma_ops, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %42
  %80 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %81 = call i32 @iommu_completion_wait(%struct.amd_iommu* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %22, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @check_device(%struct.device*) #1

declare dso_local %struct.iommu_dev_data* @get_dev_data(%struct.device*) #1

declare dso_local i32 @get_device_id(%struct.device*) #1

declare dso_local i32 @iommu_init_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iommu_ignore_device(%struct.device*) #1

declare dso_local i32 @init_iommu_group(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iommu_request_dm_for_dev(%struct.device*) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
