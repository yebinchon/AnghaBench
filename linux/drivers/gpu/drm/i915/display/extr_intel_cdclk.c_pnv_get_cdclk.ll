; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_pnv_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_pnv_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.intel_cdclk_state = type { i32 }

@GCFGC = common dso_local global i32 0, align 4
@GC_DISPLAY_CLOCK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unknown pnv display core clock 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @pnv_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
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
  %15 = load i32, i32* @GC_DISPLAY_CLOCK_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %29 [
    i32 130, label %17
    i32 129, label %20
    i32 128, label %23
    i32 131, label %26
    i32 133, label %32
    i32 132, label %35
  ]

17:                                               ; preds = %2
  %18 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %19 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %18, i32 0, i32 0
  store i32 266667, i32* %19, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %22 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %21, i32 0, i32 0
  store i32 333333, i32* %22, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %25 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %24, i32 0, i32 0
  store i32 444444, i32* %25, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %28 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %27, i32 0, i32 0
  store i32 200000, i32* %28, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %2, %29
  %33 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %34 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %33, i32 0, i32 0
  store i32 133333, i32* %34, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %37 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %36, i32 0, i32 0
  store i32 166667, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32, %26, %23, %20, %17
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
