; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fb_xy_to_linear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_fb_xy_to_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_fb_xy_to_linear(i32 %0, i32 %1, %struct.intel_plane_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %13 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %14, align 8
  store %struct.drm_framebuffer* %15, %struct.drm_framebuffer** %9, align 8
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %17 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.intel_plane_state*, %struct.intel_plane_state** %7, align 8
  %26 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul i32 %36, %37
  %39 = add i32 %35, %38
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
