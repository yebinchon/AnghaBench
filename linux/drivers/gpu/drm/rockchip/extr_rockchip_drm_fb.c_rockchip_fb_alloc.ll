; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fb.c_rockchip_fb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fb.c_rockchip_fb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.drm_gem_object** }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_gem_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rockchip_drm_fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to initialize framebuffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**, i32)* @rockchip_fb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @rockchip_fb_alloc(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2, i32 %3) #0 {
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_gem_object**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %7, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.drm_framebuffer* @kzalloc(i32 8, i32 %13)
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %10, align 8
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %16 = icmp ne %struct.drm_framebuffer* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.drm_framebuffer* @ERR_PTR(i32 %19)
  store %struct.drm_framebuffer* %20, %struct.drm_framebuffer** %5, align 8
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %24 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %25 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %22, %struct.drm_framebuffer* %23, %struct.drm_mode_fb_cmd2* %24)
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %42, %21
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %31, i64 %33
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %34, align 8
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 0
  %38 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %38, i64 %40
  store %struct.drm_gem_object* %35, %struct.drm_gem_object** %41, align 8
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %48 = call i32 @drm_framebuffer_init(%struct.drm_device* %46, %struct.drm_framebuffer* %47, i32* @rockchip_drm_fb_funcs)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @DRM_DEV_ERROR(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %58 = call i32 @kfree(%struct.drm_framebuffer* %57)
  %59 = load i32, i32* %11, align 4
  %60 = call %struct.drm_framebuffer* @ERR_PTR(i32 %59)
  store %struct.drm_framebuffer* %60, %struct.drm_framebuffer** %5, align 8
  br label %63

61:                                               ; preds = %45
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %62, %struct.drm_framebuffer** %5, align 8
  br label %63

63:                                               ; preds = %61, %51, %17
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  ret %struct.drm_framebuffer* %64
}

declare dso_local %struct.drm_framebuffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
