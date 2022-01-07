; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.amdgpu_gtt_mgr*, i32 }
%struct.amdgpu_gtt_mgr = type { i32, i32, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_GTT_MAX_TRANSFER_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GTT_NUM_TRANSFER_WINDOWS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@dev_attr_mem_info_gtt_total = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to create device file mem_info_gtt_total\0A\00", align 1
@dev_attr_mem_info_gtt_used = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to create device file mem_info_gtt_used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, i64)* @amdgpu_gtt_mgr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_gtt_mgr_init(%struct.ttm_mem_type_manager* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_gtt_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %13)
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.amdgpu_gtt_mgr* @kzalloc(i32 12, i32 %15)
  store %struct.amdgpu_gtt_mgr* %16, %struct.amdgpu_gtt_mgr** %7, align 8
  %17 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %7, align 8
  %18 = icmp ne %struct.amdgpu_gtt_mgr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  %23 = load i32, i32* @AMDGPU_GTT_MAX_TRANSFER_SIZE, align 4
  %24 = load i32, i32* @AMDGPU_GTT_NUM_TRANSFER_WINDOWS, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %7, align 8
  %35 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %34, i32 0, i32 2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @drm_mm_init(i32* %35, i32 %36, i32 %37)
  %39 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @atomic64_set(i32* %43, i64 %44)
  %46 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %7, align 8
  %47 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %47, i32 0, i32 0
  store %struct.amdgpu_gtt_mgr* %46, %struct.amdgpu_gtt_mgr** %48, align 8
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_create_file(i32 %51, i32* @dev_attr_mem_info_gtt_total)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %22
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %69

58:                                               ; preds = %22
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_create_file(i32 %61, i32* @dev_attr_mem_info_gtt_used)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %65, %55, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local %struct.amdgpu_gtt_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
