; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@SDVOB = common dso_local global i32 0, align 4
@SDVO_DETECTED = common dso_local global i32 0, align 4
@DP_B = common dso_local global i32 0, align 4
@DP_DETECTED = common dso_local global i32 0, align 4
@SDVOC = common dso_local global i32 0, align 4
@DP_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @cdv_output_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_output_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  store %struct.drm_psb_private* %6, %struct.drm_psb_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call i32 @drm_mode_create_scaling_mode_property(%struct.drm_device* %7)
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i32 @cdv_disable_vga(%struct.drm_device* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  %14 = call i32 @cdv_intel_crt_init(%struct.drm_device* %11, i32* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %16, i32 0, i32 0
  %18 = call i32 @cdv_intel_lvds_init(%struct.drm_device* %15, i32* %17)
  %19 = load i32, i32* @SDVOB, align 4
  %20 = call i32 @REG_READ(i32 %19)
  %21 = load i32, i32* @SDVO_DETECTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %27 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %26, i32 0, i32 0
  %28 = load i32, i32* @SDVOB, align 4
  %29 = call i32 @cdv_hdmi_init(%struct.drm_device* %25, i32* %27, i32 %28)
  %30 = load i32, i32* @DP_B, align 4
  %31 = call i32 @REG_READ(i32 %30)
  %32 = load i32, i32* @DP_DETECTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %37, i32 0, i32 0
  %39 = load i32, i32* @DP_B, align 4
  %40 = call i32 @cdv_intel_dp_init(%struct.drm_device* %36, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %24
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* @SDVOC, align 4
  %44 = call i32 @REG_READ(i32 %43)
  %45 = load i32, i32* @SDVO_DETECTED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %50, i32 0, i32 0
  %52 = load i32, i32* @SDVOC, align 4
  %53 = call i32 @cdv_hdmi_init(%struct.drm_device* %49, i32* %51, i32 %52)
  %54 = load i32, i32* @DP_C, align 4
  %55 = call i32 @REG_READ(i32 %54)
  %56 = load i32, i32* @DP_DETECTED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %61 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %62 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %61, i32 0, i32 0
  %63 = load i32, i32* @DP_C, align 4
  %64 = call i32 @cdv_intel_dp_init(%struct.drm_device* %60, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %48
  br label %66

66:                                               ; preds = %65, %42
  ret i32 0
}

declare dso_local i32 @drm_mode_create_scaling_mode_property(%struct.drm_device*) #1

declare dso_local i32 @cdv_disable_vga(%struct.drm_device*) #1

declare dso_local i32 @cdv_intel_crt_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @cdv_intel_lvds_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @cdv_hdmi_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @cdv_intel_dp_init(%struct.drm_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
