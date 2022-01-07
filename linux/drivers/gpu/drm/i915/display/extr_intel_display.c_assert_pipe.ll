; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pipe %c assertion failure (expected %s, current %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_pipe(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = call i64 @IS_I830(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @POWER_DOMAIN_TRANSCODER(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %22, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PIPECONF(i32 %28)
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PIPECONF_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @intel_display_power_put(%struct.drm_i915_private* %38, i32 %39, i64 %40)
  br label %43

42:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @pipe_name(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @onoff(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @onoff(i32 %52)
  %54 = call i32 @I915_STATE_WARN(i32 %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32 %53)
  ret void
}

declare dso_local i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @POWER_DOMAIN_TRANSCODER(i32) #1

declare dso_local i64 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i64) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
