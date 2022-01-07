; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_intel_mode_device }
%struct.psb_intel_mode_device = type { i32* }
%struct.gma_encoder = type { %struct.psb_intel_lvds_priv* }
%struct.psb_intel_lvds_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @psb_intel_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_lvds_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.psb_intel_mode_device*, align 8
  %7 = alloca %struct.gma_encoder*, align 8
  %8 = alloca %struct.psb_intel_lvds_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  store %struct.drm_psb_private* %16, %struct.drm_psb_private** %5, align 8
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %18 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %17, i32 0, i32 0
  store %struct.psb_intel_mode_device* %18, %struct.psb_intel_mode_device** %6, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %19)
  store %struct.gma_encoder* %20, %struct.gma_encoder** %7, align 8
  %21 = load %struct.gma_encoder*, %struct.gma_encoder** %7, align 8
  %22 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %21, i32 0, i32 0
  %23 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %22, align 8
  store %struct.psb_intel_lvds_priv* %23, %struct.psb_intel_lvds_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call i32 @IS_MRST(%struct.drm_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %8, align 8
  %30 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @psb_intel_ddc_get_modes(%struct.drm_connector* %28, i32* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %27, %1
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %34
  %40 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %41 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %47 = getelementptr inbounds %struct.psb_intel_mode_device, %struct.psb_intel_mode_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %45, i32* %48)
  store %struct.drm_display_mode* %49, %struct.drm_display_mode** %10, align 8
  %50 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %52 = call i32 @drm_mode_probed_add(%struct.drm_connector* %50, %struct.drm_display_mode* %51)
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %44, %37
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @IS_MRST(%struct.drm_device*) #1

declare dso_local i32 @psb_intel_ddc_get_modes(%struct.drm_connector*, i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
