; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.hdmi_connector = type { %struct.hdmi* }
%struct.hdmi = type { i32, i32 }
%struct.edid = type { i32 }

@REG_HDMI_CTRL = common dso_local global i32 0, align 4
@HDMI_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @msm_hdmi_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.hdmi_connector*, align 8
  %4 = alloca %struct.hdmi*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = call %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector* %8)
  store %struct.hdmi_connector* %9, %struct.hdmi_connector** %3, align 8
  %10 = load %struct.hdmi_connector*, %struct.hdmi_connector** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %10, i32 0, i32 0
  %12 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  store %struct.hdmi* %12, %struct.hdmi** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %14 = load i32, i32* @REG_HDMI_CTRL, align 4
  %15 = call i32 @hdmi_read(%struct.hdmi* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %17 = load i32, i32* @REG_HDMI_CTRL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @HDMI_CTRL_ENABLE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @hdmi_write(%struct.hdmi* %16, i32 %17, i32 %20)
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %24 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %22, i32 %25)
  store %struct.edid* %26, %struct.edid** %5, align 8
  %27 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %28 = load i32, i32* @REG_HDMI_CTRL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @hdmi_write(%struct.hdmi* %27, i32 %28, i32 %29)
  %31 = load %struct.edid*, %struct.edid** %5, align 8
  %32 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %31)
  %33 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %36 = load %struct.edid*, %struct.edid** %5, align 8
  %37 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %35, %struct.edid* %36)
  %38 = load %struct.edid*, %struct.edid** %5, align 8
  %39 = icmp ne %struct.edid* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %42 = load %struct.edid*, %struct.edid** %5, align 8
  %43 = call i32 @drm_add_edid_modes(%struct.drm_connector* %41, %struct.edid* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.edid*, %struct.edid** %5, align 8
  %45 = call i32 @kfree(%struct.edid* %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.hdmi_connector* @to_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
