; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_plane_surface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_check_plane_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_check_plane_surface(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %6 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %7 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %9, %struct.drm_framebuffer** %4, align 8
  %10 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %11 = call i32 @intel_plane_compute_gtt(%struct.intel_plane_state* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %18 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %78

23:                                               ; preds = %16
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_planar_yuv_format(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %33 = call i32 @skl_check_nv12_aux_surface(%struct.intel_plane_state* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %78

38:                                               ; preds = %31
  br label %70

39:                                               ; preds = %23
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @is_ccs_modifier(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %47 = call i32 @skl_check_ccs_aux_surface(%struct.intel_plane_state* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %78

52:                                               ; preds = %45
  br label %69

53:                                               ; preds = %39
  %54 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %55 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 -4096, i32* %58, align 8
  %59 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %60 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %65 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %53, %52
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %72 = call i32 @skl_check_main_surface(%struct.intel_plane_state* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %75, %50, %36, %22, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @intel_plane_compute_gtt(%struct.intel_plane_state*) #1

declare dso_local i64 @is_planar_yuv_format(i32) #1

declare dso_local i32 @skl_check_nv12_aux_surface(%struct.intel_plane_state*) #1

declare dso_local i64 @is_ccs_modifier(i32) #1

declare dso_local i32 @skl_check_ccs_aux_surface(%struct.intel_plane_state*) #1

declare dso_local i32 @skl_check_main_surface(%struct.intel_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
