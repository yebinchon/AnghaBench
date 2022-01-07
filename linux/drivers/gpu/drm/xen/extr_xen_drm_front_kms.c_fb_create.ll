; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { %struct.xen_drm_front_drm_info* }
%struct.xen_drm_front_drm_info = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32* }
%struct.drm_gem_object = type { i32 }

@fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to lookup GEM object\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Back failed to attach FB %p: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @fb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.xen_drm_front_drm_info*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %13, align 8
  store %struct.xen_drm_front_drm_info* %14, %struct.xen_drm_front_drm_info** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %18 = call %struct.drm_framebuffer* @drm_gem_fb_create_with_funcs(%struct.drm_device* %15, %struct.drm_file* %16, %struct.drm_mode_fb_cmd2* %17, i32* @fb_funcs)
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %9, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %20 = call i64 @IS_ERR_OR_NULL(%struct.drm_framebuffer* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %4, align 8
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %26 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %25, i32 %30)
  store %struct.drm_gem_object* %31, %struct.drm_gem_object** %10, align 8
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %33 = icmp ne %struct.drm_gem_object* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %68

38:                                               ; preds = %24
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %40 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %39)
  %41 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %8, align 8
  %42 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %45 = call i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object* %44)
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %47 = call i32 @xen_drm_front_fb_to_cookie(%struct.drm_framebuffer* %46)
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %49 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %55 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xen_drm_front_fb_attach(i32 %43, i32 %45, i32 %47, i32 %50, i32 %53, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.drm_framebuffer* %63, i32 %64)
  br label %68

66:                                               ; preds = %38
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %67, %struct.drm_framebuffer** %4, align 8
  br label %73

68:                                               ; preds = %62, %34
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %70 = call i32 @drm_gem_fb_destroy(%struct.drm_framebuffer* %69)
  %71 = load i32, i32* %11, align 4
  %72 = call %struct.drm_framebuffer* @ERR_PTR(i32 %71)
  store %struct.drm_framebuffer* %72, %struct.drm_framebuffer** %4, align 8
  br label %73

73:                                               ; preds = %68, %66, %22
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %74
}

declare dso_local %struct.drm_framebuffer* @drm_gem_fb_create_with_funcs(%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.drm_framebuffer*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @xen_drm_front_fb_attach(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object*) #1

declare dso_local i32 @xen_drm_front_fb_to_cookie(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_fb_destroy(%struct.drm_framebuffer*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
