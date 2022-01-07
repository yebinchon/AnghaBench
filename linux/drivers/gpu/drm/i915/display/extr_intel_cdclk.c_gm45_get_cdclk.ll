; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_gm45_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_gm45_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@GCFGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unable to determine CDCLK. HPLL VCO=%u, CFGC=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @gm45_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm45_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @intel_hpll_vco(%struct.drm_i915_private* %12)
  %14 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %15 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @GCFGC, align 4
  %18 = call i32 @pci_read_config_word(%struct.pci_dev* %16, i32 %17, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 12
  %21 = and i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %23 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %39 [
    i32 2666667, label %25
    i32 4000000, label %25
    i32 5333333, label %25
    i32 3200000, label %32
  ]

25:                                               ; preds = %2, %2, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 333333, i32 222222
  %30 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %31 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %47

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 320000, i32 228571
  %37 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %38 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %47

39:                                               ; preds = %2
  %40 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %46 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %45, i32 0, i32 1
  store i32 222222, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %32, %25
  ret void
}

declare dso_local i32 @intel_hpll_vco(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
