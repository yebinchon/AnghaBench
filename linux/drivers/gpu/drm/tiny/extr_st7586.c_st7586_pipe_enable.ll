; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.mipi_dbi_dev = type { i32, i32, %struct.mipi_dbi }
%struct.mipi_dbi = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ST7586_AUTO_READ_CTRL = common dso_local global i32 0, align 4
@ST7586_OTP_RW_CTRL = common dso_local global i32 0, align 4
@ST7586_OTP_READ = common dso_local global i32 0, align 4
@ST7586_OTP_CTRL_OUT = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@ST7586_SET_VOP_OFFSET = common dso_local global i32 0, align 4
@ST7586_SET_VOP = common dso_local global i32 0, align 4
@ST7586_SET_BIAS_SYSTEM = common dso_local global i32 0, align 4
@ST7586_SET_BOOST_LEVEL = common dso_local global i32 0, align 4
@ST7586_ENABLE_ANALOG = common dso_local global i32 0, align 4
@ST7586_SET_NLINE_INV = common dso_local global i32 0, align 4
@ST7586_DISP_MODE_GRAY = common dso_local global i32 0, align 4
@ST7586_ENABLE_DDRAM = common dso_local global i32 0, align 4
@ST7586_DISP_CTRL_MY = common dso_local global i32 0, align 4
@ST7586_DISP_CTRL_MX = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@ST7586_SET_DISP_DUTY = common dso_local global i32 0, align 4
@ST7586_SET_PART_DISP = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PARTIAL_AREA = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_INVERT_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @st7586_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st7586_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.mipi_dbi_dev*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.mipi_dbi*, align 8
  %10 = alloca %struct.drm_rect, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %14 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %15 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32 %17)
  store %struct.mipi_dbi_dev* %18, %struct.mipi_dbi_dev** %7, align 8
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 0
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  store %struct.drm_framebuffer* %21, %struct.drm_framebuffer** %8, align 8
  %22 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %22, i32 0, i32 2
  store %struct.mipi_dbi* %23, %struct.mipi_dbi** %9, align 8
  %24 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 0
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 2
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %31 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %35 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @drm_dev_enter(i32 %37, i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  br label %134

41:                                               ; preds = %3
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %44 = call i32 @mipi_dbi_poweron_reset(%struct.mipi_dbi_dev* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %131

48:                                               ; preds = %41
  %49 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %50 = load i32, i32* @ST7586_AUTO_READ_CTRL, align 4
  %51 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %49, i32 %50, i32 159)
  %52 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %53 = load i32, i32* @ST7586_OTP_RW_CTRL, align 4
  %54 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %52, i32 %53, i32 0)
  %55 = call i32 @msleep(i32 10)
  %56 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %57 = load i32, i32* @ST7586_OTP_READ, align 4
  %58 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %56, i32 %57)
  %59 = call i32 @msleep(i32 20)
  %60 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %61 = load i32, i32* @ST7586_OTP_CTRL_OUT, align 4
  %62 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %60, i32 %61)
  %63 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %64 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %65 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %63, i32 %64)
  %66 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %67 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %68 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %66, i32 %67)
  %69 = call i32 @msleep(i32 50)
  %70 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %71 = load i32, i32* @ST7586_SET_VOP_OFFSET, align 4
  %72 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %70, i32 %71, i32 0)
  %73 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %74 = load i32, i32* @ST7586_SET_VOP, align 4
  %75 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %73, i32 %74, i32 227, i32 0)
  %76 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %77 = load i32, i32* @ST7586_SET_BIAS_SYSTEM, align 4
  %78 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %76, i32 %77, i32 2)
  %79 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %80 = load i32, i32* @ST7586_SET_BOOST_LEVEL, align 4
  %81 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %79, i32 %80, i32 4)
  %82 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %83 = load i32, i32* @ST7586_ENABLE_ANALOG, align 4
  %84 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %82, i32 %83, i32 29)
  %85 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %86 = load i32, i32* @ST7586_SET_NLINE_INV, align 4
  %87 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %85, i32 %86, i32 0)
  %88 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %89 = load i32, i32* @ST7586_DISP_MODE_GRAY, align 4
  %90 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %88, i32 %89)
  %91 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %92 = load i32, i32* @ST7586_ENABLE_DDRAM, align 4
  %93 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %91, i32 %92, i32 2)
  %94 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %95 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %97 [
    i32 90, label %98
    i32 180, label %100
    i32 270, label %104
  ]

97:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %106

98:                                               ; preds = %48
  %99 = load i32, i32* @ST7586_DISP_CTRL_MY, align 4
  store i32 %99, i32* %13, align 4
  br label %106

100:                                              ; preds = %48
  %101 = load i32, i32* @ST7586_DISP_CTRL_MX, align 4
  %102 = load i32, i32* @ST7586_DISP_CTRL_MY, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %13, align 4
  br label %106

104:                                              ; preds = %48
  %105 = load i32, i32* @ST7586_DISP_CTRL_MX, align 4
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %104, %100, %98, %97
  %107 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %108 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %107, i32 %108, i32 %109)
  %111 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %112 = load i32, i32* @ST7586_SET_DISP_DUTY, align 4
  %113 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %111, i32 %112, i32 127)
  %114 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %115 = load i32, i32* @ST7586_SET_PART_DISP, align 4
  %116 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %114, i32 %115, i32 160)
  %117 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %118 = load i32, i32* @MIPI_DCS_SET_PARTIAL_AREA, align 4
  %119 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %117, i32 %118, i32 0, i32 0, i32 0, i32 119)
  %120 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %121 = load i32, i32* @MIPI_DCS_EXIT_INVERT_MODE, align 4
  %122 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %120, i32 %121)
  %123 = call i32 @msleep(i32 100)
  %124 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %125 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %127 = call i32 @st7586_fb_dirty(%struct.drm_framebuffer* %126, %struct.drm_rect* %10)
  %128 = load %struct.mipi_dbi*, %struct.mipi_dbi** %9, align 8
  %129 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %130 = call i32 (%struct.mipi_dbi*, i32, ...) @mipi_dbi_command(%struct.mipi_dbi* %128, i32 %129)
  br label %131

131:                                              ; preds = %106, %47
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @drm_dev_exit(i32 %132)
  br label %134

134:                                              ; preds = %131, %40
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @drm_dev_enter(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mipi_dbi_poweron_reset(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @mipi_dbi_command(%struct.mipi_dbi*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @st7586_fb_dirty(%struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
