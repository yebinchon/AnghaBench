; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fb_user_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_fb_user_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32*, i32, i32* }
%struct.drm_gem_object = type { i32 }
%struct.udl_framebuffer = type { %struct.drm_framebuffer }

@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"object size not sufficient for fb %d %zu %d %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_framebuffer* @udl_fb_user_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.udl_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %12, i32 %17)
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %8, align 8
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %20 = icmp eq %struct.drm_gem_object* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.drm_framebuffer* @ERR_PTR(i32 %23)
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %4, align 8
  br label %87

25:                                               ; preds = %3
  %26 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @ALIGN(i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %40 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %25
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %54 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %52, i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.drm_framebuffer* @ERR_PTR(i32 %58)
  store %struct.drm_framebuffer* %59, %struct.drm_framebuffer** %4, align 8
  br label %87

60:                                               ; preds = %25
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.udl_framebuffer* @kzalloc(i32 4, i32 %61)
  store %struct.udl_framebuffer* %62, %struct.udl_framebuffer** %9, align 8
  %63 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %9, align 8
  %64 = icmp eq %struct.udl_framebuffer* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.drm_framebuffer* @ERR_PTR(i32 %67)
  store %struct.drm_framebuffer* %68, %struct.drm_framebuffer** %4, align 8
  br label %87

69:                                               ; preds = %60
  %70 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %71 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %9, align 8
  %72 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %73 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %74 = call i32 @to_udl_bo(%struct.drm_gem_object* %73)
  %75 = call i32 @udl_framebuffer_init(%struct.drm_device* %70, %struct.udl_framebuffer* %71, %struct.drm_mode_fb_cmd2* %72, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %9, align 8
  %80 = call i32 @kfree(%struct.udl_framebuffer* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.drm_framebuffer* @ERR_PTR(i32 %82)
  store %struct.drm_framebuffer* %83, %struct.drm_framebuffer** %4, align 8
  br label %87

84:                                               ; preds = %69
  %85 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %9, align 8
  %86 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %85, i32 0, i32 0
  store %struct.drm_framebuffer* %86, %struct.drm_framebuffer** %4, align 8
  br label %87

87:                                               ; preds = %84, %78, %65, %43, %21
  %88 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %88
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.udl_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @udl_framebuffer_init(%struct.drm_device*, %struct.udl_framebuffer*, %struct.drm_mode_fb_cmd2*, i32) #1

declare dso_local i32 @to_udl_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.udl_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
