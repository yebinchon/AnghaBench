; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_plane_helper_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_plane_helper_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_gem_object** }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_framebuffer = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_plane_state = type { %struct.dc_plane_state* }
%struct.dc_plane_state = type { i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.ttm_validate_buffer = type { i32, i32, %struct.TYPE_4__* }
%struct.ww_acquire_ctx = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fail to reserve bo (%d)\0A\00", align 1
@DRM_PLANE_TYPE_CURSOR = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to pin framebuffer with error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%p bind failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @dm_plane_helper_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_plane_helper_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.amdgpu_framebuffer*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca %struct.dm_plane_state*, align 8
  %11 = alloca %struct.dm_plane_state*, align 8
  %12 = alloca %struct.list_head, align 4
  %13 = alloca %struct.ttm_validate_buffer, align 8
  %14 = alloca %struct.ww_acquire_ctx, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dc_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 1
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %20, align 8
  %22 = call %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state* %21)
  store %struct.dm_plane_state* %22, %struct.dm_plane_state** %11, align 8
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %24 = call %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state* %23)
  store %struct.dm_plane_state* %24, %struct.dm_plane_state** %10, align 8
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %162

31:                                               ; preds = %2
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call %struct.amdgpu_framebuffer* @to_amdgpu_framebuffer(%struct.TYPE_3__* %34)
  store %struct.amdgpu_framebuffer* %35, %struct.amdgpu_framebuffer** %6, align 8
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %39, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %40, i64 0
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %41, align 8
  store %struct.drm_gem_object* %42, %struct.drm_gem_object** %7, align 8
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %44 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %43)
  store %struct.amdgpu_bo* %44, %struct.amdgpu_bo** %9, align 8
  %45 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %46 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %48)
  store %struct.amdgpu_device* %49, %struct.amdgpu_device** %8, align 8
  %50 = call i32 @INIT_LIST_HEAD(%struct.list_head* %12)
  %51 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %52 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %13, i32 0, i32 2
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %53, align 8
  %54 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %13, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %13, i32 0, i32 1
  %56 = call i32 @list_add(i32* %55, %struct.list_head* %12)
  %57 = call i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx* %14, %struct.list_head* %12, i32 0, i32* null, i32 1)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %31
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %3, align 4
  br label %162

67:                                               ; preds = %31
  %68 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %69 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DRM_PLANE_TYPE_CURSOR, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %75 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %76 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @amdgpu_display_supported_domains(%struct.amdgpu_device* %74, i32 %77)
  store i32 %78, i32* %16, align 4
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %82, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %81
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* @ERESTARTSYS, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %17, align 4
  %97 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %14, %struct.list_head* %12)
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %3, align 4
  br label %162

101:                                              ; preds = %81
  %102 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %103 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %102, i32 0, i32 0
  %104 = call i32 @amdgpu_ttm_alloc_gart(%struct.TYPE_4__* %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %112 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %111)
  %113 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %14, %struct.list_head* %12)
  %114 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %115 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.amdgpu_bo* %114)
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %3, align 4
  br label %162

117:                                              ; preds = %101
  %118 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %119 = call i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo* %118, i32* %15)
  %120 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %14, %struct.list_head* %12)
  %121 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %122 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %121)
  %123 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %6, align 8
  %124 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %126 = call i32 @amdgpu_bo_ref(%struct.amdgpu_bo* %125)
  %127 = load %struct.dm_plane_state*, %struct.dm_plane_state** %10, align 8
  %128 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %127, i32 0, i32 0
  %129 = load %struct.dc_plane_state*, %struct.dc_plane_state** %128, align 8
  %130 = icmp ne %struct.dc_plane_state* %129, null
  br i1 %130, label %131, label %161

131:                                              ; preds = %117
  %132 = load %struct.dm_plane_state*, %struct.dm_plane_state** %11, align 8
  %133 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %132, i32 0, i32 0
  %134 = load %struct.dc_plane_state*, %struct.dc_plane_state** %133, align 8
  %135 = load %struct.dm_plane_state*, %struct.dm_plane_state** %10, align 8
  %136 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %135, i32 0, i32 0
  %137 = load %struct.dc_plane_state*, %struct.dc_plane_state** %136, align 8
  %138 = icmp ne %struct.dc_plane_state* %134, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %131
  %140 = load %struct.dm_plane_state*, %struct.dm_plane_state** %10, align 8
  %141 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %140, i32 0, i32 0
  %142 = load %struct.dc_plane_state*, %struct.dc_plane_state** %141, align 8
  store %struct.dc_plane_state* %142, %struct.dc_plane_state** %18, align 8
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %144 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %6, align 8
  %145 = load %struct.dc_plane_state*, %struct.dc_plane_state** %18, align 8
  %146 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dc_plane_state*, %struct.dc_plane_state** %18, align 8
  %149 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.dc_plane_state*, %struct.dc_plane_state** %18, align 8
  %153 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %152, i32 0, i32 3
  %154 = load %struct.dc_plane_state*, %struct.dc_plane_state** %18, align 8
  %155 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %154, i32 0, i32 2
  %156 = load %struct.dc_plane_state*, %struct.dc_plane_state** %18, align 8
  %157 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %156, i32 0, i32 1
  %158 = load %struct.dc_plane_state*, %struct.dc_plane_state** %18, align 8
  %159 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %158, i32 0, i32 0
  %160 = call i32 @fill_plane_buffer_attributes(%struct.amdgpu_device* %143, %struct.amdgpu_framebuffer* %144, i32 %147, i32 %150, i32 %151, i32* %153, i32* %155, i32* %157, i32* %159)
  br label %161

161:                                              ; preds = %139, %131, %117
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %110, %98, %60, %29
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.amdgpu_framebuffer* @to_amdgpu_framebuffer(%struct.TYPE_3__*) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx*, %struct.list_head*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_display_supported_domains(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #1

declare dso_local i32 @amdgpu_ttm_alloc_gart(%struct.TYPE_4__*) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_get_tiling_flags(%struct.amdgpu_bo*, i32*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_ref(%struct.amdgpu_bo*) #1

declare dso_local i32 @fill_plane_buffer_attributes(%struct.amdgpu_device*, %struct.amdgpu_framebuffer*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
