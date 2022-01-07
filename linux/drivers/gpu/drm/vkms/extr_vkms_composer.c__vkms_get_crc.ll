; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c__vkms_get_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c__vkms_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_composer = type { %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.vkms_gem_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for output frame.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vkms_composer*, %struct.vkms_composer*)* @_vkms_get_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vkms_get_crc(%struct.vkms_composer* %0, %struct.vkms_composer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vkms_composer*, align 8
  %5 = alloca %struct.vkms_composer*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.vkms_gem_object*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.vkms_composer* %0, %struct.vkms_composer** %4, align 8
  store %struct.vkms_composer* %1, %struct.vkms_composer** %5, align 8
  %11 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %12 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %11, i32 0, i32 0
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %6, align 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %14 = call %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer* %13, i32 0)
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %7, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %16 = call %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object* %15)
  store %struct.vkms_gem_object* %16, %struct.vkms_gem_object** %8, align 8
  %17 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %8, align 8
  %18 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %8, align 8
  %29 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %27
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %8, align 8
  %43 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %8, align 8
  %46 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i8* %41, i32 %44, i32 %48)
  %50 = load %struct.vkms_composer*, %struct.vkms_composer** %5, align 8
  %51 = icmp ne %struct.vkms_composer* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.vkms_composer*, %struct.vkms_composer** %5, align 8
  %54 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @compose_cursor(%struct.vkms_composer* %53, %struct.vkms_composer* %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %40
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %60 = call i32 @compute_crc(i8* %58, %struct.vkms_composer* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %36, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @compose_cursor(%struct.vkms_composer*, %struct.vkms_composer*, i8*) #1

declare dso_local i32 @compute_crc(i8*, %struct.vkms_composer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
