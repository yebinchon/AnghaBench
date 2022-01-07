; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_create_bo_proxy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_create_bo_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32*, i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_surface = type { %struct.vmw_resource }
%struct.vmw_resource = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_vmw_size = type { i32, i32, i32, i32 }
%struct.drm_format_name_buf = type { i32 }

@SVGA3D_X8R8G8B8 = common dso_local global i32 0, align 4
@SVGA3D_R5G6B5 = common dso_local global i32 0, align 4
@SVGA3D_P8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid framebuffer format %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SVGA3D_MS_PATTERN_NONE = common dso_local global i32 0, align 4
@SVGA3D_MS_QUALITY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to allocate proxy content buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.vmw_buffer_object*, %struct.vmw_surface**)* @vmw_create_bo_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_create_bo_proxy(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.vmw_buffer_object* %2, %struct.vmw_surface** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %8 = alloca %struct.vmw_buffer_object*, align 8
  %9 = alloca %struct.vmw_surface**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_vmw_size, align 8
  %12 = alloca %struct.vmw_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_format_name_buf, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %7, align 8
  store %struct.vmw_buffer_object* %2, %struct.vmw_buffer_object** %8, align 8
  store %struct.vmw_surface** %3, %struct.vmw_surface*** %9, align 8
  %16 = bitcast %struct.drm_vmw_size* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %26 [
    i32 131, label %20
    i32 128, label %20
    i32 130, label %22
    i32 129, label %22
    i32 8, label %24
  ]

20:                                               ; preds = %4, %4
  %21 = load i32, i32* @SVGA3D_X8R8G8B8, align 4
  store i32 %21, i32* %10, align 4
  store i32 4, i32* %13, align 4
  br label %34

22:                                               ; preds = %4, %4
  %23 = load i32, i32* @SVGA3D_R5G6B5, align 4
  store i32 %23, i32* %10, align 4
  store i32 2, i32* %13, align 4
  br label %34

24:                                               ; preds = %4
  %25 = load i32, i32* @SVGA3D_P8, align 4
  store i32 %25, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %34

26:                                               ; preds = %4
  %27 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @drm_get_format_name(i32 %29, %struct.drm_format_name_buf* %14)
  %31 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %86

34:                                               ; preds = %24, %22, %20
  %35 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %13, align 4
  %41 = udiv i32 %39, %40
  %42 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %11, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %7, align 8
  %44 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %11, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %11, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SVGA3D_MS_PATTERN_NONE, align 4
  %51 = load i32, i32* @SVGA3D_MS_QUALITY_NONE, align 4
  %52 = load %struct.vmw_surface**, %struct.vmw_surface*** %9, align 8
  %53 = call i32 @vmw_surface_gb_priv_define(%struct.drm_device* %48, i32 0, i32 0, i32 %49, i32 1, i32 1, i32 0, i32 0, %struct.drm_vmw_size* byval(%struct.drm_vmw_size) align 8 %11, i32 %50, i32 %51, %struct.vmw_surface** %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %34
  %57 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %34
  %60 = load %struct.vmw_surface**, %struct.vmw_surface*** %9, align 8
  %61 = load %struct.vmw_surface*, %struct.vmw_surface** %60, align 8
  %62 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %61, i32 0, i32 0
  store %struct.vmw_resource* %62, %struct.vmw_resource** %12, align 8
  %63 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %64 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %69 = call i32 @vmw_resource_reserve(%struct.vmw_resource* %68, i32 0, i32 1)
  %70 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %71 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %70, i32 0, i32 2
  %72 = call i32 @vmw_bo_unreference(i32* %71)
  %73 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %8, align 8
  %74 = call i32 @vmw_bo_reference(%struct.vmw_buffer_object* %73)
  %75 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %76 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %78 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %80 = call i32 @vmw_resource_unreserve(%struct.vmw_resource* %79, i32 0, i32 0, i32 0, i32* null, i32 0)
  %81 = load %struct.vmw_resource*, %struct.vmw_resource** %12, align 8
  %82 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %59, %56, %26
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #2

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #2

declare dso_local i32 @vmw_surface_gb_priv_define(%struct.drm_device*, i32, i32, i32, i32, i32, i32, i32, %struct.drm_vmw_size* byval(%struct.drm_vmw_size) align 8, i32, i32, %struct.vmw_surface**) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @vmw_resource_reserve(%struct.vmw_resource*, i32, i32) #2

declare dso_local i32 @vmw_bo_unreference(i32*) #2

declare dso_local i32 @vmw_bo_reference(%struct.vmw_buffer_object*) #2

declare dso_local i32 @vmw_resource_unreserve(%struct.vmw_resource*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
