; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_helper_funcs = type { i32 }
%struct.drm_plane = type { i32 }
%struct.vkms_device = type { %struct.drm_device }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@vkms_cursor_formats = common dso_local global i32* null, align 8
@vkms_primary_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@vkms_formats = common dso_local global i32* null, align 8
@vkms_plane_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane* @vkms_plane_init(%struct.vkms_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.vkms_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_plane_helper_funcs*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vkms_device* %0, %struct.vkms_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vkms_device*, %struct.vkms_device** %5, align 8
  %15 = getelementptr inbounds %struct.vkms_device, %struct.vkms_device* %14, i32 0, i32 0
  store %struct.drm_device* %15, %struct.drm_device** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.drm_plane* @kzalloc(i32 4, i32 %16)
  store %struct.drm_plane* %17, %struct.drm_plane** %10, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %19 = icmp ne %struct.drm_plane* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.drm_plane* @ERR_PTR(i32 %22)
  store %struct.drm_plane* %23, %struct.drm_plane** %4, align 8
  br label %57

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** @vkms_cursor_formats, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** @vkms_cursor_formats, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  store i32 %31, i32* %13, align 4
  store %struct.drm_plane_helper_funcs* @vkms_primary_helper_funcs, %struct.drm_plane_helper_funcs** %9, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load i32*, i32** @vkms_formats, align 8
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** @vkms_formats, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  store i32 %35, i32* %13, align 4
  store %struct.drm_plane_helper_funcs* @vkms_primary_helper_funcs, %struct.drm_plane_helper_funcs** %9, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %38 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @drm_universal_plane_init(%struct.drm_device* %37, %struct.drm_plane* %38, i32 %40, i32* @vkms_plane_funcs, i32* %41, i32 %42, i32* null, i32 %43, i32* null)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %49 = call i32 @kfree(%struct.drm_plane* %48)
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.drm_plane* @ERR_PTR(i32 %50)
  store %struct.drm_plane* %51, %struct.drm_plane** %4, align 8
  br label %57

52:                                               ; preds = %36
  %53 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %54 = load %struct.drm_plane_helper_funcs*, %struct.drm_plane_helper_funcs** %9, align 8
  %55 = call i32 @drm_plane_helper_add(%struct.drm_plane* %53, %struct.drm_plane_helper_funcs* %54)
  %56 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  store %struct.drm_plane* %56, %struct.drm_plane** %4, align 8
  br label %57

57:                                               ; preds = %52, %47, %20
  %58 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  ret %struct.drm_plane* %58
}

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, %struct.drm_plane_helper_funcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
