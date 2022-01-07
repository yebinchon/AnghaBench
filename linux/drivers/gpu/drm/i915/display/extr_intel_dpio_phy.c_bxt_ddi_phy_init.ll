; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c_bxt_ddi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpio_phy.c_bxt_ddi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bxt_ddi_phy_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxt_ddi_phy_init(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxt_ddi_phy_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bxt_ddi_phy_info* @bxt_get_phy_info(%struct.drm_i915_private* %8, i32 %9)
  store %struct.bxt_ddi_phy_info* %10, %struct.bxt_ddi_phy_info** %5, align 8
  %11 = load %struct.bxt_ddi_phy_info*, %struct.bxt_ddi_phy_info** %5, align 8
  %12 = getelementptr inbounds %struct.bxt_ddi_phy_info, %struct.bxt_ddi_phy_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  store i32 1, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bxt_ddi_phy_is_enabled(%struct.drm_i915_private* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @_bxt_ddi_phy_init(%struct.drm_i915_private* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @_bxt_ddi_phy_init(%struct.drm_i915_private* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @bxt_ddi_phy_uninit(%struct.drm_i915_private* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  ret void
}

declare dso_local %struct.bxt_ddi_phy_info* @bxt_get_phy_info(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @bxt_ddi_phy_is_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @_bxt_ddi_phy_init(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @bxt_ddi_phy_uninit(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
