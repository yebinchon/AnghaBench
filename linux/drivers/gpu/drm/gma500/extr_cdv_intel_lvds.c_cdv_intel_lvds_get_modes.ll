; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_intel_mode_device }
%struct.psb_intel_mode_device = type { i32* }
%struct.gma_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @cdv_intel_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_lvds_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.gma_encoder*, align 8
  %7 = alloca %struct.psb_intel_mode_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %14, align 8
  store %struct.drm_psb_private* %15, %struct.drm_psb_private** %5, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %16)
  store %struct.gma_encoder* %17, %struct.gma_encoder** %6, align 8
  %18 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %18, i32 0, i32 0
  store %struct.psb_intel_mode_device* %19, %struct.psb_intel_mode_device** %7, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %21 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @psb_intel_ddc_get_modes(%struct.drm_connector* %20, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %7, align 8
  %32 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %7, align 8
  %38 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %36, i32* %39)
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %9, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %43 = call i32 @drm_mode_probed_add(%struct.drm_connector* %41, %struct.drm_display_mode* %42)
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %35, %28
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @psb_intel_ddc_get_modes(%struct.drm_connector*, i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
