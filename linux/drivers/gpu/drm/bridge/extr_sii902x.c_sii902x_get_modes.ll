; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.sii902x = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.edid = type { i32 }

@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_OUTPUT_DVI = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_DATA = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_OUTPUT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @sii902x_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.sii902x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.sii902x* @connector_to_sii902x(%struct.drm_connector* %9)
  store %struct.sii902x* %10, %struct.sii902x** %3, align 8
  %11 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @SII902X_SYS_CTRL_OUTPUT_DVI, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.sii902x*, %struct.sii902x** %3, align 8
  %14 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = load %struct.sii902x*, %struct.sii902x** %3, align 8
  %18 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %16, i32 %23)
  store %struct.edid* %24, %struct.edid** %6, align 8
  %25 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %26 = load %struct.edid*, %struct.edid** %6, align 8
  %27 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %25, %struct.edid* %26)
  %28 = load %struct.edid*, %struct.edid** %6, align 8
  %29 = icmp ne %struct.edid* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %1
  %31 = load %struct.edid*, %struct.edid** %6, align 8
  %32 = call i64 @drm_detect_hdmi_monitor(%struct.edid* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SII902X_SYS_CTRL_OUTPUT_HDMI, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %38 = load %struct.edid*, %struct.edid** %6, align 8
  %39 = call i32 @drm_add_edid_modes(%struct.drm_connector* %37, %struct.edid* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.edid*, %struct.edid** %6, align 8
  %41 = call i32 @kfree(%struct.edid* %40)
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 0
  %45 = call i32 @drm_display_info_set_bus_formats(i32* %44, i32* %4, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %62

49:                                               ; preds = %42
  %50 = load %struct.sii902x*, %struct.sii902x** %3, align 8
  %51 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %54 = load i32, i32* @SII902X_SYS_CTRL_OUTPUT_MODE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %59, %48
  %63 = load %struct.sii902x*, %struct.sii902x** %3, align 8
  %64 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.sii902x* @connector_to_sii902x(%struct.drm_connector*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(i32*, i32*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
