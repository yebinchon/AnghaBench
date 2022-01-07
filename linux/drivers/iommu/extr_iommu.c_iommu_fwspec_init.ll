; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_fwspec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_fwspec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.iommu_ops = type { i32 }
%struct.iommu_fwspec = type { %struct.iommu_ops*, %struct.fwnode_handle* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_fwspec_init(%struct.device* %0, %struct.fwnode_handle* %1, %struct.iommu_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.iommu_ops*, align 8
  %8 = alloca %struct.iommu_fwspec*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %6, align 8
  store %struct.iommu_ops* %2, %struct.iommu_ops** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %9)
  store %struct.iommu_fwspec* %10, %struct.iommu_fwspec** %8, align 8
  %11 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %12 = icmp ne %struct.iommu_fwspec* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.iommu_ops*, %struct.iommu_ops** %7, align 8
  %15 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %16 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %15, i32 0, i32 0
  %17 = load %struct.iommu_ops*, %struct.iommu_ops** %16, align 8
  %18 = icmp eq %struct.iommu_ops* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ 0, %19 ], [ %22, %20 ]
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.iommu_fwspec* @kzalloc(i32 16, i32 %26)
  store %struct.iommu_fwspec* %27, %struct.iommu_fwspec** %8, align 8
  %28 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %29 = icmp ne %struct.iommu_fwspec* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %35 = call i32 @to_of_node(%struct.fwnode_handle* %34)
  %36 = call i32 @of_node_get(i32 %35)
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %38 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %39 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %38, i32 0, i32 1
  store %struct.fwnode_handle* %37, %struct.fwnode_handle** %39, align 8
  %40 = load %struct.iommu_ops*, %struct.iommu_ops** %7, align 8
  %41 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %42 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %41, i32 0, i32 0
  store %struct.iommu_ops* %40, %struct.iommu_ops** %42, align 8
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %8, align 8
  %45 = call i32 @dev_iommu_fwspec_set(%struct.device* %43, %struct.iommu_fwspec* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %33, %30, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.iommu_fwspec* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @to_of_node(%struct.fwnode_handle*) #1

declare dso_local i32 @dev_iommu_fwspec_set(%struct.device*, %struct.iommu_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
