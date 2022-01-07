; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_disable_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_disable_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"disabling pipe %c\0A\00", align 1
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_DOUBLE_WIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @intel_disable_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_pipe(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.intel_crtc* @to_intel_crtc(i32 %12)
  store %struct.intel_crtc* %13, %struct.intel_crtc** %3, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %4, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pipe_name(i32 %25)
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = call i32 @assert_planes_disabled(%struct.intel_crtc* %28)
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %31 = call i32 @trace_intel_pipe_disable(%struct.intel_crtc* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PIPECONF(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PIPECONF_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %71

41:                                               ; preds = %1
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %43 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @PIPECONF_DOUBLE_WIDE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %53 = call i32 @IS_I830(%struct.drm_i915_private* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @PIPECONF_ENABLE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @I915_WRITE(i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PIPECONF_ENABLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %70 = call i32 @intel_wait_for_pipe_off(%struct.intel_crtc_state* %69)
  br label %71

71:                                               ; preds = %40, %68, %60
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @assert_planes_disabled(%struct.intel_crtc*) #1

declare dso_local i32 @trace_intel_pipe_disable(%struct.intel_crtc*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_wait_for_pipe_off(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
