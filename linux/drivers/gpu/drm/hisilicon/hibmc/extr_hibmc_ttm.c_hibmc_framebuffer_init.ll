; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_framebuffer = type { i32, %struct.drm_gem_object* }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_gem_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate hibmc_fb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hibmc_fb_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"drm_framebuffer_init failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hibmc_framebuffer* @hibmc_framebuffer_init(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object* %2) #0 {
  %4 = alloca %struct.hibmc_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.hibmc_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object* %2, %struct.drm_gem_object** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hibmc_framebuffer* @kzalloc(i32 16, i32 %10)
  store %struct.hibmc_framebuffer* %11, %struct.hibmc_framebuffer** %8, align 8
  %12 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %8, align 8
  %13 = icmp ne %struct.hibmc_framebuffer* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.hibmc_framebuffer* @ERR_PTR(i32 %17)
  store %struct.hibmc_framebuffer* %18, %struct.hibmc_framebuffer** %4, align 8
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %8, align 8
  %22 = getelementptr inbounds %struct.hibmc_framebuffer, %struct.hibmc_framebuffer* %21, i32 0, i32 0
  %23 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %24 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %20, i32* %22, %struct.drm_mode_fb_cmd2* %23)
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %26 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %8, align 8
  %27 = getelementptr inbounds %struct.hibmc_framebuffer, %struct.hibmc_framebuffer* %26, i32 0, i32 1
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %8, align 8
  %30 = getelementptr inbounds %struct.hibmc_framebuffer, %struct.hibmc_framebuffer* %29, i32 0, i32 0
  %31 = call i32 @drm_framebuffer_init(%struct.drm_device* %28, i32* %30, i32* @hibmc_fb_funcs)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %8, align 8
  %38 = call i32 @kfree(%struct.hibmc_framebuffer* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.hibmc_framebuffer* @ERR_PTR(i32 %39)
  store %struct.hibmc_framebuffer* %40, %struct.hibmc_framebuffer** %4, align 8
  br label %43

41:                                               ; preds = %19
  %42 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %8, align 8
  store %struct.hibmc_framebuffer* %42, %struct.hibmc_framebuffer** %4, align 8
  br label %43

43:                                               ; preds = %41, %34, %14
  %44 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %4, align 8
  ret %struct.hibmc_framebuffer* %44
}

declare dso_local %struct.hibmc_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.hibmc_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.hibmc_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
