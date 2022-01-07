; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7735r.c_jd_t18003_t01_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7735r.c_jd_t18003_t01_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mipi_dbi_dev = type { i32, %struct.mipi_dbi }
%struct.mipi_dbi = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@ST7735R_FRMCTR1 = common dso_local global i32 0, align 4
@ST7735R_FRMCTR2 = common dso_local global i32 0, align 4
@ST7735R_FRMCTR3 = common dso_local global i32 0, align 4
@ST7735R_INVCTR = common dso_local global i32 0, align 4
@ST7735R_PWCTR1 = common dso_local global i32 0, align 4
@ST7735R_PWCTR2 = common dso_local global i32 0, align 4
@ST7735R_PWCTR3 = common dso_local global i32 0, align 4
@ST7735R_PWCTR4 = common dso_local global i32 0, align 4
@ST7735R_PWCTR5 = common dso_local global i32 0, align 4
@ST7735R_VMCTR1 = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_INVERT_MODE = common dso_local global i32 0, align 4
@ST7735R_MX = common dso_local global i32 0, align 4
@ST7735R_MY = common dso_local global i32 0, align 4
@ST7735R_MV = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_16BIT = common dso_local global i32 0, align 4
@ST7735R_GAMCTRP1 = common dso_local global i32 0, align 4
@ST7735R_GAMCTRN1 = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@MIPI_DCS_ENTER_NORMAL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @jd_t18003_t01_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jd_t18003_t01_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
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
  %23 = call i32 @drm_dev_enter(i32 %22, i32* %10)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %118

26:                                               ; preds = %3
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %29 = call i32 @mipi_dbi_poweron_reset(%struct.mipi_dbi_dev* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %115

33:                                               ; preds = %26
  %34 = call i32 @msleep(i32 150)
  %35 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %36 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %37 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %35, i32 %36)
  %38 = call i32 @msleep(i32 500)
  %39 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %40 = load i32, i32* @ST7735R_FRMCTR1, align 4
  %41 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %39, i32 %40, i32 1, i32 44, i32 45)
  %42 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %43 = load i32, i32* @ST7735R_FRMCTR2, align 4
  %44 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %42, i32 %43, i32 1, i32 44, i32 45)
  %45 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %46 = load i32, i32* @ST7735R_FRMCTR3, align 4
  %47 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %45, i32 %46, i32 1, i32 44, i32 45, i32 1, i32 44, i32 45)
  %48 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %49 = load i32, i32* @ST7735R_INVCTR, align 4
  %50 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %48, i32 %49, i32 7)
  %51 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %52 = load i32, i32* @ST7735R_PWCTR1, align 4
  %53 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %51, i32 %52, i32 162, i32 2, i32 132)
  %54 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %55 = load i32, i32* @ST7735R_PWCTR2, align 4
  %56 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %54, i32 %55, i32 197)
  %57 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %58 = load i32, i32* @ST7735R_PWCTR3, align 4
  %59 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %57, i32 %58, i32 10, i32 0)
  %60 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %61 = load i32, i32* @ST7735R_PWCTR4, align 4
  %62 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %60, i32 %61, i32 138, i32 42)
  %63 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %64 = load i32, i32* @ST7735R_PWCTR5, align 4
  %65 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %63, i32 %64, i32 138, i32 238)
  %66 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %67 = load i32, i32* @ST7735R_VMCTR1, align 4
  %68 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %66, i32 %67, i32 14)
  %69 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %70 = load i32, i32* @MIPI_DCS_EXIT_INVERT_MODE, align 4
  %71 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %69, i32 %70)
  %72 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %73 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %75 [
    i32 90, label %79
    i32 180, label %83
    i32 270, label %84
  ]

75:                                               ; preds = %33
  %76 = load i32, i32* @ST7735R_MX, align 4
  %77 = load i32, i32* @ST7735R_MY, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %11, align 4
  br label %88

79:                                               ; preds = %33
  %80 = load i32, i32* @ST7735R_MX, align 4
  %81 = load i32, i32* @ST7735R_MV, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %11, align 4
  br label %88

83:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %88

84:                                               ; preds = %33
  %85 = load i32, i32* @ST7735R_MY, align 4
  %86 = load i32, i32* @ST7735R_MV, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %83, %79, %75
  %89 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %90 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %89, i32 %90, i32 %91)
  %93 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %94 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %95 = load i32, i32* @MIPI_DCS_PIXEL_FMT_16BIT, align 4
  %96 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %93, i32 %94, i32 %95)
  %97 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %98 = load i32, i32* @ST7735R_GAMCTRP1, align 4
  %99 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %97, i32 %98, i32 2, i32 28, i32 7, i32 18, i32 55, i32 50, i32 41, i32 45, i32 41, i32 37, i32 43, i32 57, i32 0, i32 1, i32 3, i32 16)
  %100 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %101 = load i32, i32* @ST7735R_GAMCTRN1, align 4
  %102 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %100, i32 %101, i32 3, i32 29, i32 7, i32 6, i32 46, i32 44, i32 41, i32 45, i32 46, i32 46, i32 55, i32 63, i32 0, i32 0, i32 2, i32 16)
  %103 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %104 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %105 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %103, i32 %104)
  %106 = call i32 @msleep(i32 100)
  %107 = load %struct.mipi_dbi*, %struct.mipi_dbi** %8, align 8
  %108 = load i32, i32* @MIPI_DCS_ENTER_NORMAL_MODE, align 4
  %109 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %107, i32 %108)
  %110 = call i32 @msleep(i32 20)
  %111 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %112 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %113 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %114 = call i32 @mipi_dbi_enable_flush(%struct.mipi_dbi_dev* %111, %struct.drm_crtc_state* %112, %struct.drm_plane_state* %113)
  br label %115

115:                                              ; preds = %88, %32
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @drm_dev_exit(i32 %116)
  br label %118

118:                                              ; preds = %115, %25
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mipi_dbi_poweron_reset(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dbi_command(%struct.mipi_dbi*, i32, ...) #1

declare dso_local i32 @mipi_dbi_enable_flush(%struct.mipi_dbi_dev*, %struct.drm_crtc_state*, %struct.drm_plane_state*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
