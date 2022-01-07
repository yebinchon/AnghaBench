; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_modes.c_psb_intel_ddc_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_modes.c_psb_intel_ddc_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.edid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_intel_ddc_get_modes(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %9 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %7, %struct.i2c_adapter* %8)
  store %struct.edid* %9, %struct.edid** %5, align 8
  %10 = load %struct.edid*, %struct.edid** %5, align 8
  %11 = icmp ne %struct.edid* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = load %struct.edid*, %struct.edid** %5, align 8
  %15 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %13, %struct.edid* %14)
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = load %struct.edid*, %struct.edid** %5, align 8
  %18 = call i32 @drm_add_edid_modes(%struct.drm_connector* %16, %struct.edid* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.edid*, %struct.edid** %5, align 8
  %20 = call i32 @kfree(%struct.edid* %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
