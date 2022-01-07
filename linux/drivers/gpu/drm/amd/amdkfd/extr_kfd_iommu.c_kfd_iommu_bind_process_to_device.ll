; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_bind_process_to_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_bind_process_to_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i64, %struct.kfd_process*, %struct.kfd_dev* }
%struct.kfd_process = type { i32, i32 }
%struct.kfd_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PDD_BOUND = common dso_local global i64 0, align 8
@PDD_BOUND_SUSPENDED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Binding PDD_BOUND_SUSPENDED pdd is unexpected!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_iommu_bind_process_to_device(%struct.kfd_process_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i32, align 4
  store %struct.kfd_process_device* %0, %struct.kfd_process_device** %3, align 8
  %7 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %8 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %7, i32 0, i32 2
  %9 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  store %struct.kfd_dev* %9, %struct.kfd_dev** %4, align 8
  %10 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %11 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %10, i32 0, i32 1
  %12 = load %struct.kfd_process*, %struct.kfd_process** %11, align 8
  store %struct.kfd_process* %12, %struct.kfd_process** %5, align 8
  %13 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %14 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %21 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PDD_BOUND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %28 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PDD_BOUND_SUSPENDED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %41 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %44 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %47 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @amd_iommu_bind_pasid(i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %39
  %53 = load i64, i64* @PDD_BOUND, align 8
  %54 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  %55 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %39
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %35, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @amd_iommu_bind_pasid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
