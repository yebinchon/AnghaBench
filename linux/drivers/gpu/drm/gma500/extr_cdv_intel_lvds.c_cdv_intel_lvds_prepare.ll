; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_intel_mode_device }
%struct.psb_intel_mode_device = type { i32, i32 }

@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @cdv_intel_lvds_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_lvds_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.psb_intel_mode_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %4, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  store %struct.psb_intel_mode_device* %13, %struct.psb_intel_mode_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i32 @gma_power_begin(%struct.drm_device* %14, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %35

18:                                               ; preds = %1
  %19 = load i32, i32* @BLC_PWM_CTL, align 4
  %20 = call i32 @REG_READ(i32 %19)
  %21 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %5, align 8
  %22 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %5, align 8
  %24 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %5, align 8
  %29 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %32 = call i32 @cdv_intel_lvds_set_power(%struct.drm_device* %30, %struct.drm_encoder* %31, i32 0)
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = call i32 @gma_power_end(%struct.drm_device* %33)
  br label %35

35:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @cdv_intel_lvds_set_power(%struct.drm_device*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
