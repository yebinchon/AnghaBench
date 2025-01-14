; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_fdi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_fdi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@TRANS_DDI_FUNC_ENABLE = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"FDI TX state assertion failure (expected %s, current %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32)* @assert_fdi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_fdi_tx(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = call i64 @HAS_DDI(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @TRANS_DDI_FUNC_CTL(i32 %18)
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @TRANS_DDI_FUNC_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %39

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FDI_TX_CTL(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @FDI_TX_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %28, %17
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @onoff(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @onoff(i32 %46)
  %48 = call i32 @I915_STATE_WARN(i32 %43, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47)
  ret void
}

declare dso_local i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
