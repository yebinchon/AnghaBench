; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_pipe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_pipe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.mipi_dbi_dev = type { i32, i32, %struct.mipi_dbi }
%struct.mipi_dbi = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ILI9225_POWER_CONTROL_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error sending command %d\0A\00", align 1
@ILI9225_POWER_CONTROL_2 = common dso_local global i32 0, align 4
@ILI9225_POWER_CONTROL_3 = common dso_local global i32 0, align 4
@ILI9225_POWER_CONTROL_4 = common dso_local global i32 0, align 4
@ILI9225_POWER_CONTROL_5 = common dso_local global i32 0, align 4
@ILI9225_DRIVER_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@ILI9225_LCD_AC_DRIVING_CONTROL = common dso_local global i32 0, align 4
@ILI9225_ENTRY_MODE = common dso_local global i32 0, align 4
@ILI9225_DISPLAY_CONTROL_1 = common dso_local global i32 0, align 4
@ILI9225_BLANK_PERIOD_CONTROL_1 = common dso_local global i32 0, align 4
@ILI9225_FRAME_CYCLE_CONTROL = common dso_local global i32 0, align 4
@ILI9225_INTERFACE_CONTROL = common dso_local global i32 0, align 4
@ILI9225_OSCILLATION_CONTROL = common dso_local global i32 0, align 4
@ILI9225_VCI_RECYCLING = common dso_local global i32 0, align 4
@ILI9225_RAM_ADDRESS_SET_1 = common dso_local global i32 0, align 4
@ILI9225_RAM_ADDRESS_SET_2 = common dso_local global i32 0, align 4
@ILI9225_GATE_SCAN_CONTROL = common dso_local global i32 0, align 4
@ILI9225_VERTICAL_SCROLL_1 = common dso_local global i32 0, align 4
@ILI9225_VERTICAL_SCROLL_2 = common dso_local global i32 0, align 4
@ILI9225_VERTICAL_SCROLL_3 = common dso_local global i32 0, align 4
@ILI9225_PARTIAL_DRIVING_POS_1 = common dso_local global i32 0, align 4
@ILI9225_PARTIAL_DRIVING_POS_2 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_1 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_2 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_3 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_4 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_5 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_6 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_7 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_8 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_9 = common dso_local global i32 0, align 4
@ILI9225_GAMMA_CONTROL_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @ili9225_pipe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ili9225_pipe_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.mipi_dbi_dev*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.mipi_dbi*, align 8
  %11 = alloca %struct.drm_rect, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %15 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %16 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(%struct.TYPE_5__* %18)
  store %struct.mipi_dbi_dev* %19, %struct.mipi_dbi_dev** %7, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %21, align 8
  store %struct.drm_framebuffer* %22, %struct.drm_framebuffer** %8, align 8
  %23 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %24 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %9, align 8
  %29 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %30 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %29, i32 0, i32 2
  store %struct.mipi_dbi* %30, %struct.mipi_dbi** %10, align 8
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %11, i32 0, i32 0
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %33 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %11, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %11, i32 0, i32 2
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %11, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %42 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @drm_dev_enter(%struct.TYPE_5__* %44, i32* %13)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  br label %200

48:                                               ; preds = %3
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %51 = call i32 @mipi_dbi_hw_reset(%struct.mipi_dbi* %50)
  %52 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %53 = load i32, i32* @ILI9225_POWER_CONTROL_1, align 4
  %54 = call i32 @ili9225_command(%struct.mipi_dbi* %52, i32 %53, i32 0)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @DRM_DEV_ERROR(%struct.device* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %197

61:                                               ; preds = %48
  %62 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %63 = load i32, i32* @ILI9225_POWER_CONTROL_2, align 4
  %64 = call i32 @ili9225_command(%struct.mipi_dbi* %62, i32 %63, i32 0)
  %65 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %66 = load i32, i32* @ILI9225_POWER_CONTROL_3, align 4
  %67 = call i32 @ili9225_command(%struct.mipi_dbi* %65, i32 %66, i32 0)
  %68 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %69 = load i32, i32* @ILI9225_POWER_CONTROL_4, align 4
  %70 = call i32 @ili9225_command(%struct.mipi_dbi* %68, i32 %69, i32 0)
  %71 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %72 = load i32, i32* @ILI9225_POWER_CONTROL_5, align 4
  %73 = call i32 @ili9225_command(%struct.mipi_dbi* %71, i32 %72, i32 0)
  %74 = call i32 @msleep(i32 40)
  %75 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %76 = load i32, i32* @ILI9225_POWER_CONTROL_2, align 4
  %77 = call i32 @ili9225_command(%struct.mipi_dbi* %75, i32 %76, i32 24)
  %78 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %79 = load i32, i32* @ILI9225_POWER_CONTROL_3, align 4
  %80 = call i32 @ili9225_command(%struct.mipi_dbi* %78, i32 %79, i32 24865)
  %81 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %82 = load i32, i32* @ILI9225_POWER_CONTROL_4, align 4
  %83 = call i32 @ili9225_command(%struct.mipi_dbi* %81, i32 %82, i32 111)
  %84 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %85 = load i32, i32* @ILI9225_POWER_CONTROL_5, align 4
  %86 = call i32 @ili9225_command(%struct.mipi_dbi* %84, i32 %85, i32 18783)
  %87 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %88 = load i32, i32* @ILI9225_POWER_CONTROL_1, align 4
  %89 = call i32 @ili9225_command(%struct.mipi_dbi* %87, i32 %88, i32 2048)
  %90 = call i32 @msleep(i32 10)
  %91 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %92 = load i32, i32* @ILI9225_POWER_CONTROL_2, align 4
  %93 = call i32 @ili9225_command(%struct.mipi_dbi* %91, i32 %92, i32 4155)
  %94 = call i32 @msleep(i32 50)
  %95 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %96 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %98 [
    i32 90, label %99
    i32 180, label %100
    i32 270, label %101
  ]

98:                                               ; preds = %61
  store i32 48, i32* %14, align 4
  br label %102

99:                                               ; preds = %61
  store i32 24, i32* %14, align 4
  br label %102

100:                                              ; preds = %61
  store i32 0, i32* %14, align 4
  br label %102

101:                                              ; preds = %61
  store i32 40, i32* %14, align 4
  br label %102

102:                                              ; preds = %101, %100, %99, %98
  %103 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %104 = load i32, i32* @ILI9225_DRIVER_OUTPUT_CONTROL, align 4
  %105 = call i32 @ili9225_command(%struct.mipi_dbi* %103, i32 %104, i32 284)
  %106 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %107 = load i32, i32* @ILI9225_LCD_AC_DRIVING_CONTROL, align 4
  %108 = call i32 @ili9225_command(%struct.mipi_dbi* %106, i32 %107, i32 256)
  %109 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %110 = load i32, i32* @ILI9225_ENTRY_MODE, align 4
  %111 = load i32, i32* %14, align 4
  %112 = or i32 4096, %111
  %113 = call i32 @ili9225_command(%struct.mipi_dbi* %109, i32 %110, i32 %112)
  %114 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %115 = load i32, i32* @ILI9225_DISPLAY_CONTROL_1, align 4
  %116 = call i32 @ili9225_command(%struct.mipi_dbi* %114, i32 %115, i32 0)
  %117 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %118 = load i32, i32* @ILI9225_BLANK_PERIOD_CONTROL_1, align 4
  %119 = call i32 @ili9225_command(%struct.mipi_dbi* %117, i32 %118, i32 2056)
  %120 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %121 = load i32, i32* @ILI9225_FRAME_CYCLE_CONTROL, align 4
  %122 = call i32 @ili9225_command(%struct.mipi_dbi* %120, i32 %121, i32 4352)
  %123 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %124 = load i32, i32* @ILI9225_INTERFACE_CONTROL, align 4
  %125 = call i32 @ili9225_command(%struct.mipi_dbi* %123, i32 %124, i32 0)
  %126 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %127 = load i32, i32* @ILI9225_OSCILLATION_CONTROL, align 4
  %128 = call i32 @ili9225_command(%struct.mipi_dbi* %126, i32 %127, i32 3329)
  %129 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %130 = load i32, i32* @ILI9225_VCI_RECYCLING, align 4
  %131 = call i32 @ili9225_command(%struct.mipi_dbi* %129, i32 %130, i32 32)
  %132 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %133 = load i32, i32* @ILI9225_RAM_ADDRESS_SET_1, align 4
  %134 = call i32 @ili9225_command(%struct.mipi_dbi* %132, i32 %133, i32 0)
  %135 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %136 = load i32, i32* @ILI9225_RAM_ADDRESS_SET_2, align 4
  %137 = call i32 @ili9225_command(%struct.mipi_dbi* %135, i32 %136, i32 0)
  %138 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %139 = load i32, i32* @ILI9225_GATE_SCAN_CONTROL, align 4
  %140 = call i32 @ili9225_command(%struct.mipi_dbi* %138, i32 %139, i32 0)
  %141 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %142 = load i32, i32* @ILI9225_VERTICAL_SCROLL_1, align 4
  %143 = call i32 @ili9225_command(%struct.mipi_dbi* %141, i32 %142, i32 219)
  %144 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %145 = load i32, i32* @ILI9225_VERTICAL_SCROLL_2, align 4
  %146 = call i32 @ili9225_command(%struct.mipi_dbi* %144, i32 %145, i32 0)
  %147 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %148 = load i32, i32* @ILI9225_VERTICAL_SCROLL_3, align 4
  %149 = call i32 @ili9225_command(%struct.mipi_dbi* %147, i32 %148, i32 0)
  %150 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %151 = load i32, i32* @ILI9225_PARTIAL_DRIVING_POS_1, align 4
  %152 = call i32 @ili9225_command(%struct.mipi_dbi* %150, i32 %151, i32 219)
  %153 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %154 = load i32, i32* @ILI9225_PARTIAL_DRIVING_POS_2, align 4
  %155 = call i32 @ili9225_command(%struct.mipi_dbi* %153, i32 %154, i32 0)
  %156 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %157 = load i32, i32* @ILI9225_GAMMA_CONTROL_1, align 4
  %158 = call i32 @ili9225_command(%struct.mipi_dbi* %156, i32 %157, i32 0)
  %159 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %160 = load i32, i32* @ILI9225_GAMMA_CONTROL_2, align 4
  %161 = call i32 @ili9225_command(%struct.mipi_dbi* %159, i32 %160, i32 2056)
  %162 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %163 = load i32, i32* @ILI9225_GAMMA_CONTROL_3, align 4
  %164 = call i32 @ili9225_command(%struct.mipi_dbi* %162, i32 %163, i32 2058)
  %165 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %166 = load i32, i32* @ILI9225_GAMMA_CONTROL_4, align 4
  %167 = call i32 @ili9225_command(%struct.mipi_dbi* %165, i32 %166, i32 10)
  %168 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %169 = load i32, i32* @ILI9225_GAMMA_CONTROL_5, align 4
  %170 = call i32 @ili9225_command(%struct.mipi_dbi* %168, i32 %169, i32 2568)
  %171 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %172 = load i32, i32* @ILI9225_GAMMA_CONTROL_6, align 4
  %173 = call i32 @ili9225_command(%struct.mipi_dbi* %171, i32 %172, i32 2056)
  %174 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %175 = load i32, i32* @ILI9225_GAMMA_CONTROL_7, align 4
  %176 = call i32 @ili9225_command(%struct.mipi_dbi* %174, i32 %175, i32 0)
  %177 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %178 = load i32, i32* @ILI9225_GAMMA_CONTROL_8, align 4
  %179 = call i32 @ili9225_command(%struct.mipi_dbi* %177, i32 %178, i32 2560)
  %180 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %181 = load i32, i32* @ILI9225_GAMMA_CONTROL_9, align 4
  %182 = call i32 @ili9225_command(%struct.mipi_dbi* %180, i32 %181, i32 1808)
  %183 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %184 = load i32, i32* @ILI9225_GAMMA_CONTROL_10, align 4
  %185 = call i32 @ili9225_command(%struct.mipi_dbi* %183, i32 %184, i32 1808)
  %186 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %187 = load i32, i32* @ILI9225_DISPLAY_CONTROL_1, align 4
  %188 = call i32 @ili9225_command(%struct.mipi_dbi* %186, i32 %187, i32 18)
  %189 = call i32 @msleep(i32 50)
  %190 = load %struct.mipi_dbi*, %struct.mipi_dbi** %10, align 8
  %191 = load i32, i32* @ILI9225_DISPLAY_CONTROL_1, align 4
  %192 = call i32 @ili9225_command(%struct.mipi_dbi* %190, i32 %191, i32 4119)
  %193 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %7, align 8
  %194 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %193, i32 0, i32 1
  store i32 1, i32* %194, align 4
  %195 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %196 = call i32 @ili9225_fb_dirty(%struct.drm_framebuffer* %195, %struct.drm_rect* %11)
  br label %197

197:                                              ; preds = %102, %57
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @drm_dev_exit(i32 %198)
  br label %200

200:                                              ; preds = %197, %47
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_dev_enter(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mipi_dbi_hw_reset(%struct.mipi_dbi*) #1

declare dso_local i32 @ili9225_command(%struct.mipi_dbi*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ili9225_fb_dirty(%struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
