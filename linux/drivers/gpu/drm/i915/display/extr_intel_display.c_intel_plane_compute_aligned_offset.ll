; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_compute_aligned_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_compute_aligned_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.intel_plane = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PLANE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.intel_plane_state*, i32)* @intel_plane_compute_aligned_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_plane_compute_aligned_offset(i32* %0, i32* %1, %struct.intel_plane_state* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.intel_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_plane*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %16 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.intel_plane* @to_intel_plane(i32 %18)
  store %struct.intel_plane* %19, %struct.intel_plane** %9, align 8
  %20 = load %struct.intel_plane*, %struct.intel_plane** %9, align 8
  %21 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.drm_i915_private* @to_i915(i32 %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %10, align 8
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %27, align 8
  store %struct.drm_framebuffer* %28, %struct.drm_framebuffer** %11, align 8
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %30 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.intel_plane*, %struct.intel_plane** %9, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PLANE_CURSOR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %48 = call i32 @intel_cursor_alignment(%struct.drm_i915_private* %47)
  store i32 %48, i32* %14, align 4
  br label %53

49:                                               ; preds = %4
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @intel_surf_alignment(%struct.drm_framebuffer* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @intel_compute_aligned_offset(%struct.drm_i915_private* %54, i32* %55, i32* %56, %struct.drm_framebuffer* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  ret i32 %62
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_cursor_alignment(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_surf_alignment(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @intel_compute_aligned_offset(%struct.drm_i915_private*, i32*, i32*, %struct.drm_framebuffer*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
