; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_get_bo_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_drv.c_panfrost_ioctl_get_bo_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_panfrost_get_bo_offset = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.panfrost_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @panfrost_ioctl_get_bo_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_ioctl_get_bo_offset(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_panfrost_get_bo_offset*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.panfrost_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_panfrost_get_bo_offset*
  store %struct.drm_panfrost_get_bo_offset* %12, %struct.drm_panfrost_get_bo_offset** %8, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_panfrost_get_bo_offset*, %struct.drm_panfrost_get_bo_offset** %8, align 8
  %15 = getelementptr inbounds %struct.drm_panfrost_get_bo_offset, %struct.drm_panfrost_get_bo_offset* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %13, i32 %16)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %9, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %19 = icmp ne %struct.drm_gem_object* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.drm_panfrost_get_bo_offset*, %struct.drm_panfrost_get_bo_offset** %8, align 8
  %22 = getelementptr inbounds %struct.drm_panfrost_get_bo_offset, %struct.drm_panfrost_get_bo_offset* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %40

27:                                               ; preds = %3
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %29 = call %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object* %28)
  store %struct.panfrost_gem_object* %29, %struct.panfrost_gem_object** %10, align 8
  %30 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %31 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.drm_panfrost_get_bo_offset*, %struct.drm_panfrost_get_bo_offset** %8, align 8
  %37 = getelementptr inbounds %struct.drm_panfrost_get_bo_offset, %struct.drm_panfrost_get_bo_offset* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %27, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.panfrost_gem_object* @to_panfrost_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
