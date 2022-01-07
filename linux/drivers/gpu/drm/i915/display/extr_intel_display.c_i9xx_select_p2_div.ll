; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_select_p2_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_select_p2_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_limit*, %struct.intel_crtc_state*, i32)* @i9xx_select_p2_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_select_p2_div(%struct.intel_limit* %0, %struct.intel_crtc_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_limit*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_limit* %0, %struct.intel_limit** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %17 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %18 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %22 = call i64 @intel_is_dual_link_lvds(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %26 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %31 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %37 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %43 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load %struct.intel_limit*, %struct.intel_limit** %5, align 8
  %48 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %41, %29, %24
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
