; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_get_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_get_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_vc4_get_tiling = type { i64, i64, i32 }
%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED = common dso_local global i64 0, align 8
@DRM_FORMAT_MOD_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_get_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_vc4_get_tiling*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_vc4_get_tiling*
  store %struct.drm_vc4_get_tiling* %12, %struct.drm_vc4_get_tiling** %8, align 8
  %13 = load %struct.drm_vc4_get_tiling*, %struct.drm_vc4_get_tiling** %8, align 8
  %14 = getelementptr inbounds %struct.drm_vc4_get_tiling, %struct.drm_vc4_get_tiling* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.drm_vc4_get_tiling*, %struct.drm_vc4_get_tiling** %8, align 8
  %19 = getelementptr inbounds %struct.drm_vc4_get_tiling, %struct.drm_vc4_get_tiling* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %17
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load %struct.drm_vc4_get_tiling*, %struct.drm_vc4_get_tiling** %8, align 8
  %28 = getelementptr inbounds %struct.drm_vc4_get_tiling, %struct.drm_vc4_get_tiling* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %26, i32 %29)
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %9, align 8
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %32 = icmp ne %struct.drm_gem_object* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.drm_vc4_get_tiling*, %struct.drm_vc4_get_tiling** %8, align 8
  %35 = getelementptr inbounds %struct.drm_vc4_get_tiling, %struct.drm_vc4_get_tiling* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %25
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %42 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %41)
  store %struct.vc4_bo* %42, %struct.vc4_bo** %10, align 8
  %43 = load %struct.vc4_bo*, %struct.vc4_bo** %10, align 8
  %44 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i64, i64* @DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED, align 8
  %49 = load %struct.drm_vc4_get_tiling*, %struct.drm_vc4_get_tiling** %8, align 8
  %50 = getelementptr inbounds %struct.drm_vc4_get_tiling, %struct.drm_vc4_get_tiling* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %55

51:                                               ; preds = %40
  %52 = load i64, i64* @DRM_FORMAT_MOD_NONE, align 8
  %53 = load %struct.drm_vc4_get_tiling*, %struct.drm_vc4_get_tiling** %8, align 8
  %54 = getelementptr inbounds %struct.drm_vc4_get_tiling, %struct.drm_vc4_get_tiling* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %57 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %33, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
