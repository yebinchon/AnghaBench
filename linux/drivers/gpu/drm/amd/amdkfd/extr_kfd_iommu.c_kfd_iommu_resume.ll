; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_kfd_iommu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@iommu_pasid_shutdown_callback = common dso_local global i32* null, align 8
@iommu_invalid_ppr_cb = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_iommu_resume(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %6 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %7 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = call i32 (...) @kfd_get_pasid_limit()
  store i32 %14, i32* %4, align 4
  %15 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %16 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @amd_iommu_init_device(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %55

25:                                               ; preds = %13
  %26 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %27 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** @iommu_pasid_shutdown_callback, align 8
  %30 = call i32 @amd_iommu_set_invalidate_ctx_cb(i32 %28, i32* %29)
  %31 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %32 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** @iommu_invalid_ppr_cb, align 8
  %35 = call i32 @amd_iommu_set_invalid_ppr_cb(i32 %33, i32* %34)
  %36 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %37 = call i32 @kfd_bind_processes_to_device(%struct.kfd_dev* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %25
  %41 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %42 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @amd_iommu_set_invalidate_ctx_cb(i32 %43, i32* null)
  %45 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %46 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @amd_iommu_set_invalid_ppr_cb(i32 %47, i32* null)
  %49 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %50 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @amd_iommu_free_device(i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %40, %22, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @kfd_get_pasid_limit(...) #1

declare dso_local i32 @amd_iommu_init_device(i32, i32) #1

declare dso_local i32 @amd_iommu_set_invalidate_ctx_cb(i32, i32*) #1

declare dso_local i32 @amd_iommu_set_invalid_ppr_cb(i32, i32*) #1

declare dso_local i32 @kfd_bind_processes_to_device(%struct.kfd_dev*) #1

declare dso_local i32 @amd_iommu_free_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
