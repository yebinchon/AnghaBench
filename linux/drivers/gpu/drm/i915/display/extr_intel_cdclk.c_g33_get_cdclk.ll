; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_g33_get_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_g33_get_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@g33_get_cdclk.div_3200 = internal constant [6 x i32] [i32 12, i32 10, i32 8, i32 7, i32 5, i32 16], align 16
@g33_get_cdclk.div_4000 = internal constant [6 x i32] [i32 14, i32 12, i32 10, i32 8, i32 6, i32 20], align 16
@g33_get_cdclk.div_4800 = internal constant [6 x i32] [i32 20, i32 14, i32 12, i32 10, i32 8, i32 24], align 16
@g33_get_cdclk.div_5333 = internal constant [6 x i32] [i32 20, i32 16, i32 12, i32 12, i32 8, i32 28], align 16
@GCFGC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*)* @g33_get_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g33_get_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i32 @intel_hpll_vco(%struct.drm_i915_private* %13)
  %15 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = load i32, i32* @GCFGC, align 4
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i32 %18, i32* %8)
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 7
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g33_get_cdclk.div_3200, i64 0, i64 0))
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %29 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %35 [
    i32 3200000, label %31
    i32 4000000, label %32
    i32 4800000, label %33
    i32 5333333, label %34
  ]

31:                                               ; preds = %27
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g33_get_cdclk.div_3200, i64 0, i64 0), i32** %6, align 8
  br label %36

32:                                               ; preds = %27
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g33_get_cdclk.div_4000, i64 0, i64 0), i32** %6, align 8
  br label %36

33:                                               ; preds = %27
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g33_get_cdclk.div_4800, i64 0, i64 0), i32** %6, align 8
  br label %36

34:                                               ; preds = %27
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g33_get_cdclk.div_5333, i64 0, i64 0), i32** %6, align 8
  br label %36

35:                                               ; preds = %27
  br label %48

36:                                               ; preds = %34, %33, %32, %31
  %37 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %38 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DIV_ROUND_CLOSEST(i32 %39, i32 %44)
  %46 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %47 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %56

48:                                               ; preds = %35, %26
  %49 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %50 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %55 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %54, i32 0, i32 1
  store i32 190476, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %36
  ret void
}

declare dso_local i32 @intel_hpll_vco(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
