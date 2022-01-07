; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fb_stride_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fb_stride_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i64*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_FORMAT_MOD_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_framebuffer*, i32)* @intel_fb_stride_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_fb_stride_alignment(%struct.drm_framebuffer* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %9 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DRM_FORMAT_MOD_LINEAR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @intel_plane_fb_max_stride(%struct.drm_i915_private* %18, i32 %23, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = call i64 @intel_tile_size(%struct.drm_i915_private* %38)
  store i64 %39, i64* %3, align 8
  br label %45

40:                                               ; preds = %17
  store i64 64, i64* %3, align 8
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @intel_tile_width_bytes(%struct.drm_framebuffer* %42, i32 %43)
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %41, %40, %37
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_plane_fb_max_stride(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @intel_tile_size(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_tile_width_bytes(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
