; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_mmap_bo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_mmap_bo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_v3d_mmap_bo = type { i64, i32, i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unknown mmap_bo flags: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_mmap_bo_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_v3d_mmap_bo*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_v3d_mmap_bo*
  store %struct.drm_v3d_mmap_bo* %11, %struct.drm_v3d_mmap_bo** %8, align 8
  %12 = load %struct.drm_v3d_mmap_bo*, %struct.drm_v3d_mmap_bo** %8, align 8
  %13 = getelementptr inbounds %struct.drm_v3d_mmap_bo, %struct.drm_v3d_mmap_bo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.drm_v3d_mmap_bo*, %struct.drm_v3d_mmap_bo** %8, align 8
  %18 = getelementptr inbounds %struct.drm_v3d_mmap_bo, %struct.drm_v3d_mmap_bo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %25 = load %struct.drm_v3d_mmap_bo*, %struct.drm_v3d_mmap_bo** %8, align 8
  %26 = getelementptr inbounds %struct.drm_v3d_mmap_bo, %struct.drm_v3d_mmap_bo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %24, i32 %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %9, align 8
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %30 = icmp ne %struct.drm_gem_object* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.drm_v3d_mmap_bo*, %struct.drm_v3d_mmap_bo** %8, align 8
  %33 = getelementptr inbounds %struct.drm_v3d_mmap_bo, %struct.drm_v3d_mmap_bo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %23
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %40 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %39, i32 0, i32 0
  %41 = call i32 @drm_vma_node_offset_addr(i32* %40)
  %42 = load %struct.drm_v3d_mmap_bo*, %struct.drm_v3d_mmap_bo** %8, align 8
  %43 = getelementptr inbounds %struct.drm_v3d_mmap_bo, %struct.drm_v3d_mmap_bo* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %45 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %31, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_vma_node_offset_addr(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
