; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_set_tiling = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_set_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_set_tiling*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_radeon_gem_set_tiling*
  store %struct.drm_radeon_gem_set_tiling* %13, %struct.drm_radeon_gem_set_tiling** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.drm_radeon_gem_set_tiling*, %struct.drm_radeon_gem_set_tiling** %8, align 8
  %15 = getelementptr inbounds %struct.drm_radeon_gem_set_tiling, %struct.drm_radeon_gem_set_tiling* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = load %struct.drm_radeon_gem_set_tiling*, %struct.drm_radeon_gem_set_tiling** %8, align 8
  %20 = getelementptr inbounds %struct.drm_radeon_gem_set_tiling, %struct.drm_radeon_gem_set_tiling* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %18, i32 %21)
  store %struct.drm_gem_object* %22, %struct.drm_gem_object** %9, align 8
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %24 = icmp eq %struct.drm_gem_object* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %30 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %29)
  store %struct.radeon_bo* %30, %struct.radeon_bo** %10, align 8
  %31 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %32 = load %struct.drm_radeon_gem_set_tiling*, %struct.drm_radeon_gem_set_tiling** %8, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_gem_set_tiling, %struct.drm_radeon_gem_set_tiling* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_radeon_gem_set_tiling*, %struct.drm_radeon_gem_set_tiling** %8, align 8
  %36 = getelementptr inbounds %struct.drm_radeon_gem_set_tiling, %struct.drm_radeon_gem_set_tiling* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @radeon_bo_set_tiling_flags(%struct.radeon_bo* %31, i32 %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %40 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %28, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_set_tiling_flags(%struct.radeon_bo*, i32, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
