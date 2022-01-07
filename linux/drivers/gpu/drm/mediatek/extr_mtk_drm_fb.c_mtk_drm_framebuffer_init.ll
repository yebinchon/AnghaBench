; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_fb.c_mtk_drm_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_fb.c_mtk_drm_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.drm_gem_object** }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_format_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_drm_fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to initialize framebuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*)* @mtk_drm_framebuffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @mtk_drm_framebuffer_init(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object* %2, %struct.drm_gem_object** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %13 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %11, %struct.drm_mode_fb_cmd2* %12)
  store %struct.drm_format_info* %13, %struct.drm_format_info** %8, align 8
  %14 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %15 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_framebuffer* @ERR_PTR(i32 %20)
  store %struct.drm_framebuffer* %21, %struct.drm_framebuffer** %4, align 8
  br label %54

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.drm_framebuffer* @kzalloc(i32 8, i32 %23)
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %9, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %26 = icmp ne %struct.drm_framebuffer* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.drm_framebuffer* @ERR_PTR(i32 %29)
  store %struct.drm_framebuffer* %30, %struct.drm_framebuffer** %4, align 8
  br label %54

31:                                               ; preds = %22
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %34 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %35 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %32, %struct.drm_framebuffer* %33, %struct.drm_mode_fb_cmd2* %34)
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %38, align 8
  %40 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %39, i64 0
  store %struct.drm_gem_object* %36, %struct.drm_gem_object** %40, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %43 = call i32 @drm_framebuffer_init(%struct.drm_device* %41, %struct.drm_framebuffer* %42, i32* @mtk_drm_fb_funcs)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %49 = call i32 @kfree(%struct.drm_framebuffer* %48)
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.drm_framebuffer* @ERR_PTR(i32 %50)
  store %struct.drm_framebuffer* %51, %struct.drm_framebuffer** %4, align 8
  br label %54

52:                                               ; preds = %31
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %53, %struct.drm_framebuffer** %4, align 8
  br label %54

54:                                               ; preds = %52, %46, %27, %18
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %55
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local %struct.drm_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
