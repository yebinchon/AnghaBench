; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_i85x_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_i85x_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.intel_cdclk_state = type { i32 }

@HPLLCC = common dso_local global i32 0, align 4
@GC_CLOCK_CONTROL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @i85x_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i85x_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
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
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %16, i32 0, i32 0
  store i32 133333, i32* %17, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PCI_DEVFN(i32 0, i32 3)
  %23 = load i32, i32* @HPLLCC, align 4
  %24 = call i32 @pci_bus_read_config_word(i32 %21, i32 %22, i32 %23, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GC_CLOCK_CONTROL_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %40 [
    i32 133, label %28
    i32 132, label %28
    i32 134, label %28
    i32 129, label %31
    i32 135, label %34
    i32 131, label %37
    i32 130, label %37
    i32 128, label %37
  ]

28:                                               ; preds = %18, %18, %18
  %29 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %30 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %29, i32 0, i32 0
  store i32 200000, i32* %30, align 4
  br label %40

31:                                               ; preds = %18
  %32 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %32, i32 0, i32 0
  store i32 250000, i32* %33, align 4
  br label %40

34:                                               ; preds = %18
  %35 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %36 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %35, i32 0, i32 0
  store i32 133333, i32* %36, align 4
  br label %40

37:                                               ; preds = %18, %18, %18
  %38 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %39 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %38, i32 0, i32 0
  store i32 266667, i32* %39, align 4
  br label %40

40:                                               ; preds = %15, %18, %37, %34, %31, %28
  ret void
}

declare dso_local i32 @pci_bus_read_config_word(i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
