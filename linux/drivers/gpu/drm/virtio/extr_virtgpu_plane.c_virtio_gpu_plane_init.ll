; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_helper_funcs = type { i32 }
%struct.drm_plane = type { i32 }
%struct.virtio_gpu_device = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@virtio_gpu_cursor_formats = common dso_local global i32* null, align 8
@virtio_gpu_cursor_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@virtio_gpu_formats = common dso_local global i32* null, align 8
@virtio_gpu_primary_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@virtio_gpu_plane_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane* @virtio_gpu_plane_init(%struct.virtio_gpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.virtio_gpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_plane_helper_funcs*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.virtio_gpu_device* %0, %struct.virtio_gpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %5, align 8
  %15 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.drm_plane* @kzalloc(i32 4, i32 %17)
  store %struct.drm_plane* %18, %struct.drm_plane** %10, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %20 = icmp ne %struct.drm_plane* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.drm_plane* @ERR_PTR(i32 %23)
  store %struct.drm_plane* %24, %struct.drm_plane** %4, align 8
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** @virtio_gpu_cursor_formats, align 8
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** @virtio_gpu_cursor_formats, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  store i32 %32, i32* %13, align 4
  store %struct.drm_plane_helper_funcs* @virtio_gpu_cursor_helper_funcs, %struct.drm_plane_helper_funcs** %9, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i32*, i32** @virtio_gpu_formats, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** @virtio_gpu_formats, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  store i32 %36, i32* %13, align 4
  store %struct.drm_plane_helper_funcs* @virtio_gpu_primary_helper_funcs, %struct.drm_plane_helper_funcs** %9, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @drm_universal_plane_init(%struct.drm_device* %38, %struct.drm_plane* %39, i32 %41, i32* @virtio_gpu_plane_funcs, i32* %42, i32 %43, i32* null, i32 %44, i32* null)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %51 = load %struct.drm_plane_helper_funcs*, %struct.drm_plane_helper_funcs** %9, align 8
  %52 = call i32 @drm_plane_helper_add(%struct.drm_plane* %50, %struct.drm_plane_helper_funcs* %51)
  %53 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  store %struct.drm_plane* %53, %struct.drm_plane** %4, align 8
  br label %59

54:                                               ; preds = %48
  %55 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %56 = call i32 @kfree(%struct.drm_plane* %55)
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.drm_plane* @ERR_PTR(i32 %57)
  store %struct.drm_plane* %58, %struct.drm_plane** %4, align 8
  br label %59

59:                                               ; preds = %54, %49, %21
  %60 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  ret %struct.drm_plane* %60
}

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, %struct.drm_plane_helper_funcs*) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
