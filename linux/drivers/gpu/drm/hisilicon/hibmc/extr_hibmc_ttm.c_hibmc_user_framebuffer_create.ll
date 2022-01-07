; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_user_framebuffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_user_framebuffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.hibmc_framebuffer = type { %struct.drm_framebuffer }

@.str = private unnamed_addr constant [24 x i8] c"%dx%d, format %c%c%c%c\0A\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @hibmc_user_framebuffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @hibmc_user_framebuffer_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.hibmc_framebuffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %10 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %11 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %17 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  %20 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %19, i32 %24, i32 %29, i32 %34)
  %36 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %37 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %36, i32 %41)
  store %struct.drm_gem_object* %42, %struct.drm_gem_object** %8, align 8
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %44 = icmp ne %struct.drm_gem_object* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %3
  %46 = load i64, i64* @ENOENT, align 8
  %47 = sub nsw i64 0, %46
  %48 = call %struct.drm_framebuffer* @ERR_PTR(i64 %47)
  store %struct.drm_framebuffer* %48, %struct.drm_framebuffer** %4, align 8
  br label %66

49:                                               ; preds = %3
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %53 = call %struct.hibmc_framebuffer* @hibmc_framebuffer_init(%struct.drm_device* %50, %struct.drm_mode_fb_cmd2* %51, %struct.drm_gem_object* %52)
  store %struct.hibmc_framebuffer* %53, %struct.hibmc_framebuffer** %9, align 8
  %54 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %9, align 8
  %55 = call i64 @IS_ERR(%struct.hibmc_framebuffer* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %59 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %58)
  %60 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %9, align 8
  %61 = ptrtoint %struct.hibmc_framebuffer* %60 to i64
  %62 = call %struct.drm_framebuffer* @ERR_PTR(i64 %61)
  store %struct.drm_framebuffer* %62, %struct.drm_framebuffer** %4, align 8
  br label %66

63:                                               ; preds = %49
  %64 = load %struct.hibmc_framebuffer*, %struct.hibmc_framebuffer** %9, align 8
  %65 = getelementptr inbounds %struct.hibmc_framebuffer, %struct.hibmc_framebuffer* %64, i32 0, i32 0
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %4, align 8
  br label %66

66:                                               ; preds = %63, %57, %45
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %67
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i64) #1

declare dso_local %struct.hibmc_framebuffer* @hibmc_framebuffer_init(%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.hibmc_framebuffer*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
