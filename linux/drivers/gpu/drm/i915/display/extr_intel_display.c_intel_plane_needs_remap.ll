; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_needs_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_needs_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_plane = type { i64 (%struct.intel_plane*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @intel_plane_needs_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_plane_needs_remap(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %9 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %10 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_plane* @to_intel_plane(i32 %12)
  store %struct.intel_plane* %13, %struct.intel_plane** %4, align 8
  %14 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %15 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %5, align 8
  %18 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %23 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

28:                                               ; preds = %1
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %30 = call i32 @intel_plane_can_remap(%struct.intel_plane_state* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %55

33:                                               ; preds = %28
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @intel_fb_pitch(%struct.drm_framebuffer* %34, i32 0, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %38 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %37, i32 0, i32 0
  %39 = load i64 (%struct.intel_plane*, i32, i32, i32)*, i64 (%struct.intel_plane*, i32, i32, i32)** %38, align 8
  %40 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %47 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 %39(%struct.intel_plane* %40, i32 %45, i32 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %33, %32, %27
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local i32 @intel_plane_can_remap(%struct.intel_plane_state*) #1

declare dso_local i64 @intel_fb_pitch(%struct.drm_framebuffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
