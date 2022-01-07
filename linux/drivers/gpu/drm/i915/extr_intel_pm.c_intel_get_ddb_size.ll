; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_get_ddb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_get_ddb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.skl_ddb_allocation = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_crtc_state*, i32, i32, %struct.skl_ddb_allocation*)* @intel_get_ddb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_get_ddb_size(%struct.drm_i915_private* %0, %struct.intel_crtc_state* %1, i32 %2, i32 %3, %struct.skl_ddb_allocation* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.skl_ddb_allocation*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.skl_ddb_allocation* %4, %struct.skl_ddb_allocation** %11, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %24 = call i32 @INTEL_GEN(%struct.drm_i915_private* %23)
  %25 = icmp slt i32 %24, 11
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  %28 = sub nsw i32 %27, 4
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %5
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %35 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %34)
  %36 = mul nsw i32 %33, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.skl_ddb_allocation*, %struct.skl_ddb_allocation** %11, align 8
  %38 = getelementptr inbounds %struct.skl_ddb_allocation, %struct.skl_ddb_allocation* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %29, %26
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
