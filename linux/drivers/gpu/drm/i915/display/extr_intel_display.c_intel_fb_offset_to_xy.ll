; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fb_offset_to_xy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fb_offset_to_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i64, i32*, i32*, i32, i32 }
%struct.drm_i915_private = type { i32 }

@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Misaligned offset 0x%08x for color plane %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Bad offset 0x%08x or pitch %d for color plane %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.drm_framebuffer*, i32)* @intel_fb_offset_to_xy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_fb_offset_to_xy(i32* %0, i32* %1, %struct.drm_framebuffer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %10, align 8
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %17 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %4
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %30 = call i32 @intel_tile_size(%struct.drm_i915_private* %29)
  %31 = srem i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %35 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %118

45:                                               ; preds = %21, %4
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %47 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @drm_framebuffer_plane_height(i32 %48, %struct.drm_framebuffer* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @intel_tile_height(%struct.drm_framebuffer* %53, i32 %54)
  %56 = call i32 @ALIGN(i32 %52, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @u32, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mul_u32_u32(i32 %58, i32 %65)
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %68 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @add_overflows_t(i32 %57, i32 %66, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %45
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %78 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %85 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %90, i32 %91)
  %93 = load i32, i32* @ERANGE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %118

95:                                               ; preds = %45
  %96 = load i32*, i32** %6, align 8
  store i32 0, i32* %96, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %103 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %104 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %111 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @intel_adjust_aligned_offset(i32* %98, i32* %99, %struct.drm_framebuffer* %100, i32 %101, i32 %102, i32 %109, i32 %116, i32 0)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %95, %76, %33
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

declare dso_local i32 @drm_framebuffer_plane_height(i32, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @intel_tile_height(%struct.drm_framebuffer*, i32) #1

declare dso_local i64 @add_overflows_t(i32, i32, i32) #1

declare dso_local i32 @mul_u32_u32(i32, i32) #1

declare dso_local i32 @intel_adjust_aligned_offset(i32*, i32*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
