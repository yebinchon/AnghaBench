; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_mmap_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_mmap_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_panfrost_mmap_bo = type { i64, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"unknown mmap_bo flags: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @panfrost_ioctl_mmap_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_ioctl_mmap_bo(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_panfrost_mmap_bo*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_panfrost_mmap_bo*
  store %struct.drm_panfrost_mmap_bo* %12, %struct.drm_panfrost_mmap_bo** %8, align 8
  %13 = load %struct.drm_panfrost_mmap_bo*, %struct.drm_panfrost_mmap_bo** %8, align 8
  %14 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, %struct.drm_panfrost_mmap_bo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.drm_panfrost_mmap_bo*, %struct.drm_panfrost_mmap_bo** %8, align 8
  %19 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, %struct.drm_panfrost_mmap_bo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = load %struct.drm_panfrost_mmap_bo*, %struct.drm_panfrost_mmap_bo** %8, align 8
  %27 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, %struct.drm_panfrost_mmap_bo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %25, i32 %28)
  store %struct.drm_gem_object* %29, %struct.drm_gem_object** %9, align 8
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %31 = icmp ne %struct.drm_gem_object* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load %struct.drm_panfrost_mmap_bo*, %struct.drm_panfrost_mmap_bo** %8, align 8
  %34 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, %struct.drm_panfrost_mmap_bo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %24
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %41 = call %struct.TYPE_2__* @to_panfrost_bo(%struct.drm_gem_object* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %63

48:                                               ; preds = %39
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %50 = call i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %55 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %54, i32 0, i32 0
  %56 = call i32 @drm_vma_node_offset_addr(i32* %55)
  %57 = load %struct.drm_panfrost_mmap_bo*, %struct.drm_panfrost_mmap_bo** %8, align 8
  %58 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, %struct.drm_panfrost_mmap_bo* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %61 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %45, %32, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @to_panfrost_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_vma_node_offset_addr(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
