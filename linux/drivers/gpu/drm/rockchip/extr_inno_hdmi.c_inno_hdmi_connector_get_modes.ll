; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.inno_hdmi = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.edid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @inno_hdmi_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.inno_hdmi*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.inno_hdmi* @to_inno_hdmi(%struct.drm_connector* %7)
  store %struct.inno_hdmi* %8, %struct.inno_hdmi** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %10 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %15, i32 %18)
  store %struct.edid* %19, %struct.edid** %5, align 8
  %20 = load %struct.edid*, %struct.edid** %5, align 8
  %21 = icmp ne %struct.edid* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load %struct.edid*, %struct.edid** %5, align 8
  %24 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %23)
  %25 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %26 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.edid*, %struct.edid** %5, align 8
  %29 = call i32 @drm_detect_monitor_audio(%struct.edid* %28)
  %30 = load %struct.inno_hdmi*, %struct.inno_hdmi** %4, align 8
  %31 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = load %struct.edid*, %struct.edid** %5, align 8
  %35 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %33, %struct.edid* %34)
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = load %struct.edid*, %struct.edid** %5, align 8
  %38 = call i32 @drm_add_edid_modes(%struct.drm_connector* %36, %struct.edid* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.edid*, %struct.edid** %5, align 8
  %40 = call i32 @kfree(%struct.edid* %39)
  br label %41

41:                                               ; preds = %22, %14
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.inno_hdmi* @to_inno_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
