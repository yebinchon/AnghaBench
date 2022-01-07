; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pch_ports_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_assert_pch_ports_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PORT_B = common dso_local global i32 0, align 4
@PCH_DP_B = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@PCH_DP_C = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@PCH_DP_D = common dso_local global i32 0, align 4
@PCH_ADPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"PCH VGA enabled on transcoder %c, should be disabled\0A\00", align 1
@PCH_LVDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"PCH LVDS enabled on transcoder %c, should be disabled\0A\00", align 1
@PCH_HDMIB = common dso_local global i32 0, align 4
@PCH_HDMIC = common dso_local global i32 0, align 4
@PCH_HDMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @assert_pch_ports_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_pch_ports_disabled(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PORT_B, align 4
  %9 = load i32, i32* @PCH_DP_B, align 4
  %10 = call i32 @assert_pch_dp_disabled(%struct.drm_i915_private* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PORT_C, align 4
  %14 = load i32, i32* @PCH_DP_C, align 4
  %15 = call i32 @assert_pch_dp_disabled(%struct.drm_i915_private* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PORT_D, align 4
  %19 = load i32, i32* @PCH_DP_D, align 4
  %20 = call i32 @assert_pch_dp_disabled(%struct.drm_i915_private* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = load i32, i32* @PCH_ADPA, align 4
  %23 = call i64 @intel_crt_port_enabled(%struct.drm_i915_private* %21, i32 %22, i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i1 [ false, %2 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pipe_name(i32 %32)
  %34 = call i32 @I915_STATE_WARN(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = load i32, i32* @PCH_LVDS, align 4
  %37 = call i64 @intel_lvds_port_enabled(%struct.drm_i915_private* %35, i32 %36, i32* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi i1 [ false, %29 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pipe_name(i32 %46)
  %48 = call i32 @I915_STATE_WARN(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @PORT_B, align 4
  %52 = load i32, i32* @PCH_HDMIB, align 4
  %53 = call i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PORT_C, align 4
  %57 = load i32, i32* @PCH_HDMIC, align 4
  %58 = call i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PORT_D, align 4
  %62 = load i32, i32* @PCH_HDMID, align 4
  %63 = call i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private* %59, i32 %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @assert_pch_dp_disabled(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32) #1

declare dso_local i64 @intel_crt_port_enabled(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @intel_lvds_port_enabled(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
