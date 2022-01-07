; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i32, i32 }
%struct.iommu_fwspec = type { i64 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"invalid #iommu-cells(%d) property for IOMMU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.of_phandle_args*)* @mtk_iommu_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.iommu_fwspec*, align 8
  %7 = alloca %struct.platform_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %8)
  store %struct.iommu_fwspec* %9, %struct.iommu_fwspec** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %24 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.platform_device* @of_find_device_by_node(i32 %30)
  store %struct.platform_device* %31, %struct.platform_device** %7, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %33 = icmp ne %struct.platform_device* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %27
  %42 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %43 = call i64 @platform_get_drvdata(%struct.platform_device* %42)
  %44 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %6, align 8
  %45 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %22
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %49 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iommu_fwspec_add_ids(%struct.device* %47, i32 %50, i32 1)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %38, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @iommu_fwspec_add_ids(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
