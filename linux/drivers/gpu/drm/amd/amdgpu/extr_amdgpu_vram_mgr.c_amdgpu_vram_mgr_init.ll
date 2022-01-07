; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.amdgpu_vram_mgr*, i32 }
%struct.amdgpu_vram_mgr = type { i32, i32 }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_mem_info_vram_total = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to create device file mem_info_vram_total\0A\00", align 1
@dev_attr_mem_info_vis_vram_total = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to create device file mem_info_vis_vram_total\0A\00", align 1
@dev_attr_mem_info_vram_used = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to create device file mem_info_vram_used\0A\00", align 1
@dev_attr_mem_info_vis_vram_used = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to create device file mem_info_vis_vram_used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i64)* @amdgpu_vram_mgr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vram_mgr_init(%struct.ttm_mem_type_manager* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_vram_mgr*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %11)
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.amdgpu_vram_mgr* @kzalloc(i32 8, i32 %13)
  store %struct.amdgpu_vram_mgr* %14, %struct.amdgpu_vram_mgr** %7, align 8
  %15 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %7, align 8
  %16 = icmp ne %struct.amdgpu_vram_mgr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %7, align 8
  %22 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @drm_mm_init(i32* %22, i32 0, i64 %23)
  %25 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %7, align 8
  %29 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %29, i32 0, i32 0
  store %struct.amdgpu_vram_mgr* %28, %struct.amdgpu_vram_mgr** %30, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_create_file(i32 %33, i32* @dev_attr_mem_info_vram_total)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %20
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_create_file(i32 %43, i32* @dev_attr_mem_info_vis_vram_total)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %40
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_create_file(i32 %53, i32* @dev_attr_mem_info_vram_used)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %50
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_create_file(i32 %63, i32* @dev_attr_mem_info_vis_vram_used)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %57, %47, %37, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local %struct.amdgpu_vram_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
