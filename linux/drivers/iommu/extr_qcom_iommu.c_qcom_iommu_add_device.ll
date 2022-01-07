; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_iommu_dev = type { i32, %struct.device* }
%struct.iommu_group = type { i32 }
%struct.device_link = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to create device link between %s and %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @qcom_iommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.qcom_iommu_dev*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca %struct.device_link*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @dev_iommu_fwspec_get(%struct.device* %7)
  %9 = call %struct.qcom_iommu_dev* @to_iommu(i32 %8)
  store %struct.qcom_iommu_dev* %9, %struct.qcom_iommu_dev** %4, align 8
  %10 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %4, align 8
  %11 = icmp ne %struct.qcom_iommu_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  %20 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %21 = call %struct.device_link* @device_link_add(%struct.device* %16, %struct.device* %19, i32 %20)
  store %struct.device_link* %21, %struct.device_link** %6, align 8
  %22 = load %struct.device_link*, %struct.device_link** %6, align 8
  %23 = icmp ne %struct.device_link* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %15
  %25 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %25, i32 0, i32 1
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %28, i32 0, i32 1
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @dev_name(%struct.device* %32)
  %34 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %15
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %38)
  store %struct.iommu_group* %39, %struct.iommu_group** %5, align 8
  %40 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %41 = call i64 @IS_ERR_OR_NULL(%struct.iommu_group* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %45 = call i32 @PTR_ERR_OR_ZERO(%struct.iommu_group* %44)
  store i32 %45, i32* %2, align 4
  br label %53

46:                                               ; preds = %37
  %47 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %48 = call i32 @iommu_group_put(%struct.iommu_group* %47)
  %49 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %4, align 8
  %50 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %49, i32 0, i32 0
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @iommu_device_link(i32* %50, %struct.device* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %43, %24, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.qcom_iommu_dev* @to_iommu(i32) #1

declare dso_local i32 @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.device_link* @device_link_add(%struct.device*, %struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
