; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_update_clrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_vlv_update_clrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.intel_plane = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i64 0, align 8
@SIN_0 = common dso_local global i32 0, align 4
@COS_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*)* @vlv_update_clrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_update_clrc(%struct.intel_plane_state* %0) #0 {
  %2 = alloca %struct.intel_plane_state*, align 8
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %2, align 8
  %13 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %14 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.intel_plane* @to_intel_plane(i32 %16)
  store %struct.intel_plane* %17, %struct.intel_plane** %3, align 8
  %18 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %19 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.drm_i915_private* @to_i915(i32 %21)
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %4, align 8
  %23 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %24 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %25, align 8
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %5, align 8
  %27 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %28 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %31 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %1
  %40 = load %struct.intel_plane_state*, %struct.intel_plane_state** %2, align 8
  %41 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = call i32 @DIV_ROUND_CLOSEST(i32 16320, i32 219)
  store i32 %47, i32* %8, align 4
  %48 = call i32 @DIV_ROUND_CLOSEST(i32 4080, i32 219)
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  %50 = call i32 @DIV_ROUND_CLOSEST(i32 16384, i32 112)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @SIN_0, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @COS_0, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %12, align 4
  br label %64

57:                                               ; preds = %39, %1
  store i32 64, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 128, i32* %10, align 4
  %58 = load i32, i32* @SIN_0, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @COS_0, align 4
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %57, %46
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @SPCLRC0(i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @SP_CONTRAST(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @SP_BRIGHTNESS(i32 %70)
  %72 = or i32 %69, %71
  %73 = call i32 @I915_WRITE_FW(i32 %67, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @SPCLRC1(i32 %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @SP_SH_SIN(i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @SP_SH_COS(i32 %79)
  %81 = or i32 %78, %80
  %82 = call i32 @I915_WRITE_FW(i32 %76, i32 %81)
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SPCLRC0(i32, i32) #1

declare dso_local i32 @SP_CONTRAST(i32) #1

declare dso_local i32 @SP_BRIGHTNESS(i32) #1

declare dso_local i32 @SPCLRC1(i32, i32) #1

declare dso_local i32 @SP_SH_SIN(i32) #1

declare dso_local i32 @SP_SH_COS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
