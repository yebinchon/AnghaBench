; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_fb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_fb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32* }
%struct.vmw_private = type { i32, i32, i32 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_framebuffer = type { %struct.drm_framebuffer, %struct.ttm_base_object* }
%struct.ttm_base_object = type { i32 }
%struct.vmw_surface = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.TYPE_2__ = type { %struct.ttm_object_file* }

@.str = private unnamed_addr constant [46 x i8] c"Could not locate requested kms frame buffer.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Surface size cannot exceed %dx%d\00", align 1
@SVGA_CAP_3D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to create vmw_framebuffer: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_file*, %struct.drm_mode_fb_cmd2*)* @vmw_kms_fb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @vmw_kms_fb_create(%struct.drm_device* %0, %struct.drm_file* %1, %struct.drm_mode_fb_cmd2* %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.ttm_object_file*, align 8
  %10 = alloca %struct.vmw_framebuffer*, align 8
  %11 = alloca %struct.vmw_surface*, align 8
  %12 = alloca %struct.vmw_buffer_object*, align 8
  %13 = alloca %struct.ttm_base_object*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %15)
  store %struct.vmw_private* %16, %struct.vmw_private** %8, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %18 = call %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ttm_object_file*, %struct.ttm_object_file** %19, align 8
  store %struct.ttm_object_file* %20, %struct.ttm_object_file** %9, align 8
  store %struct.vmw_framebuffer* null, %struct.vmw_framebuffer** %10, align 8
  store %struct.vmw_surface* null, %struct.vmw_surface** %11, align 8
  store %struct.vmw_buffer_object* null, %struct.vmw_buffer_object** %12, align 8
  %21 = load %struct.ttm_object_file*, %struct.ttm_object_file** %9, align 8
  %22 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ttm_base_object* @ttm_base_object_lookup(%struct.ttm_object_file* %21, i32 %26)
  store %struct.ttm_base_object* %27, %struct.ttm_base_object** %13, align 8
  %28 = load %struct.ttm_base_object*, %struct.ttm_base_object** %13, align 8
  %29 = icmp eq %struct.ttm_base_object* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.drm_framebuffer* @ERR_PTR(i32 %36)
  store %struct.drm_framebuffer* %37, %struct.drm_framebuffer** %4, align 8
  br label %118

38:                                               ; preds = %3
  %39 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %40 = load %struct.ttm_object_file*, %struct.ttm_object_file** %9, align 8
  %41 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %42 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vmw_user_lookup_handle(%struct.vmw_private* %39, %struct.ttm_object_file* %40, i32 %45, %struct.vmw_surface** %11, %struct.vmw_buffer_object** %12)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %92

50:                                               ; preds = %38
  %51 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %12, align 8
  %52 = icmp ne %struct.vmw_buffer_object* %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %50
  %54 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %55 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %59 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vmw_kms_srf_ok(%struct.vmw_private* %54, i32 %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %53
  %64 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %65 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %68 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  br label %92

71:                                               ; preds = %53, %50
  %72 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %73 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %12, align 8
  %74 = load %struct.vmw_surface*, %struct.vmw_surface** %11, align 8
  %75 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %76 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SVGA_CAP_3D, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %84 = call %struct.vmw_framebuffer* @vmw_kms_new_framebuffer(%struct.vmw_private* %72, %struct.vmw_buffer_object* %73, %struct.vmw_surface* %74, i32 %82, %struct.drm_mode_fb_cmd2* %83)
  store %struct.vmw_framebuffer* %84, %struct.vmw_framebuffer** %10, align 8
  %85 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %86 = call i64 @IS_ERR(%struct.vmw_framebuffer* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %90 = call i32 @PTR_ERR(%struct.vmw_framebuffer* %89)
  store i32 %90, i32* %14, align 4
  br label %92

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %88, %63, %49
  %93 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %12, align 8
  %94 = icmp ne %struct.vmw_buffer_object* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %12)
  br label %97

97:                                               ; preds = %95, %92
  %98 = load %struct.vmw_surface*, %struct.vmw_surface** %11, align 8
  %99 = icmp ne %struct.vmw_surface* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @vmw_surface_unreference(%struct.vmw_surface** %11)
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = call i32 @ttm_base_object_unref(%struct.ttm_base_object** %13)
  %109 = load i32, i32* %14, align 4
  %110 = call %struct.drm_framebuffer* @ERR_PTR(i32 %109)
  store %struct.drm_framebuffer* %110, %struct.drm_framebuffer** %4, align 8
  br label %118

111:                                              ; preds = %102
  %112 = load %struct.ttm_base_object*, %struct.ttm_base_object** %13, align 8
  %113 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %114 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %113, i32 0, i32 1
  store %struct.ttm_base_object* %112, %struct.ttm_base_object** %114, align 8
  br label %115

115:                                              ; preds = %111
  %116 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %10, align 8
  %117 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %116, i32 0, i32 0
  store %struct.drm_framebuffer* %117, %struct.drm_framebuffer** %4, align 8
  br label %118

118:                                              ; preds = %115, %105, %33
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %119
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local %struct.ttm_base_object* @ttm_base_object_lookup(%struct.ttm_object_file*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

declare dso_local i32 @vmw_user_lookup_handle(%struct.vmw_private*, %struct.ttm_object_file*, i32, %struct.vmw_surface**, %struct.vmw_buffer_object**) #1

declare dso_local i32 @vmw_kms_srf_ok(%struct.vmw_private*, i32, i32) #1

declare dso_local %struct.vmw_framebuffer* @vmw_kms_new_framebuffer(%struct.vmw_private*, %struct.vmw_buffer_object*, %struct.vmw_surface*, i32, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i64 @IS_ERR(%struct.vmw_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_framebuffer*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

declare dso_local i32 @vmw_surface_unreference(%struct.vmw_surface**) #1

declare dso_local i32 @ttm_base_object_unref(%struct.ttm_base_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
