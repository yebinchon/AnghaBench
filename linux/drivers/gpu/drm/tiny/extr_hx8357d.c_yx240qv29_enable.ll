; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_hx8357d.c_yx240qv29_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_hx8357d.c_yx240qv29_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mipi_dbi_dev = type { i32, %struct.mipi_dbi }
%struct.mipi_dbi = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HX8357D_SETEXTC = common dso_local global i32 0, align 4
@HX8357D_SETRGB = common dso_local global i32 0, align 4
@HX8357D_SETCOM = common dso_local global i32 0, align 4
@HX8357D_SETOSC = common dso_local global i32 0, align 4
@HX8357D_SETPANEL = common dso_local global i32 0, align 4
@HX8357D_SETPOWER = common dso_local global i32 0, align 4
@HX8357D_SETSTBA = common dso_local global i32 0, align 4
@HX8357D_SETCYC = common dso_local global i32 0, align 4
@HX8357D_SETGAMMA = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_16BIT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_TEAR_ON = common dso_local global i32 0, align 4
@MIPI_DCS_SET_TEAR_SCANLINE = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@HX8357D_MADCTL_MX = common dso_local global i32 0, align 4
@HX8357D_MADCTL_MY = common dso_local global i32 0, align 4
@HX8357D_MADCTL_MV = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @yx240qv29_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yx240qv29_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
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
  br label %113

26:                                               ; preds = %3
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %29 = call i32 @mipi_dbi_poweron_conditional_reset(%struct.mipi_dbi_dev* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %110

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %84

37:                                               ; preds = %33
  %38 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %39 = load i32, i32* @HX8357D_SETEXTC, align 4
  %40 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %38, i32 %39, i32 255, i32 131, i32 87)
  %41 = call i32 @msleep(i32 150)
  %42 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %43 = load i32, i32* @HX8357D_SETRGB, align 4
  %44 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %42, i32 %43, i32 0, i32 0, i32 6, i32 6)
  %45 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %46 = load i32, i32* @HX8357D_SETCOM, align 4
  %47 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %45, i32 %46, i32 37)
  %48 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %49 = load i32, i32* @HX8357D_SETOSC, align 4
  %50 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %48, i32 %49, i32 104)
  %51 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %52 = load i32, i32* @HX8357D_SETPANEL, align 4
  %53 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %51, i32 %52, i32 5)
  %54 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %55 = load i32, i32* @HX8357D_SETPOWER, align 4
  %56 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %54, i32 %55, i32 0, i32 21, i32 28, i32 28, i32 131, i32 170)
  %57 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %58 = load i32, i32* @HX8357D_SETSTBA, align 4
  %59 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %57, i32 %58, i32 80, i32 80, i32 1, i32 60, i32 30, i32 8)
  %60 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %61 = load i32, i32* @HX8357D_SETCYC, align 4
  %62 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %60, i32 %61, i32 2, i32 64, i32 0, i32 42, i32 42, i32 13, i32 120)
  %63 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %64 = load i32, i32* @HX8357D_SETGAMMA, align 4
  %65 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %63, i32 %64, i32 2, i32 10, i32 17, i32 29, i32 35, i32 53, i32 65, i32 75, i32 75, i32 66, i32 58, i32 39, i32 27, i32 8, i32 9, i32 3, i32 2, i32 10, i32 17, i32 29, i32 35, i32 53, i32 65, i32 75, i32 75, i32 66, i32 58, i32 39, i32 27, i32 8, i32 9, i32 3, i32 0, i32 1)
  %66 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %67 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %68 = load i32, i32* @MIPI_DCS_PIXEL_FMT_16BIT, align 4
  %69 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %66, i32 %67, i32 %68)
  %70 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %71 = load i32, i32* @MIPI_DCS_SET_TEAR_ON, align 4
  %72 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %70, i32 %71, i32 0)
  %73 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %74 = load i32, i32* @MIPI_DCS_SET_TEAR_SCANLINE, align 4
  %75 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %73, i32 %74, i32 0, i32 2)
  %76 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %77 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %78 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %76, i32 %77)
  %79 = call i32 @msleep(i32 150)
  %80 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %81 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %82 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %80, i32 %81)
  %83 = call i32 @usleep_range(i32 5000, i32 7000)
  br label %84

84:                                               ; preds = %37, %36
  %85 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %86 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %88 [
    i32 90, label %92
    i32 180, label %96
    i32 270, label %97
  ]

88:                                               ; preds = %84
  %89 = load i32, i32* @HX8357D_MADCTL_MX, align 4
  %90 = load i32, i32* @HX8357D_MADCTL_MY, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %9, align 4
  br label %101

92:                                               ; preds = %84
  %93 = load i32, i32* @HX8357D_MADCTL_MV, align 4
  %94 = load i32, i32* @HX8357D_MADCTL_MY, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %9, align 4
  br label %101

96:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @HX8357D_MADCTL_MV, align 4
  %99 = load i32, i32* @HX8357D_MADCTL_MX, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %96, %92, %88
  %102 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %103 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %102, i32 %103, i32 %104)
  %106 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %107 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %108 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %109 = call i32 @mipi_dbi_enable_flush(%struct.mipi_dbi_dev* %106, %struct.drm_crtc_state* %107, %struct.drm_plane_state* %108)
  br label %110

110:                                              ; preds = %101, %32
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @drm_dev_exit(i32 %111)
  br label %113

113:                                              ; preds = %110, %25
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mipi_dbi_poweron_conditional_reset(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @mipi_dbi_command(%struct.mipi_dbi*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mipi_dbi_enable_flush(%struct.mipi_dbi_dev*, %struct.drm_crtc_state*, %struct.drm_plane_state*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
