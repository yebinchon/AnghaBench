; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_framebuffer_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_framebuffer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i64, i32* }
%struct.nouveau_bo = type { i32 }
%struct.nouveau_framebuffer = type { i32, %struct.nouveau_bo* }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.drm_format_name_buf = type { i32 }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@DRM_FORMAT_YUYV = common dso_local global i64 0, align 8
@DRM_FORMAT_UYVY = common dso_local global i64 0, align 8
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@DRM_FORMAT_NV21 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Unsuitable framebuffer: format: %s; pitches: 0x%x\0A 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_framebuffer_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_framebuffer_new(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.nouveau_bo* %2, %struct.nouveau_framebuffer** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.nouveau_bo*, align 8
  %9 = alloca %struct.nouveau_framebuffer**, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_format_name_buf, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %7, align 8
  store %struct.nouveau_bo* %2, %struct.nouveau_bo** %8, align 8
  store %struct.nouveau_framebuffer** %3, %struct.nouveau_framebuffer*** %9, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %10, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %4
  %25 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRM_FORMAT_YUYV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %24
  %31 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DRM_FORMAT_UYVY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %44 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DRM_FORMAT_NV21, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %42, %36, %30, %24
  %49 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %50 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 63
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %48
  %57 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %58 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 65536
  br i1 %62, label %82, label %63

63:                                               ; preds = %56
  %64 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %65 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %63
  %71 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %72 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %77 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %70, %56, %48
  %83 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %84 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @drm_get_format_name(i64 %85, %struct.drm_format_name_buf* %13)
  %87 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %88 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %93 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %91, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %128

100:                                              ; preds = %70, %63, %42, %4
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.nouveau_framebuffer* @kzalloc(i32 16, i32 %101)
  %103 = load %struct.nouveau_framebuffer**, %struct.nouveau_framebuffer*** %9, align 8
  store %struct.nouveau_framebuffer* %102, %struct.nouveau_framebuffer** %103, align 8
  store %struct.nouveau_framebuffer* %102, %struct.nouveau_framebuffer** %11, align 8
  %104 = icmp ne %struct.nouveau_framebuffer* %102, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %128

108:                                              ; preds = %100
  %109 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %110 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %111 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %110, i32 0, i32 0
  %112 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %113 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %109, i32* %111, %struct.drm_mode_fb_cmd2* %112)
  %114 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %115 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %116 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %115, i32 0, i32 1
  store %struct.nouveau_bo* %114, %struct.nouveau_bo** %116, align 8
  %117 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %118 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %119 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %118, i32 0, i32 0
  %120 = call i32 @drm_framebuffer_init(%struct.drm_device* %117, i32* %119, i32* @nouveau_framebuffer_funcs)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %11, align 8
  %125 = call i32 @kfree(%struct.nouveau_framebuffer* %124)
  br label %126

126:                                              ; preds = %123, %108
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %105, %82
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @drm_get_format_name(i64, %struct.drm_format_name_buf*) #1

declare dso_local %struct.nouveau_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
