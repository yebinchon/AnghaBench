; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }

@DRM_FORMAT_C8 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %10 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DIV_ROUND_UP(i32 %12, i32 8)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %21 [
    i32 1, label %15
    i32 2, label %17
    i32 4, label %19
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @DRM_FORMAT_C8, align 4
  store i32 %16, i32* %9, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  store i32 %18, i32* %9, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  store i32 %20, i32* %9, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %19, %17, %15
  %25 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i8* @ALIGN(i32 %29, i32 64)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = call i32 @to_i915(%struct.drm_device* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @DRM_FORMAT_MOD_LINEAR, align 4
  %41 = call i32 @intel_plane_fb_max_stride(i32 %38, i32 %39, i32 %40)
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %24
  %44 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %45 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @ALIGN(i32 %46, i32 4096)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %50 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %24
  %52 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %53 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %56 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %60 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %62 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %63 = call i32 @to_i915(%struct.drm_device* %62)
  %64 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %65 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %64, i32 0, i32 2
  %66 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %67 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %66, i32 0, i32 4
  %68 = call i32 @i915_gem_create(%struct.drm_file* %61, i32 %63, i32* %65, i32* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %51, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @intel_plane_fb_max_stride(i32, i32, i32) #1

declare dso_local i32 @to_i915(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_create(%struct.drm_file*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
