; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.gma_encoder = type { %struct.psb_intel_lvds_priv* }
%struct.psb_intel_lvds_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_intel_lvds_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca %struct.psb_intel_lvds_priv*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %5)
  store %struct.gma_encoder* %6, %struct.gma_encoder** %3, align 8
  %7 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %7, i32 0, i32 0
  %9 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %8, align 8
  store %struct.psb_intel_lvds_priv* %9, %struct.psb_intel_lvds_priv** %4, align 8
  %10 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %4, align 8
  %11 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @psb_intel_i2c_destroy(i32 %12)
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = call i32 @drm_connector_unregister(%struct.drm_connector* %14)
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = call i32 @drm_connector_cleanup(%struct.drm_connector* %16)
  %18 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %19 = call i32 @kfree(%struct.drm_connector* %18)
  ret void
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @psb_intel_i2c_destroy(i32) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
