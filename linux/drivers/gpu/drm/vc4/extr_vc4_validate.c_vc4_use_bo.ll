; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_use_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_use_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_cma_object = type { i32 }
%struct.vc4_exec_info = type { i64, %struct.drm_gem_cma_object** }
%struct.vc4_bo = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"BO index %d greater than BO count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Trying to use shader BO as something other than a shader\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_cma_object*, align 8
  %4 = alloca %struct.vc4_exec_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  %7 = alloca %struct.vc4_bo*, align 8
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %10 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %16 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17)
  store %struct.drm_gem_cma_object* null, %struct.drm_gem_cma_object** %3, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %21 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %20, i32 0, i32 1
  %22 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %22, i64 %23
  %25 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %24, align 8
  store %struct.drm_gem_cma_object* %25, %struct.drm_gem_cma_object** %6, align 8
  %26 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %27 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %26, i32 0, i32 0
  %28 = call %struct.vc4_bo* @to_vc4_bo(i32* %27)
  store %struct.vc4_bo* %28, %struct.vc4_bo** %7, align 8
  %29 = load %struct.vc4_bo*, %struct.vc4_bo** %7, align 8
  %30 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store %struct.drm_gem_cma_object* null, %struct.drm_gem_cma_object** %3, align 8
  br label %37

35:                                               ; preds = %19
  %36 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  store %struct.drm_gem_cma_object* %36, %struct.drm_gem_cma_object** %3, align 8
  br label %37

37:                                               ; preds = %35, %33, %13
  %38 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  ret %struct.drm_gem_cma_object* %38
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
