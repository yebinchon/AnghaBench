; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_wait_for_pipe_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_wait_for_pipe_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@I965_PIPECONF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pipe_off wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @intel_wait_for_pipe_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_wait_for_pipe_off(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %3, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @PIPECONF(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @I965_PIPECONF_ACTIVE, align 4
  %29 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %26, i32 %27, i32 %28, i32 100)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %20
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %36 = call i32 @intel_wait_for_pipe_scanline_stopped(%struct.intel_crtc* %35)
  br label %37

37:                                               ; preds = %34, %33
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @intel_wait_for_pipe_scanline_stopped(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
