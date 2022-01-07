; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_bus_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_bus_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.device = type { i32 }
%struct.iommu_group = type { i32 }

@BUS_NOTIFY_ADD_DEVICE = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@BUS_NOTIFY_REMOVED_DEVICE = common dso_local global i64 0, align 8
@IOMMU_GROUP_NOTIFY_BIND_DRIVER = common dso_local global i64 0, align 8
@IOMMU_GROUP_NOTIFY_BOUND_DRIVER = common dso_local global i64 0, align 8
@IOMMU_GROUP_NOTIFY_UNBIND_DRIVER = common dso_local global i64 0, align 8
@IOMMU_GROUP_NOTIFY_UNBOUND_DRIVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @iommu_bus_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_bus_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.iommu_group*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BUS_NOTIFY_ADD_DEVICE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %9, align 8
  %19 = call i32 @iommu_probe_device(%struct.device* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @NOTIFY_DONE, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @NOTIFY_OK, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @BUS_NOTIFY_REMOVED_DEVICE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = call i32 @iommu_release_device(%struct.device* %33)
  %35 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = call %struct.iommu_group* @iommu_group_get(%struct.device* %38)
  store %struct.iommu_group* %39, %struct.iommu_group** %10, align 8
  %40 = load %struct.iommu_group*, %struct.iommu_group** %10, align 8
  %41 = icmp ne %struct.iommu_group* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %65

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  switch i64 %44, label %53 [
    i64 131, label %45
    i64 130, label %47
    i64 129, label %49
    i64 128, label %51
  ]

45:                                               ; preds = %43
  %46 = load i64, i64* @IOMMU_GROUP_NOTIFY_BIND_DRIVER, align 8
  store i64 %46, i64* %8, align 8
  br label %53

47:                                               ; preds = %43
  %48 = load i64, i64* @IOMMU_GROUP_NOTIFY_BOUND_DRIVER, align 8
  store i64 %48, i64* %8, align 8
  br label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @IOMMU_GROUP_NOTIFY_UNBIND_DRIVER, align 8
  store i64 %50, i64* %8, align 8
  br label %53

51:                                               ; preds = %43
  %52 = load i64, i64* @IOMMU_GROUP_NOTIFY_UNBOUND_DRIVER, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %43, %51, %49, %47, %45
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.iommu_group*, %struct.iommu_group** %10, align 8
  %58 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = call i32 @blocking_notifier_call_chain(i32* %58, i64 %59, %struct.device* %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load %struct.iommu_group*, %struct.iommu_group** %10, align 8
  %64 = call i32 @iommu_group_put(%struct.iommu_group* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %42, %32, %26
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @iommu_probe_device(%struct.device*) #1

declare dso_local i32 @iommu_release_device(%struct.device*) #1

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i64, %struct.device*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
