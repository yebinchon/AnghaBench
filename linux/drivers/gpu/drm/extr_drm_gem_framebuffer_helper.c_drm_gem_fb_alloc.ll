; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_framebuffer_helper.c_drm_gem_fb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_framebuffer_helper.c_drm_gem_fb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.drm_gem_object** }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_framebuffer_funcs = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to init framebuffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**, i32, %struct.drm_framebuffer_funcs*)* @drm_gem_fb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @drm_gem_fb_alloc(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2, i32 %3, %struct.drm_framebuffer_funcs* %4) #0 {
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.drm_gem_object**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_framebuffer_funcs*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.drm_framebuffer_funcs* %4, %struct.drm_framebuffer_funcs** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.drm_framebuffer* @kzalloc(i32 8, i32 %15)
  store %struct.drm_framebuffer* %16, %struct.drm_framebuffer** %12, align 8
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %18 = icmp ne %struct.drm_framebuffer* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.drm_framebuffer* @ERR_PTR(i32 %21)
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %6, align 8
  br label %66

23:                                               ; preds = %5
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %26 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %27 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %24, %struct.drm_framebuffer* %25, %struct.drm_mode_fb_cmd2* %26)
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %44, %23
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %9, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %33, i64 %35
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %36, align 8
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 0
  %40 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %40, i64 %42
  store %struct.drm_gem_object* %37, %struct.drm_gem_object** %43, align 8
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %50 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %11, align 8
  %51 = call i32 @drm_framebuffer_init(%struct.drm_device* %48, %struct.drm_framebuffer* %49, %struct.drm_framebuffer_funcs* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @DRM_DEV_ERROR(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %61 = call i32 @kfree(%struct.drm_framebuffer* %60)
  %62 = load i32, i32* %13, align 4
  %63 = call %struct.drm_framebuffer* @ERR_PTR(i32 %62)
  store %struct.drm_framebuffer* %63, %struct.drm_framebuffer** %6, align 8
  br label %66

64:                                               ; preds = %47
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %6, align 8
  br label %66

66:                                               ; preds = %64, %54, %19
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  ret %struct.drm_framebuffer* %67
}

declare dso_local %struct.drm_framebuffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_framebuffer_funcs*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
