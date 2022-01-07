; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pch_dp_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pch_dp_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"PCH DP %c enabled on transcoder %c, should be disabled\0A\00", align 1
@PIPE_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"IBX PCH DP %c still using transcoder B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32, i32)* @assert_pch_dp_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_pch_dp_disabled(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @intel_dp_port_enabled(%struct.drm_i915_private* %11, i32 %12, i32 %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %4
  %22 = phi i1 [ false, %4 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @port_name(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pipe_name(i32 %26)
  %28 = call i32 (i32, i8*, i32, ...) @I915_STATE_WARN(i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PIPE_B, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32, %21
  %40 = phi i1 [ false, %32 ], [ false, %21 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @port_name(i32 %42)
  %44 = call i32 (i32, i8*, i32, ...) @I915_STATE_WARN(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @intel_dp_port_enabled(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
