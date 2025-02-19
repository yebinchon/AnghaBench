; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*)* @g4x_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_disable_plane(%struct.intel_plane* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.intel_plane* %0, %struct.intel_plane** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %9 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  %14 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DVSCNTR(i32 %21)
  %23 = call i32 @I915_WRITE_FW(i32 %22, i32 0)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DVSSCALE(i32 %24)
  %26 = call i32 @I915_WRITE_FW(i32 %25, i32 0)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DVSSURF(i32 %27)
  %29 = call i32 @I915_WRITE_FW(i32 %28, i32 0)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @DVSCNTR(i32) #1

declare dso_local i32 @DVSSCALE(i32) #1

declare dso_local i32 @DVSSURF(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
