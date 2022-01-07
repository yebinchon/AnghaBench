; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_phandle_args = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iommu_fwspec = type { %struct.qcom_iommu_dev* }
%struct.qcom_iommu_dev = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"incorrect number of iommu params found for %s (found %d, expected 1)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_phandle_args*)* @qcom_iommu_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iommu_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.iommu_fwspec*, align 8
  %7 = alloca %struct.qcom_iommu_dev*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %10)
  store %struct.iommu_fwspec* %11, %struct.iommu_fwspec** %6, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %93

34:                                               ; preds = %2
  %35 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %36 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call %struct.platform_device* @of_find_device_by_node(%struct.TYPE_2__* %37)
  store %struct.platform_device* %38, %struct.platform_device** %8, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %40 = icmp ne %struct.platform_device* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %93

48:                                               ; preds = %34
  %49 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %50 = call %struct.qcom_iommu_dev* @platform_get_drvdata(%struct.platform_device* %49)
  store %struct.qcom_iommu_dev* %50, %struct.qcom_iommu_dev** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ult i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %7, align 8
  %59 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ugt i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %48
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %93

68:                                               ; preds = %56
  %69 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %70 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %69, i32 0, i32 0
  %71 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %70, align 8
  %72 = icmp ne %struct.qcom_iommu_dev* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %7, align 8
  %75 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %76 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %75, i32 0, i32 0
  store %struct.qcom_iommu_dev* %74, %struct.qcom_iommu_dev** %76, align 8
  br label %90

77:                                               ; preds = %68
  %78 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %7, align 8
  %79 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %80 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %79, i32 0, i32 0
  %81 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %80, align 8
  %82 = icmp ne %struct.qcom_iommu_dev* %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @WARN_ON(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %93

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %73
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @iommu_fwspec_add_ids(%struct.device* %91, i32* %9, i32 1)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %86, %65, %45, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.TYPE_2__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.qcom_iommu_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @iommu_fwspec_add_ids(%struct.device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
