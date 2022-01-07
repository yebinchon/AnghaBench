; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pch_hdmi_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pch_hdmi_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"PCH HDMI %c enabled on transcoder %c, should be disabled\0A\00", align 1
@PIPE_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IBX PCH HDMI %c still using transcoder B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32, i32)* @assert_pch_hdmi_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_pch_hdmi_disabled(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = call i32 @intel_sdvo_port_enabled(%struct.drm_i915_private* %11, i32 %12, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ false, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @port_name(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pipe_name(i32 %25)
  %27 = call i32 (i32, i8*, i32, ...) @I915_STATE_WARN(i32 %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PIPE_B, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31, %20
  %39 = phi i1 [ false, %31 ], [ false, %20 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @port_name(i32 %41)
  %43 = call i32 (i32, i8*, i32, ...) @I915_STATE_WARN(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  ret void
}

declare dso_local i32 @intel_sdvo_port_enabled(%struct.drm_i915_private*, i32, i32*) #1

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
