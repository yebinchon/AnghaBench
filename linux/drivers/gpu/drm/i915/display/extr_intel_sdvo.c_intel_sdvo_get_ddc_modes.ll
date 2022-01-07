; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_ddc_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_ddc_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_sdvo_get_ddc_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_ddc_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %12)
  store %struct.edid* %13, %struct.edid** %3, align 8
  %14 = load %struct.edid*, %struct.edid** %3, align 8
  %15 = icmp eq %struct.edid* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %18 = call %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector* %17)
  store %struct.edid* %18, %struct.edid** %3, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.edid*, %struct.edid** %3, align 8
  %21 = icmp ne %struct.edid* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %24 = call i32 @to_intel_sdvo_connector(%struct.drm_connector* %23)
  %25 = load %struct.edid*, %struct.edid** %3, align 8
  %26 = call i64 @intel_sdvo_connector_matches_edid(i32 %24, %struct.edid* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %30 = load %struct.edid*, %struct.edid** %3, align 8
  %31 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %29, %struct.edid* %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %33 = load %struct.edid*, %struct.edid** %3, align 8
  %34 = call i32 @drm_add_edid_modes(%struct.drm_connector* %32, %struct.edid* %33)
  br label %35

35:                                               ; preds = %28, %22
  %36 = load %struct.edid*, %struct.edid** %3, align 8
  %37 = call i32 @kfree(%struct.edid* %36)
  br label %38

38:                                               ; preds = %35, %19
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_sdvo_connector_matches_edid(i32, %struct.edid*) #1

declare dso_local i32 @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
