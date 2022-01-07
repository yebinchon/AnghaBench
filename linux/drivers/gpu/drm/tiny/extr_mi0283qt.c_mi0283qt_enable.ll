; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_mi0283qt.c_mi0283qt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_mi0283qt.c_mi0283qt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mipi_dbi_dev = type { i32, %struct.mipi_dbi }
%struct.mipi_dbi = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@ILI9341_PWCTRLB = common dso_local global i32 0, align 4
@ILI9341_PWRSEQ = common dso_local global i32 0, align 4
@ILI9341_DTCTRLA = common dso_local global i32 0, align 4
@ILI9341_PWCTRLA = common dso_local global i32 0, align 4
@ILI9341_PUMPCTRL = common dso_local global i32 0, align 4
@ILI9341_DTCTRLB = common dso_local global i32 0, align 4
@ILI9341_PWCTRL1 = common dso_local global i32 0, align 4
@ILI9341_PWCTRL2 = common dso_local global i32 0, align 4
@ILI9341_VMCTRL1 = common dso_local global i32 0, align 4
@ILI9341_VMCTRL2 = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_16BIT = common dso_local global i32 0, align 4
@ILI9341_FRMCTR1 = common dso_local global i32 0, align 4
@ILI9341_EN3GAM = common dso_local global i32 0, align 4
@MIPI_DCS_SET_GAMMA_CURVE = common dso_local global i32 0, align 4
@ILI9341_PGAMCTRL = common dso_local global i32 0, align 4
@ILI9341_NGAMCTRL = common dso_local global i32 0, align 4
@ILI9341_ETMOD = common dso_local global i32 0, align 4
@ILI9341_DISCTRL = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@ILI9341_MADCTL_MV = common dso_local global i32 0, align 4
@ILI9341_MADCTL_MY = common dso_local global i32 0, align 4
@ILI9341_MADCTL_MX = common dso_local global i32 0, align 4
@ILI9341_MADCTL_BGR = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @mi0283qt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mi0283qt_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.mipi_dbi_dev*, align 8
  %8 = alloca %struct.mipi_dbi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %12 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %13 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32 %15)
  store %struct.mipi_dbi_dev* %16, %struct.mipi_dbi_dev** %7, align 8
  %17 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %18 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %17, i32 0, i32 1
  store %struct.mipi_dbi* %18, %struct.mipi_dbi** %8, align 8
  %19 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %20 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drm_dev_enter(i32 %22, i32* %11)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %135

26:                                               ; preds = %3
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %29 = call i32 @mipi_dbi_poweron_conditional_reset(%struct.mipi_dbi_dev* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %132

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %104

37:                                               ; preds = %33
  %38 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %39 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %40 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %38, i32 %39)
  %41 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %42 = load i32, i32* @ILI9341_PWCTRLB, align 4
  %43 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %41, i32 %42, i32 0, i32 131, i32 48)
  %44 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %45 = load i32, i32* @ILI9341_PWRSEQ, align 4
  %46 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %44, i32 %45, i32 100, i32 3, i32 18, i32 129)
  %47 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %48 = load i32, i32* @ILI9341_DTCTRLA, align 4
  %49 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %47, i32 %48, i32 133, i32 1, i32 121)
  %50 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %51 = load i32, i32* @ILI9341_PWCTRLA, align 4
  %52 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %50, i32 %51, i32 57, i32 44, i32 0, i32 52, i32 2)
  %53 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %54 = load i32, i32* @ILI9341_PUMPCTRL, align 4
  %55 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %53, i32 %54, i32 32)
  %56 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %57 = load i32, i32* @ILI9341_DTCTRLB, align 4
  %58 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %56, i32 %57, i32 0, i32 0)
  %59 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %60 = load i32, i32* @ILI9341_PWCTRL1, align 4
  %61 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %59, i32 %60, i32 38)
  %62 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %63 = load i32, i32* @ILI9341_PWCTRL2, align 4
  %64 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %62, i32 %63, i32 17)
  %65 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %66 = load i32, i32* @ILI9341_VMCTRL1, align 4
  %67 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %65, i32 %66, i32 53, i32 62)
  %68 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %69 = load i32, i32* @ILI9341_VMCTRL2, align 4
  %70 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %68, i32 %69, i32 190)
  %71 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %72 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %73 = load i32, i32* @MIPI_DCS_PIXEL_FMT_16BIT, align 4
  %74 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %71, i32 %72, i32 %73)
  %75 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %76 = load i32, i32* @ILI9341_FRMCTR1, align 4
  %77 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %75, i32 %76, i32 0, i32 27)
  %78 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %79 = load i32, i32* @ILI9341_EN3GAM, align 4
  %80 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %78, i32 %79, i32 8)
  %81 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %82 = load i32, i32* @MIPI_DCS_SET_GAMMA_CURVE, align 4
  %83 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %81, i32 %82, i32 1)
  %84 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %85 = load i32, i32* @ILI9341_PGAMCTRL, align 4
  %86 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %84, i32 %85, i32 31, i32 26, i32 24, i32 10, i32 15, i32 6, i32 69, i32 135, i32 50, i32 10, i32 7, i32 2, i32 7, i32 5, i32 0)
  %87 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %88 = load i32, i32* @ILI9341_NGAMCTRL, align 4
  %89 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %87, i32 %88, i32 0, i32 37, i32 39, i32 5, i32 16, i32 9, i32 58, i32 120, i32 77, i32 5, i32 24, i32 13, i32 56, i32 58, i32 31)
  %90 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %91 = load i32, i32* @ILI9341_ETMOD, align 4
  %92 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %90, i32 %91, i32 7)
  %93 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %94 = load i32, i32* @ILI9341_DISCTRL, align 4
  %95 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %93, i32 %94, i32 10, i32 130, i32 39, i32 0)
  %96 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %97 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %98 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %96, i32 %97)
  %99 = call i32 @msleep(i32 100)
  %100 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %101 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %102 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %100, i32 %101)
  %103 = call i32 @msleep(i32 100)
  br label %104

104:                                              ; preds = %37, %36
  %105 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %106 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %108 [
    i32 90, label %114
    i32 180, label %116
    i32 270, label %118
  ]

108:                                              ; preds = %104
  %109 = load i32, i32* @ILI9341_MADCTL_MV, align 4
  %110 = load i32, i32* @ILI9341_MADCTL_MY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ILI9341_MADCTL_MX, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %9, align 4
  br label %120

114:                                              ; preds = %104
  %115 = load i32, i32* @ILI9341_MADCTL_MY, align 4
  store i32 %115, i32* %9, align 4
  br label %120

116:                                              ; preds = %104
  %117 = load i32, i32* @ILI9341_MADCTL_MV, align 4
  store i32 %117, i32* %9, align 4
  br label %120

118:                                              ; preds = %104
  %119 = load i32, i32* @ILI9341_MADCTL_MX, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %116, %114, %108
  %121 = load i32, i32* @ILI9341_MADCTL_BGR, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %125 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %124, i32 %125, i32 %126)
  %128 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %129 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %130 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %131 = call i32 @mipi_dbi_enable_flush(%struct.mipi_dbi_dev* %128, %struct.drm_crtc_state* %129, %struct.drm_plane_state* %130)
  br label %132

132:                                              ; preds = %120, %32
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @drm_dev_exit(i32 %133)
  br label %135

135:                                              ; preds = %132, %25
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mipi_dbi_poweron_conditional_reset(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @mipi_dbi_command(%struct.mipi_dbi*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dbi_enable_flush(%struct.mipi_dbi_dev*, %struct.drm_crtc_state*, %struct.drm_plane_state*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
