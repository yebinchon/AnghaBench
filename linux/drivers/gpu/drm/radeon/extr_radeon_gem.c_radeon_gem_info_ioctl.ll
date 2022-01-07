; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_info_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_info_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_info = type { i32, i32, i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_info_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.drm_radeon_gem_info*, align 8
  %9 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.drm_radeon_gem_info*
  store %struct.drm_radeon_gem_info* %14, %struct.drm_radeon_gem_info** %8, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %18, align 8
  %20 = load i64, i64* @TTM_PL_VRAM, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %19, i64 %20
  store %struct.ttm_mem_type_manager* %21, %struct.ttm_mem_type_manager** %9, align 8
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %29 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %35 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %40 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %50 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %55 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
