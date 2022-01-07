; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_new_framebuffer_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_new_framebuffer_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vmw_surface = type { i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.vmw_framebuffer = type { i32, i32 }
%struct.drm_mode_fb_cmd2 = type { i64, i64, i32, i32* }
%struct.vmw_framebuffer_surface = type { i32, %struct.vmw_framebuffer, i32 }
%struct.drm_format_name_buf = type { i32 }

@vmw_du_legacy = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Incompatible surface dimensions for requested mode.\0A\00", align 1
@SVGA3D_A8R8G8B8 = common dso_local global i32 0, align 4
@SVGA3D_X8R8G8B8 = common dso_local global i32 0, align 4
@SVGA3D_R5G6B5 = common dso_local global i32 0, align 4
@SVGA3D_A1R5G5B5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid pixel format: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid surface format for requested mode.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_framebuffer_surface_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_surface*, %struct.vmw_framebuffer**, %struct.drm_mode_fb_cmd2*, i32)* @vmw_kms_new_framebuffer_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_kms_new_framebuffer_surface(%struct.vmw_private* %0, %struct.vmw_surface* %1, %struct.vmw_framebuffer** %2, %struct.drm_mode_fb_cmd2* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_surface*, align 8
  %9 = alloca %struct.vmw_framebuffer**, align 8
  %10 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.vmw_framebuffer_surface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_format_name_buf, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.vmw_surface* %1, %struct.vmw_surface** %8, align 8
  store %struct.vmw_framebuffer** %2, %struct.vmw_framebuffer*** %9, align 8
  store %struct.drm_mode_fb_cmd2* %3, %struct.drm_mode_fb_cmd2** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 2
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %12, align 8
  %20 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %21 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @vmw_du_legacy, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %168

28:                                               ; preds = %5
  %29 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %30 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %168

40:                                               ; preds = %28
  %41 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %42 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %76, label %47

47:                                               ; preds = %40
  %48 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %49 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %76, label %52

52:                                               ; preds = %47
  %53 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %54 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %10, align 8
  %58 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %52
  %62 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %63 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %10, align 8
  %67 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %72 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 1
  br label %76

76:                                               ; preds = %70, %61, %52, %47, %40
  %77 = phi i1 [ true, %61 ], [ true, %52 ], [ true, %47 ], [ true, %40 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %168

85:                                               ; preds = %76
  %86 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %10, align 8
  %87 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %97 [
    i32 131, label %89
    i32 128, label %91
    i32 130, label %93
    i32 129, label %95
  ]

89:                                               ; preds = %85
  %90 = load i32, i32* @SVGA3D_A8R8G8B8, align 4
  store i32 %90, i32* %14, align 4
  br label %105

91:                                               ; preds = %85
  %92 = load i32, i32* @SVGA3D_X8R8G8B8, align 4
  store i32 %92, i32* %14, align 4
  br label %105

93:                                               ; preds = %85
  %94 = load i32, i32* @SVGA3D_R5G6B5, align 4
  store i32 %94, i32* %14, align 4
  br label %105

95:                                               ; preds = %85
  %96 = load i32, i32* @SVGA3D_A1R5G5B5, align 4
  store i32 %96, i32* %14, align 4
  br label %105

97:                                               ; preds = %85
  %98 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %10, align 8
  %99 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @drm_get_format_name(i32 %100, %struct.drm_format_name_buf* %16)
  %102 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %168

105:                                              ; preds = %95, %93, %91, %89
  %106 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %107 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %113 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %168

120:                                              ; preds = %110, %105
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.vmw_framebuffer_surface* @kzalloc(i32 16, i32 %121)
  store %struct.vmw_framebuffer_surface* %122, %struct.vmw_framebuffer_surface** %13, align 8
  %123 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %124 = icmp ne %struct.vmw_framebuffer_surface* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %15, align 4
  br label %166

128:                                              ; preds = %120
  %129 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %130 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %131 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %131, i32 0, i32 0
  %133 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %10, align 8
  %134 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %129, i32* %132, %struct.drm_mode_fb_cmd2* %133)
  %135 = load %struct.vmw_surface*, %struct.vmw_surface** %8, align 8
  %136 = call i32 @vmw_surface_reference(%struct.vmw_surface* %135)
  %137 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %138 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %10, align 8
  %140 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %145 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %149 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %151 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %150, i32 0, i32 1
  %152 = load %struct.vmw_framebuffer**, %struct.vmw_framebuffer*** %9, align 8
  store %struct.vmw_framebuffer* %151, %struct.vmw_framebuffer** %152, align 8
  %153 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %154 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %155 = getelementptr inbounds %struct.vmw_framebuffer_surface, %struct.vmw_framebuffer_surface* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %155, i32 0, i32 0
  %157 = call i32 @drm_framebuffer_init(%struct.drm_device* %153, i32* %156, i32* @vmw_framebuffer_surface_funcs)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %128
  br label %162

161:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %168

162:                                              ; preds = %160
  %163 = call i32 @vmw_surface_unreference(%struct.vmw_surface** %8)
  %164 = load %struct.vmw_framebuffer_surface*, %struct.vmw_framebuffer_surface** %13, align 8
  %165 = call i32 @kfree(%struct.vmw_framebuffer_surface* %164)
  br label %166

166:                                              ; preds = %162, %125
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %166, %161, %116, %97, %81, %37, %25
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local %struct.vmw_framebuffer_surface* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @vmw_surface_reference(%struct.vmw_surface*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @vmw_surface_unreference(%struct.vmw_surface**) #1

declare dso_local i32 @kfree(%struct.vmw_framebuffer_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
