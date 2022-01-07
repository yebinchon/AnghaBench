; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_create_bo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_create_bo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_v3d_create_bo = type { i64, i32, i32, i32 }
%struct.v3d_bo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unknown create_bo flags: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_create_bo_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_v3d_create_bo*, align 8
  %9 = alloca %struct.v3d_bo*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_v3d_create_bo*
  store %struct.drm_v3d_create_bo* %12, %struct.drm_v3d_create_bo** %8, align 8
  store %struct.v3d_bo* null, %struct.v3d_bo** %9, align 8
  %13 = load %struct.drm_v3d_create_bo*, %struct.drm_v3d_create_bo** %8, align 8
  %14 = getelementptr inbounds %struct.drm_v3d_create_bo, %struct.drm_v3d_create_bo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.drm_v3d_create_bo*, %struct.drm_v3d_create_bo** %8, align 8
  %19 = getelementptr inbounds %struct.drm_v3d_create_bo, %struct.drm_v3d_create_bo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load %struct.drm_v3d_create_bo*, %struct.drm_v3d_create_bo** %8, align 8
  %28 = getelementptr inbounds %struct.drm_v3d_create_bo, %struct.drm_v3d_create_bo* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PAGE_ALIGN(i32 %29)
  %31 = call %struct.v3d_bo* @v3d_bo_create(%struct.drm_device* %25, %struct.drm_file* %26, i32 %30)
  store %struct.v3d_bo* %31, %struct.v3d_bo** %9, align 8
  %32 = load %struct.v3d_bo*, %struct.v3d_bo** %9, align 8
  %33 = call i64 @IS_ERR(%struct.v3d_bo* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.v3d_bo*, %struct.v3d_bo** %9, align 8
  %37 = call i32 @PTR_ERR(%struct.v3d_bo* %36)
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %24
  %39 = load %struct.v3d_bo*, %struct.v3d_bo** %9, align 8
  %40 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.drm_v3d_create_bo*, %struct.drm_v3d_create_bo** %8, align 8
  %46 = getelementptr inbounds %struct.drm_v3d_create_bo, %struct.drm_v3d_create_bo* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %48 = load %struct.v3d_bo*, %struct.v3d_bo** %9, align 8
  %49 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.drm_v3d_create_bo*, %struct.drm_v3d_create_bo** %8, align 8
  %52 = getelementptr inbounds %struct.drm_v3d_create_bo, %struct.drm_v3d_create_bo* %51, i32 0, i32 2
  %53 = call i32 @drm_gem_handle_create(%struct.drm_file* %47, i32* %50, i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.v3d_bo*, %struct.v3d_bo** %9, align 8
  %55 = getelementptr inbounds %struct.v3d_bo, %struct.v3d_bo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @drm_gem_object_put_unlocked(i32* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %38, %35, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local %struct.v3d_bo* @v3d_bo_create(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i64 @IS_ERR(%struct.v3d_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.v3d_bo*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
