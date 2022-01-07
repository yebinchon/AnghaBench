; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_conn_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_conn_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.mtk_hdmi = type { i32, i32 }
%struct.edid = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @mtk_hdmi_conn_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_conn_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.mtk_hdmi* @hdmi_ctx_from_conn(%struct.drm_connector* %7)
  store %struct.mtk_hdmi* %8, %struct.mtk_hdmi** %4, align 8
  %9 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %18 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %17, i32 %20)
  store %struct.edid* %21, %struct.edid** %5, align 8
  %22 = load %struct.edid*, %struct.edid** %5, align 8
  %23 = icmp ne %struct.edid* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %16
  %28 = load %struct.edid*, %struct.edid** %5, align 8
  %29 = call i32 @drm_detect_monitor_audio(%struct.edid* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = load %struct.edid*, %struct.edid** %5, align 8
  %37 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %35, %struct.edid* %36)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %39 = load %struct.edid*, %struct.edid** %5, align 8
  %40 = call i32 @drm_add_edid_modes(%struct.drm_connector* %38, %struct.edid* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.edid*, %struct.edid** %5, align 8
  %42 = call i32 @kfree(%struct.edid* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %24, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.mtk_hdmi* @hdmi_ctx_from_conn(%struct.drm_connector*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

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
