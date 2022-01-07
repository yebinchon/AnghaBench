; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ivch.c_ivch_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { %struct.ivch_priv* }
%struct.ivch_priv = type { i32* }
%struct.drm_display_mode = type { i32, i32, i32, i32 }

@backup_addresses = common dso_local global i32 0, align 4
@VR10_INTERFACE_DEPTH_MASK = common dso_local global i32 0, align 4
@VR10_INTERFACE_2X18 = common dso_local global i32 0, align 4
@VR10_INTERFACE_1X18 = common dso_local global i32 0, align 4
@VR01_DITHER_ENABLE = common dso_local global i32 0, align 4
@VR40_STALL_ENABLE = common dso_local global i32 0, align 4
@VR40_VERTICAL_INTERP_ENABLE = common dso_local global i32 0, align 4
@VR40_HORIZONTAL_INTERP_ENABLE = common dso_local global i32 0, align 4
@VR01_PANEL_FIT_ENABLE = common dso_local global i32 0, align 4
@VR40_CLOCK_GATING_ENABLE = common dso_local global i32 0, align 4
@VR42 = common dso_local global i32 0, align 4
@VR41 = common dso_local global i32 0, align 4
@VR40_AUTO_RATIO_ENABLE = common dso_local global i32 0, align 4
@VR01 = common dso_local global i32 0, align 4
@VR40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @ivch_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivch_mode_set(%struct.intel_dvo_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.ivch_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %14 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %13, i32 0, i32 0
  %15 = load %struct.ivch_priv*, %struct.ivch_priv** %14, align 8
  store %struct.ivch_priv* %15, %struct.ivch_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %17 = call i32 @ivch_reset(%struct.intel_dvo_device* %16)
  %18 = load %struct.ivch_priv*, %struct.ivch_priv** %7, align 8
  %19 = getelementptr inbounds %struct.ivch_priv, %struct.ivch_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @backup_addresses, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @VR10_INTERFACE_DEPTH_MASK, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @VR10_INTERFACE_2X18, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @VR10_INTERFACE_1X18, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %3
  %38 = load i32, i32* @VR01_DITHER_ENABLE, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* @VR40_STALL_ENABLE, align 4
  %41 = load i32, i32* @VR40_VERTICAL_INTERP_ENABLE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VR40_HORIZONTAL_INTERP_ENABLE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %39
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %52, %39
  %61 = load i32, i32* @VR01_PANEL_FIT_ENABLE, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @VR40_CLOCK_GATING_ENABLE, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = shl i32 %70, 16
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sdiv i32 %71, %75
  %77 = ashr i32 %76, 2
  store i32 %77, i32* %11, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = shl i32 %81, 16
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sdiv i32 %82, %86
  %88 = ashr i32 %87, 2
  store i32 %88, i32* %12, align 4
  %89 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %90 = load i32, i32* @VR42, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @ivch_write(%struct.intel_dvo_device* %89, i32 %90, i32 %91)
  %93 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %94 = load i32, i32* @VR41, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @ivch_write(%struct.intel_dvo_device* %93, i32 %94, i32 %95)
  br label %106

97:                                               ; preds = %52
  %98 = load i32, i32* @VR01_PANEL_FIT_ENABLE, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @VR40_CLOCK_GATING_ENABLE, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %97, %60
  %107 = load i32, i32* @VR40_AUTO_RATIO_ENABLE, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %112 = load i32, i32* @VR01, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ivch_write(%struct.intel_dvo_device* %111, i32 %112, i32 %113)
  %115 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %116 = load i32, i32* @VR40, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @ivch_write(%struct.intel_dvo_device* %115, i32 %116, i32 %117)
  ret void
}

declare dso_local i32 @ivch_reset(%struct.intel_dvo_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ivch_write(%struct.intel_dvo_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
