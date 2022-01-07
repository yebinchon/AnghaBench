; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fb.c_exynos_drm_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fb.c_exynos_drm_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32** }
%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.exynos_drm_gem = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_drm_fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to initialize framebuffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @exynos_drm_framebuffer_init(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.exynos_drm_gem** %2, i32 %3) #0 {
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.exynos_drm_gem**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %7, align 8
  store %struct.exynos_drm_gem** %2, %struct.exynos_drm_gem*** %8, align 8
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
  br label %75

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = load %struct.exynos_drm_gem**, %struct.exynos_drm_gem*** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %28, i64 %30
  %32 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %31, align 8
  %33 = call i32 @check_fb_gem_memory_type(%struct.drm_device* %27, %struct.exynos_drm_gem* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %70

37:                                               ; preds = %26
  %38 = load %struct.exynos_drm_gem**, %struct.exynos_drm_gem*** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %38, i64 %40
  %42 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %41, align 8
  %43 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %42, i32 0, i32 0
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* %43, i32** %49, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %56 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %57 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %54, %struct.drm_framebuffer* %55, %struct.drm_mode_fb_cmd2* %56)
  %58 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %60 = call i32 @drm_framebuffer_init(%struct.drm_device* %58, %struct.drm_framebuffer* %59, i32* @exynos_drm_fb_funcs)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DRM_DEV_ERROR(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %70

68:                                               ; preds = %53
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %69, %struct.drm_framebuffer** %5, align 8
  br label %75

70:                                               ; preds = %63, %36
  %71 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %72 = call i32 @kfree(%struct.drm_framebuffer* %71)
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.drm_framebuffer* @ERR_PTR(i32 %73)
  store %struct.drm_framebuffer* %74, %struct.drm_framebuffer** %5, align 8
  br label %75

75:                                               ; preds = %70, %68, %17
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  ret %struct.drm_framebuffer* %76
}

declare dso_local %struct.drm_framebuffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @check_fb_gem_memory_type(%struct.drm_device*, %struct.exynos_drm_gem*) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
