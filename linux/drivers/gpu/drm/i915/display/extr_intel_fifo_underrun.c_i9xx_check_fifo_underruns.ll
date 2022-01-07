; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c_i9xx_check_fifo_underruns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fifo_underrun.c_i9xx_check_fifo_underruns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPE_FIFO_UNDERRUN_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pipe %c underrun\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @i9xx_check_fifo_underruns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_check_fifo_underruns(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %6 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PIPESTAT(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @I915_READ(i32 %18)
  %20 = load i32, i32* @PIPE_FIFO_UNDERRUN_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i915_pipestat_enable_mask(%struct.drm_i915_private* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PIPE_FIFO_UNDERRUN_STATUS, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @I915_WRITE(i32 %30, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @POSTING_READ(i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %39 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @trace_intel_cpu_fifo_underrun(%struct.drm_i915_private* %37, i32 %40)
  %42 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %43 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pipe_name(i32 %44)
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @PIPESTAT(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @i915_pipestat_enable_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @trace_intel_cpu_fifo_underrun(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
