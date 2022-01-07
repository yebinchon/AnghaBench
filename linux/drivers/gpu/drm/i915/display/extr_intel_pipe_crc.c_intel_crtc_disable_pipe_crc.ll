; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_intel_crtc_disable_pipe_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_intel_crtc_disable_pipe_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.drm_crtc }
%struct.drm_crtc = type { i64, i32 }
%struct.drm_i915_private = type { %struct.intel_pipe_crc* }
%struct.intel_pipe_crc = type { i32, i32 }

@INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_crtc_disable_pipe_crc(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_pipe_crc*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %6 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %6, i32 0, i32 0
  store %struct.drm_crtc* %7, %struct.drm_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %13, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %14, i64 %17
  store %struct.intel_pipe_crc* %18, %struct.intel_pipe_crc** %5, align 8
  %19 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* @INT_MIN, align 4
  %23 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %5, align 8
  %24 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.intel_pipe_crc*, %struct.intel_pipe_crc** %5, align 8
  %26 = getelementptr inbounds %struct.intel_pipe_crc, %struct.intel_pipe_crc* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @PIPE_CRC_CTL(i64 %30)
  %32 = call i32 @I915_WRITE(i32 %31, i32 0)
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PIPE_CRC_CTL(i64 %35)
  %37 = call i32 @POSTING_READ(i32 %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = call i32 @intel_synchronize_irq(%struct.drm_i915_private* %38)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_CRC_CTL(i64) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_synchronize_irq(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
