; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_user_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_user_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.drm_gem_object = type { i64 }
%struct.amdgpu_framebuffer = type { %struct.drm_framebuffer }

@.str = private unnamed_addr constant [69 x i8] c"No GEM object associated to handle 0x%08X, can't create framebuffer\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Cannot create framebuffer from imported dma_buf\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @amdgpu_display_user_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.amdgpu_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %11 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %12 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %13 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %11, i32 %16)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %8, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %19 = icmp eq %struct.drm_gem_object* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.drm_framebuffer* @ERR_PTR(i32 %32)
  store %struct.drm_framebuffer* %33, %struct.drm_framebuffer** %4, align 8
  br label %73

34:                                               ; preds = %3
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.drm_framebuffer* @ERR_PTR(i32 %42)
  store %struct.drm_framebuffer* %43, %struct.drm_framebuffer** %4, align 8
  br label %73

44:                                               ; preds = %34
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.amdgpu_framebuffer* @kzalloc(i32 4, i32 %45)
  store %struct.amdgpu_framebuffer* %46, %struct.amdgpu_framebuffer** %9, align 8
  %47 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %9, align 8
  %48 = icmp eq %struct.amdgpu_framebuffer* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %51 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.drm_framebuffer* @ERR_PTR(i32 %53)
  store %struct.drm_framebuffer* %54, %struct.drm_framebuffer** %4, align 8
  br label %73

55:                                               ; preds = %44
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %9, align 8
  %58 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %60 = call i32 @amdgpu_display_framebuffer_init(%struct.drm_device* %56, %struct.amdgpu_framebuffer* %57, %struct.drm_mode_fb_cmd2* %58, %struct.drm_gem_object* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %9, align 8
  %65 = call i32 @kfree(%struct.amdgpu_framebuffer* %64)
  %66 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %67 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %66)
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.drm_framebuffer* @ERR_PTR(i32 %68)
  store %struct.drm_framebuffer* %69, %struct.drm_framebuffer** %4, align 8
  br label %73

70:                                               ; preds = %55
  %71 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %9, align 8
  %72 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %71, i32 0, i32 0
  store %struct.drm_framebuffer* %72, %struct.drm_framebuffer** %4, align 8
  br label %73

73:                                               ; preds = %70, %63, %49, %39, %20
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %74
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.amdgpu_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_display_framebuffer_init(%struct.drm_device*, %struct.amdgpu_framebuffer*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.amdgpu_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
