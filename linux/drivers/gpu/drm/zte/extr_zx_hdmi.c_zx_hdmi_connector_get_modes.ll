; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.zx_hdmi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @zx_hdmi_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.zx_hdmi*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.zx_hdmi* @to_zx_hdmi(%struct.drm_connector* %7)
  store %struct.zx_hdmi* %8, %struct.zx_hdmi** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %11 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %9, i32* %13)
  store %struct.edid* %14, %struct.edid** %5, align 8
  %15 = load %struct.edid*, %struct.edid** %5, align 8
  %16 = icmp ne %struct.edid* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.edid*, %struct.edid** %5, align 8
  %20 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %19)
  %21 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %22 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.edid*, %struct.edid** %5, align 8
  %24 = call i32 @drm_detect_monitor_audio(%struct.edid* %23)
  %25 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %26 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %28 = load %struct.edid*, %struct.edid** %5, align 8
  %29 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %27, %struct.edid* %28)
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = load %struct.edid*, %struct.edid** %5, align 8
  %32 = call i32 @drm_add_edid_modes(%struct.drm_connector* %30, %struct.edid* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.edid*, %struct.edid** %5, align 8
  %34 = call i32 @kfree(%struct.edid* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.zx_hdmi* @to_zx_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

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
