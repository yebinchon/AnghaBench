; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_ddc_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_ddc_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }
%struct.psb_intel_sdvo_connector = type { i32 }

@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @psb_intel_sdvo_get_ddc_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_get_ddc_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.edid*, align 8
  %4 = alloca %struct.psb_intel_sdvo_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = call %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector* %7)
  store %struct.edid* %8, %struct.edid** %3, align 8
  %9 = load %struct.edid*, %struct.edid** %3, align 8
  %10 = icmp eq %struct.edid* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call %struct.edid* @psb_intel_sdvo_get_analog_edid(%struct.drm_connector* %12)
  store %struct.edid* %13, %struct.edid** %3, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.edid*, %struct.edid** %3, align 8
  %16 = icmp ne %struct.edid* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %19 = call %struct.psb_intel_sdvo_connector* @to_psb_intel_sdvo_connector(%struct.drm_connector* %18)
  store %struct.psb_intel_sdvo_connector* %19, %struct.psb_intel_sdvo_connector** %4, align 8
  %20 = load %struct.edid*, %struct.edid** %3, align 8
  %21 = getelementptr inbounds %struct.edid, %struct.edid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.psb_intel_sdvo_connector*, %struct.psb_intel_sdvo_connector** %4, align 8
  %30 = call i32 @IS_TMDS(%struct.psb_intel_sdvo_connector* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %17
  %39 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %40 = load %struct.edid*, %struct.edid** %3, align 8
  %41 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %39, %struct.edid* %40)
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = load %struct.edid*, %struct.edid** %3, align 8
  %44 = call i32 @drm_add_edid_modes(%struct.drm_connector* %42, %struct.edid* %43)
  br label %45

45:                                               ; preds = %38, %17
  %46 = load %struct.edid*, %struct.edid** %3, align 8
  %47 = call i32 @kfree(%struct.edid* %46)
  br label %48

48:                                               ; preds = %45, %14
  ret void
}

declare dso_local %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local %struct.edid* @psb_intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local %struct.psb_intel_sdvo_connector* @to_psb_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @IS_TMDS(%struct.psb_intel_sdvo_connector*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
