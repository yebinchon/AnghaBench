; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_get_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_get_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_get_tiling = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_get_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_get_tiling*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_radeon_gem_get_tiling*
  store %struct.drm_radeon_gem_get_tiling* %13, %struct.drm_radeon_gem_get_tiling** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_radeon_gem_get_tiling*, %struct.drm_radeon_gem_get_tiling** %8, align 8
  %17 = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, %struct.drm_radeon_gem_get_tiling* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %15, i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %9, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %21 = icmp eq %struct.drm_gem_object* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %27 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %26)
  store %struct.radeon_bo* %27, %struct.radeon_bo** %10, align 8
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %29 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %28, i32 0)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %45

36:                                               ; preds = %25
  %37 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %38 = load %struct.drm_radeon_gem_get_tiling*, %struct.drm_radeon_gem_get_tiling** %8, align 8
  %39 = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, %struct.drm_radeon_gem_get_tiling* %38, i32 0, i32 1
  %40 = load %struct.drm_radeon_gem_get_tiling*, %struct.drm_radeon_gem_get_tiling** %8, align 8
  %41 = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, %struct.drm_radeon_gem_get_tiling* %40, i32 0, i32 0
  %42 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %37, i32* %39, i32* %41)
  %43 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %44 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %43)
  br label %45

45:                                               ; preds = %36, %35
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %47 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
