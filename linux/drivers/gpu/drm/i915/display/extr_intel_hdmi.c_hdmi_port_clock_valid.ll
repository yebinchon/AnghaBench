; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hdmi_port_clock_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hdmi_port_clock_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_hdmi = type { i32 }
%struct.drm_i915_private = type { i32 }

@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_hdmi*, i32, i32, i32)* @hdmi_port_clock_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_port_clock_valid(%struct.intel_hdmi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_hdmi* %0, %struct.intel_hdmi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %12 = call i32 @intel_hdmi_to_dev(%struct.intel_hdmi* %11)
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 25000
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %17, i32* %5, align 4
  br label %53

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @hdmi_port_clock_limit(%struct.intel_hdmi* %20, i32 %21, i32 %22)
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %26, i32* %5, align 4
  br label %53

27:                                               ; preds = %18
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %29 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 223333
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 240000
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %34, %31, %27
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %41 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 216000
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 240000
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %50, i32* %5, align 4
  br label %53

51:                                               ; preds = %46, %43, %39
  %52 = load i32, i32* @MODE_OK, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %49, %37, %25, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_hdmi_to_dev(%struct.intel_hdmi*) #1

declare dso_local i32 @hdmi_port_clock_limit(%struct.intel_hdmi*, i32, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
