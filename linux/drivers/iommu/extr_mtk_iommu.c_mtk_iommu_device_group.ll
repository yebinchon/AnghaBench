; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_device_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_device_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32 }
%struct.device = type { i32 }
%struct.mtk_iommu_data = type { %struct.iommu_group* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate M4U IOMMU group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_group* (%struct.device*)* @mtk_iommu_device_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_group* @mtk_iommu_device_group(%struct.device* %0) #0 {
  %2 = alloca %struct.iommu_group*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_iommu_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = call %struct.mtk_iommu_data* (...) @mtk_iommu_get_m4u_data()
  store %struct.mtk_iommu_data* %5, %struct.mtk_iommu_data** %4, align 8
  %6 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %7 = icmp ne %struct.mtk_iommu_data* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.iommu_group* @ERR_PTR(i32 %10)
  store %struct.iommu_group* %11, %struct.iommu_group** %2, align 8
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %13, i32 0, i32 0
  %15 = load %struct.iommu_group*, %struct.iommu_group** %14, align 8
  %16 = icmp ne %struct.iommu_group* %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = call %struct.iommu_group* (...) @iommu_group_alloc()
  %19 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %19, i32 0, i32 0
  store %struct.iommu_group* %18, %struct.iommu_group** %20, align 8
  %21 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %21, i32 0, i32 0
  %23 = load %struct.iommu_group*, %struct.iommu_group** %22, align 8
  %24 = call i64 @IS_ERR(%struct.iommu_group* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %17
  br label %35

30:                                               ; preds = %12
  %31 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %31, i32 0, i32 0
  %33 = load %struct.iommu_group*, %struct.iommu_group** %32, align 8
  %34 = call i32 @iommu_group_ref_get(%struct.iommu_group* %33)
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %36, i32 0, i32 0
  %38 = load %struct.iommu_group*, %struct.iommu_group** %37, align 8
  store %struct.iommu_group* %38, %struct.iommu_group** %2, align 8
  br label %39

39:                                               ; preds = %35, %8
  %40 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  ret %struct.iommu_group* %40
}

declare dso_local %struct.mtk_iommu_data* @mtk_iommu_get_m4u_data(...) #1

declare dso_local %struct.iommu_group* @ERR_PTR(i32) #1

declare dso_local %struct.iommu_group* @iommu_group_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iommu_group_ref_get(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
