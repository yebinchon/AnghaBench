; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_dma_resv_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_dma_resv_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ETIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_gem_dma_resv_wait(%struct.drm_file* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %12, i32 %13)
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %11, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %16 = icmp ne %struct.drm_gem_object* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %43

22:                                               ; preds = %4
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %24 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @dma_resv_wait_timeout_rcu(i32 %25, i32 %26, i32 1, i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i64, i64* @ETIME, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %10, align 8
  br label %39

34:                                               ; preds = %22
  %35 = load i64, i64* %10, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %41 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %40)
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i64) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
