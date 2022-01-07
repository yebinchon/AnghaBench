; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_i915gm_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_i915gm_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.intel_cdclk_state = type { i32 }

@GCFGC = common dso_local global i32 0, align 4
@GC_LOW_FREQUENCY_ENABLE = common dso_local global i32 0, align 4
@GC_DISPLAY_CLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @i915gm_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915gm_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = load i32, i32* @GCFGC, align 4
  %13 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GC_LOW_FREQUENCY_ENABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %19, i32 0, i32 0
  store i32 133333, i32* %20, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GC_DISPLAY_CLOCK_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %28 [
    i32 128, label %25
    i32 129, label %29
  ]

25:                                               ; preds = %21
  %26 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %26, i32 0, i32 0
  store i32 333333, i32* %27, align 4
  br label %32

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %21, %28
  %30 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %31 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %30, i32 0, i32 0
  store i32 190000, i32* %31, align 4
  br label %32

32:                                               ; preds = %18, %29, %25
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
