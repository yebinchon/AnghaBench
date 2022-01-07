; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_intel_svm_is_pasid_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_intel_svm_is_pasid_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_iommu = type { i32 }
%struct.intel_svm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pasid_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_svm_is_pasid_valid(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca %struct.intel_svm*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = call i32 @mutex_lock(i32* @pasid_mutex)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.intel_iommu* @intel_svm_device_to_iommu(%struct.device* %11)
  store %struct.intel_iommu* %12, %struct.intel_iommu** %5, align 8
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %14 = icmp ne %struct.intel_iommu* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.intel_svm* @intel_pasid_lookup_id(i32 %17)
  store %struct.intel_svm* %18, %struct.intel_svm** %6, align 8
  %19 = load %struct.intel_svm*, %struct.intel_svm** %6, align 8
  %20 = icmp ne %struct.intel_svm* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %39

22:                                               ; preds = %16
  %23 = load %struct.intel_svm*, %struct.intel_svm** %6, align 8
  %24 = getelementptr inbounds %struct.intel_svm, %struct.intel_svm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %38

28:                                               ; preds = %22
  %29 = load %struct.intel_svm*, %struct.intel_svm** %6, align 8
  %30 = getelementptr inbounds %struct.intel_svm, %struct.intel_svm* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @atomic_read(i32* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %21, %15
  %40 = call i32 @mutex_unlock(i32* @pasid_mutex)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.intel_iommu* @intel_svm_device_to_iommu(%struct.device*) #1

declare dso_local %struct.intel_svm* @intel_pasid_lookup_id(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
