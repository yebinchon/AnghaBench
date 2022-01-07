; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i845_update_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i845_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_plane_state = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@CURSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @i845_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i845_update_cursor(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %15 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %16 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %20 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %21 = icmp ne %struct.intel_plane_state* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %24 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %30 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %38 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = call i64 @i845_cursor_ctl_crtc(%struct.intel_crtc_state* %40)
  %42 = or i64 %39, %41
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = shl i32 %43, 12
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %44, %45
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  %48 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %49 = call i64 @intel_cursor_base(%struct.intel_plane_state* %48)
  store i64 %49, i64* %9, align 8
  %50 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %51 = call i64 @intel_cursor_position(%struct.intel_plane_state* %50)
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %28, %22, %3
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %59 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %52
  %65 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %66 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %73 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %71, %64, %52
  %79 = load i32, i32* @PIPE_A, align 4
  %80 = call i32 @CURCNTR(i32 %79)
  %81 = call i32 @I915_WRITE_FW(i32 %80, i64 0)
  %82 = load i32, i32* @PIPE_A, align 4
  %83 = call i32 @CURBASE(i32 %82)
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @I915_WRITE_FW(i32 %83, i64 %84)
  %86 = load i32, i32* @CURSIZE, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @I915_WRITE_FW(i32 %86, i64 %87)
  %89 = load i32, i32* @PIPE_A, align 4
  %90 = call i32 @CURPOS(i32 %89)
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @I915_WRITE_FW(i32 %90, i64 %91)
  %93 = load i32, i32* @PIPE_A, align 4
  %94 = call i32 @CURCNTR(i32 %93)
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @I915_WRITE_FW(i32 %94, i64 %95)
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %99 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %103 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %107 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i64 %105, i64* %108, align 8
  br label %114

109:                                              ; preds = %71
  %110 = load i32, i32* @PIPE_A, align 4
  %111 = call i32 @CURPOS(i32 %110)
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @I915_WRITE_FW(i32 %111, i64 %112)
  br label %114

114:                                              ; preds = %109, %78
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %116 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @i845_cursor_ctl_crtc(%struct.intel_crtc_state*) #1

declare dso_local i64 @intel_cursor_base(%struct.intel_plane_state*) #1

declare dso_local i64 @intel_cursor_position(%struct.intel_plane_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i64) #1

declare dso_local i32 @CURCNTR(i32) #1

declare dso_local i32 @CURBASE(i32) #1

declare dso_local i32 @CURPOS(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
