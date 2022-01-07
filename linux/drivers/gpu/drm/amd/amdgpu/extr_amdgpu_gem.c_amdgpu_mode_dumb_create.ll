; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_mode_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_mode_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i64, i32, i32 }
%struct.drm_gem_object = type { i32 }

@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CLEARED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_mode_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %8, align 8
  %17 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %18 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CLEARED, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DIV_ROUND_UP(i32 %36, i32 8)
  %38 = call i64 @amdgpu_align_pitch(%struct.amdgpu_device* %30, i32 %33, i32 %37, i32 0)
  %39 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %40 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %42 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %46 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %50 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %52 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32 @ALIGN(i32 %53, i32 %54)
  %56 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %57 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @amdgpu_display_supported_domains(%struct.amdgpu_device* %59, i32 %60)
  %62 = call i32 @amdgpu_bo_get_preferred_pin_domain(%struct.amdgpu_device* %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %64 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %65 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @ttm_bo_type_device, align 4
  %70 = call i32 @amdgpu_gem_object_create(%struct.amdgpu_device* %63, i32 %66, i32 0, i32 %67, i32 %68, i32 %69, i32* null, %struct.drm_gem_object** %9)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %29
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %90

76:                                               ; preds = %29
  %77 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %79 = call i32 @drm_gem_handle_create(%struct.drm_file* %77, %struct.drm_gem_object* %78, i32* %10)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %81 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %80)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %4, align 4
  br label %90

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %89 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %84, %73
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @amdgpu_align_pitch(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_bo_get_preferred_pin_domain(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_display_supported_domains(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gem_object_create(%struct.amdgpu_device*, i32, i32, i32, i32, i32, i32*, %struct.drm_gem_object**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
