; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_set_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_set_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_vc4_set_tiling = type { i64, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.vc4_bo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_set_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_vc4_set_tiling*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.vc4_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_vc4_set_tiling*
  store %struct.drm_vc4_set_tiling* %13, %struct.drm_vc4_set_tiling** %8, align 8
  %14 = load %struct.drm_vc4_set_tiling*, %struct.drm_vc4_set_tiling** %8, align 8
  %15 = getelementptr inbounds %struct.drm_vc4_set_tiling, %struct.drm_vc4_set_tiling* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.drm_vc4_set_tiling*, %struct.drm_vc4_set_tiling** %8, align 8
  %23 = getelementptr inbounds %struct.drm_vc4_set_tiling, %struct.drm_vc4_set_tiling* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %27 [
    i32 128, label %25
    i32 129, label %26
  ]

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %30

26:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %26, %25
  %31 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %32 = load %struct.drm_vc4_set_tiling*, %struct.drm_vc4_set_tiling** %8, align 8
  %33 = getelementptr inbounds %struct.drm_vc4_set_tiling, %struct.drm_vc4_set_tiling* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %31, i32 %34)
  store %struct.drm_gem_object* %35, %struct.drm_gem_object** %9, align 8
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %37 = icmp ne %struct.drm_gem_object* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = load %struct.drm_vc4_set_tiling*, %struct.drm_vc4_set_tiling** %8, align 8
  %40 = getelementptr inbounds %struct.drm_vc4_set_tiling, %struct.drm_vc4_set_tiling* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %30
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %47 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %46)
  store %struct.vc4_bo* %47, %struct.vc4_bo** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.vc4_bo*, %struct.vc4_bo** %10, align 8
  %50 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %52 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %38, %27, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
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
