; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_intel_mode_device }
%struct.psb_intel_mode_device = type { i32, i32 }
%struct.gma_encoder = type { i32 }

@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @oaktrail_lvds_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oaktrail_lvds_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca %struct.psb_intel_mode_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  store %struct.drm_psb_private* %12, %struct.drm_psb_private** %4, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %13)
  store %struct.gma_encoder* %14, %struct.gma_encoder** %5, align 8
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %16 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %15, i32 0, i32 0
  store %struct.psb_intel_mode_device* %16, %struct.psb_intel_mode_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i32 @gma_power_begin(%struct.drm_device* %17, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %38

21:                                               ; preds = %1
  %22 = load i32, i32* @BLC_PWM_CTL, align 4
  %23 = call i32 @REG_READ(i32 %22)
  %24 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %25 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %27 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %32 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %35 = call i32 @oaktrail_lvds_set_power(%struct.drm_device* %33, %struct.gma_encoder* %34, i32 0)
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @gma_power_end(%struct.drm_device* %36)
  br label %38

38:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @oaktrail_lvds_set_power(%struct.drm_device*, %struct.gma_encoder*, i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
