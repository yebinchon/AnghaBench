; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_job_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_job_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32 }
%struct.drm_file = type { i32 }
%struct.v3d_job = type { void (%struct.kref*)*, i32, i32, %struct.v3d_dev* }
%struct.kref = type opaque
%struct.kref.0 = type opaque
%struct.dma_fence = type { i32 }

@XA_FLAGS_ALLOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3d_dev*, %struct.drm_file*, %struct.v3d_job*, void (%struct.kref.0*)*, i32)* @v3d_job_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_job_init(%struct.v3d_dev* %0, %struct.drm_file* %1, %struct.v3d_job* %2, void (%struct.kref.0*)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v3d_dev*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.v3d_job*, align 8
  %10 = alloca void (%struct.kref.0*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_fence*, align 8
  %13 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store %struct.v3d_job* %2, %struct.v3d_job** %9, align 8
  store void (%struct.kref.0*)* %3, void (%struct.kref.0*)** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %12, align 8
  %14 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %15 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %16 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %15, i32 0, i32 3
  store %struct.v3d_dev* %14, %struct.v3d_dev** %16, align 8
  %17 = load void (%struct.kref.0*)*, void (%struct.kref.0*)** %10, align 8
  %18 = bitcast void (%struct.kref.0*)* %17 to void (%struct.kref*)*
  %19 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %20 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %19, i32 0, i32 0
  store void (%struct.kref*)* %18, void (%struct.kref*)** %20, align 8
  %21 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %22 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %63

29:                                               ; preds = %5
  %30 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %31 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %30, i32 0, i32 1
  %32 = load i32, i32* @XA_FLAGS_ALLOC, align 4
  %33 = call i32 @xa_init_flags(i32* %31, i32 %32)
  %34 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @drm_syncobj_find_fence(%struct.drm_file* %34, i32 %35, i32 0, i32 0, %struct.dma_fence** %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %54

42:                                               ; preds = %29
  %43 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %44 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %43, i32 0, i32 1
  %45 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %46 = call i32 @drm_gem_fence_array_add(i32* %44, %struct.dma_fence* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %52 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %51, i32 0, i32 2
  %53 = call i32 @kref_init(i32* %52)
  store i32 0, i32* %6, align 4
  br label %63

54:                                               ; preds = %49, %41
  %55 = load %struct.v3d_job*, %struct.v3d_job** %9, align 8
  %56 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %55, i32 0, i32 1
  %57 = call i32 @xa_destroy(i32* %56)
  %58 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %59 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_put_autosuspend(i32 %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %54, %50, %27
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @xa_init_flags(i32*, i32) #1

declare dso_local i32 @drm_syncobj_find_fence(%struct.drm_file*, i32, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @drm_gem_fence_array_add(i32*, %struct.dma_fence*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @xa_destroy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
