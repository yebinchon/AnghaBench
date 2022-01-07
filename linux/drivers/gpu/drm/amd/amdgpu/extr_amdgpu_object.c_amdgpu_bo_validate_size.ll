; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_validate_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_validate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i64 }

@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"BO size %lu > total memory in domain: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i64, i32)* @amdgpu_bo_validate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_bo_validate_size(%struct.amdgpu_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ttm_mem_type_manager* null, %struct.ttm_mem_type_manager** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load i64, i64* @TTM_PL_TT, align 8
  %20 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %19
  store %struct.ttm_mem_type_manager* %20, %struct.ttm_mem_type_manager** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %61

29:                                               ; preds = %13
  br label %53

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %39, align 8
  %41 = load i64, i64* @TTM_PL_VRAM, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %40, i64 %41
  store %struct.ttm_mem_type_manager* %42, %struct.ttm_mem_type_manager** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %61

51:                                               ; preds = %35
  br label %53

52:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %61

53:                                               ; preds = %51, %29
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %53, %52, %50, %28
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
