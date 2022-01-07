; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_new_framebuffer_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_new_framebuffer_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vmw_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_framebuffer = type { i32, i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32, i32* }
%struct.vmw_framebuffer_bo = type { %struct.vmw_framebuffer, i32 }
%struct.drm_format_name_buf = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Screen buffer object size is too small for requested mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vmw_du_screen_object = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid pixel format: %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_framebuffer_bo_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_buffer_object*, %struct.vmw_framebuffer**, %struct.drm_mode_fb_cmd2*)* @vmw_kms_new_framebuffer_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_kms_new_framebuffer_bo(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, %struct.vmw_framebuffer** %2, %struct.drm_mode_fb_cmd2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca %struct.vmw_framebuffer**, align 8
  %9 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.vmw_framebuffer_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_format_name_buf, align 4
  %14 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %7, align 8
  store %struct.vmw_framebuffer** %2, %struct.vmw_framebuffer*** %8, align 8
  store %struct.drm_mode_fb_cmd2* %3, %struct.drm_mode_fb_cmd2** %9, align 8
  %15 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %16 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %10, align 8
  %18 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %19 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %20, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %29 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = mul i32 %31, %32
  %34 = icmp ugt i32 %27, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %111

42:                                               ; preds = %4
  %43 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %44 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @vmw_du_screen_object, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %50 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %54 [
    i32 128, label %52
    i32 131, label %52
    i32 129, label %53
    i32 130, label %53
  ]

52:                                               ; preds = %48, %48
  br label %62

53:                                               ; preds = %48, %48
  br label %62

54:                                               ; preds = %48
  %55 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @drm_get_format_name(i32 %57, %struct.drm_format_name_buf* %13)
  %59 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %111

62:                                               ; preds = %53, %52
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.vmw_framebuffer_bo* @kzalloc(i32 16, i32 %64)
  store %struct.vmw_framebuffer_bo* %65, %struct.vmw_framebuffer_bo** %11, align 8
  %66 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %67 = icmp ne %struct.vmw_framebuffer_bo* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %109

71:                                               ; preds = %63
  %72 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %73 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %74 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %74, i32 0, i32 1
  %76 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %77 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %72, i32* %75, %struct.drm_mode_fb_cmd2* %76)
  %78 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %79 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %82 = call i32 @vmw_bo_reference(%struct.vmw_buffer_object* %81)
  %83 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %84 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %9, align 8
  %86 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %91 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %94 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %93, i32 0, i32 0
  %95 = load %struct.vmw_framebuffer**, %struct.vmw_framebuffer*** %8, align 8
  store %struct.vmw_framebuffer* %94, %struct.vmw_framebuffer** %95, align 8
  %96 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %97 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %98 = getelementptr inbounds %struct.vmw_framebuffer_bo, %struct.vmw_framebuffer_bo* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %98, i32 0, i32 1
  %100 = call i32 @drm_framebuffer_init(%struct.drm_device* %96, i32* %99, i32* @vmw_framebuffer_bo_funcs)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %71
  br label %105

104:                                              ; preds = %71
  store i32 0, i32* %5, align 4
  br label %111

105:                                              ; preds = %103
  %106 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %7)
  %107 = load %struct.vmw_framebuffer_bo*, %struct.vmw_framebuffer_bo** %11, align 8
  %108 = call i32 @kfree(%struct.vmw_framebuffer_bo* %107)
  br label %109

109:                                              ; preds = %105, %68
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %104, %54, %38
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local %struct.vmw_framebuffer_bo* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @vmw_bo_reference(%struct.vmw_buffer_object*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

declare dso_local i32 @kfree(%struct.vmw_framebuffer_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
