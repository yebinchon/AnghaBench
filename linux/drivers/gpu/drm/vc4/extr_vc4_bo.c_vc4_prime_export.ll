; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_prime_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_prime_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Attempting to export shader BO\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to increment BO usecnt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @vc4_prime_export(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc4_bo*, align 8
  %7 = alloca %struct.dma_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %10 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %9)
  store %struct.vc4_bo* %10, %struct.vc4_bo** %6, align 8
  %11 = load %struct.vc4_bo*, %struct.vc4_bo** %6, align 8
  %12 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dma_buf* @ERR_PTR(i32 %18)
  store %struct.dma_buf* %19, %struct.dma_buf** %3, align 8
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.vc4_bo*, %struct.vc4_bo** %6, align 8
  %22 = call i32 @vc4_bo_inc_usecnt(%struct.vc4_bo* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.dma_buf* @ERR_PTR(i32 %27)
  store %struct.dma_buf* %28, %struct.dma_buf** %3, align 8
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object* %30, i32 %31)
  store %struct.dma_buf* %32, %struct.dma_buf** %7, align 8
  %33 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %34 = call i64 @IS_ERR(%struct.dma_buf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.vc4_bo*, %struct.vc4_bo** %6, align 8
  %38 = call i32 @vc4_bo_dec_usecnt(%struct.vc4_bo* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  store %struct.dma_buf* %40, %struct.dma_buf** %3, align 8
  br label %41

41:                                               ; preds = %39, %25, %15
  %42 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  ret %struct.dma_buf* %42
}

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local i32 @vc4_bo_inc_usecnt(%struct.vc4_bo*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @vc4_bo_dec_usecnt(%struct.vc4_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
