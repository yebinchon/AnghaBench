; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e63j0x03.c_s6e63j0x03_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.s6e63j0x03 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_CONTROL_DISPLAY = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_POWER_SAVE = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_TEAR_MODE_VBLANK = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6e63j0x03_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e63j0x03_enable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.s6e63j0x03*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.s6e63j0x03* @panel_to_s6e63j0x03(%struct.drm_panel* %7)
  store %struct.s6e63j0x03* %8, %struct.s6e63j0x03** %4, align 8
  %9 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %10 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %11)
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = call i32 @msleep(i32 120)
  %14 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %15 = call i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03* %14, i32 1)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %87

20:                                               ; preds = %1
  %21 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %22 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %21, i32 177, i32 0, i32 9)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %87

27:                                               ; preds = %20
  %28 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %29 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %30 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %28, i32 %29, i32 64)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %87

35:                                               ; preds = %27
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %37 = call i32 @mipi_dsi_dcs_set_display_brightness(%struct.mipi_dsi_device* %36, i32 255)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %35
  %43 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %44 = load i32, i32* @MIPI_DCS_WRITE_CONTROL_DISPLAY, align 4
  %45 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %43, i32 %44, i32 32)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %87

50:                                               ; preds = %42
  %51 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %52 = load i32, i32* @MIPI_DCS_WRITE_POWER_SAVE, align 4
  %53 = call i32 (%struct.s6e63j0x03*, i32, i32, ...) @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03* %51, i32 %52, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %50
  %59 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %60 = load i32, i32* @MIPI_DSI_DCS_TEAR_MODE_VBLANK, align 4
  %61 = call i32 @mipi_dsi_dcs_set_tear_on(%struct.mipi_dsi_device* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %87

66:                                               ; preds = %58
  %67 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %68 = call i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03* %67, i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %66
  %74 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %75 = call i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %87

80:                                               ; preds = %73
  %81 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %82 = load %struct.s6e63j0x03*, %struct.s6e63j0x03** %4, align 8
  %83 = getelementptr inbounds %struct.s6e63j0x03, %struct.s6e63j0x03* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %78, %71, %64, %56, %48, %40, %33, %25, %18
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.s6e63j0x03* @panel_to_s6e63j0x03(%struct.drm_panel*) #1

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s6e63j0x03_apply_mtp_key(%struct.s6e63j0x03*, i32) #1

declare dso_local i32 @s6e63j0x03_dcs_write_seq_static(%struct.s6e63j0x03*, i32, i32, ...) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(%struct.mipi_dsi_device*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_tear_on(%struct.mipi_dsi_device*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
