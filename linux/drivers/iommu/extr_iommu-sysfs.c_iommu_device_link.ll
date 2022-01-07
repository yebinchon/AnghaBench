; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu-sysfs.c_iommu_device_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu-sysfs.c_iommu_device_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iommu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_device_link(%struct.iommu_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.iommu_device* %0, %struct.iommu_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.iommu_device*, %struct.iommu_device** %4, align 8
  %8 = icmp ne %struct.iommu_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.iommu_device*, %struct.iommu_device** %4, align 8
  %11 = call i64 @IS_ERR(%struct.iommu_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %9
  %17 = load %struct.iommu_device*, %struct.iommu_device** %4, align 8
  %18 = getelementptr inbounds %struct.iommu_device, %struct.iommu_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_name(%struct.device* %23)
  %25 = call i32 @sysfs_add_link_to_group(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %16
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load %struct.iommu_device*, %struct.iommu_device** %4, align 8
  %34 = getelementptr inbounds %struct.iommu_device, %struct.iommu_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @sysfs_create_link_nowarn(i32* %32, i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.iommu_device*, %struct.iommu_device** %4, align 8
  %42 = getelementptr inbounds %struct.iommu_device, %struct.iommu_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @dev_name(%struct.device* %45)
  %47 = call i32 @sysfs_remove_link_from_group(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %40, %30
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %28, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @IS_ERR(%struct.iommu_device*) #1

declare dso_local i32 @sysfs_add_link_to_group(i32*, i8*, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @sysfs_create_link_nowarn(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link_from_group(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
