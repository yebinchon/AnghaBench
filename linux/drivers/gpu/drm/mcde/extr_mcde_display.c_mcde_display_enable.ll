; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_plane, %struct.drm_crtc }
%struct.drm_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.mcde* }
%struct.mcde = type { i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_plane_state = type { i32 }
%struct.drm_format_name_buf = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"enable MCDE, %d x %d format %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no DSI master attached!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"output in %s mode, format %dbpp\0A\00", align 1
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"VIDEO\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"overlay CPP %d bytes, DSI CPP %d bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"FIFO watermark after flooring: %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Packet divisor: %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"DSI packet size: %d * %d bytes per line\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Overlay frame size: %u bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Overlay line stride: %u bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Formatter frame size: %u bytes\0A\00", align 1
@MCDE_FIFO_A = common dso_local global i32 0, align 4
@MCDE_CHANNEL_0 = common dso_local global i32 0, align 4
@MCDE_EXTSRC_0 = common dso_local global i32 0, align 4
@MCDE_OVERLAY_0 = common dso_local global i32 0, align 4
@MCDE_DSI_FORMATTER_0 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@MCDE_VSCRC_VSPOL = common dso_local global i32 0, align 4
@MCDE_VSCRC0 = common dso_local global i64 0, align 8
@MCDE_CRC = common dso_local global i64 0, align 8
@MCDE_CRC_SYCEN0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"MCDE display is enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @mcde_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_display_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.mcde*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.drm_format_name_buf, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %24 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %25 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %24, i32 0, i32 1
  store %struct.drm_crtc* %25, %struct.drm_crtc** %7, align 8
  %26 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %27 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %26, i32 0, i32 0
  store %struct.drm_plane* %27, %struct.drm_plane** %8, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load %struct.drm_device*, %struct.drm_device** %29, align 8
  store %struct.drm_device* %30, %struct.drm_device** %9, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 1
  %33 = load %struct.mcde*, %struct.mcde** %32, align 8
  store %struct.mcde* %33, %struct.mcde** %10, align 8
  %34 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %34, i32 0, i32 0
  store %struct.drm_display_mode* %35, %struct.drm_display_mode** %11, align 8
  %36 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %37 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %39, align 8
  store %struct.drm_framebuffer* %40, %struct.drm_framebuffer** %12, align 8
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @drm_get_format_name(i32 %68, %struct.drm_format_name_buf* %20)
  %70 = call i32 (i32, i8*, ...) @dev_info(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i32 %69)
  %71 = load %struct.mcde*, %struct.mcde** %10, align 8
  %72 = getelementptr inbounds %struct.mcde, %struct.mcde* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %3
  %76 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %281

80:                                               ; preds = %3
  %81 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mcde*, %struct.mcde** %10, align 8
  %85 = getelementptr inbounds %struct.mcde, %struct.mcde* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %94 = load %struct.mcde*, %struct.mcde** %10, align 8
  %95 = getelementptr inbounds %struct.mcde, %struct.mcde* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %98)
  %100 = call i32 (i32, i8*, ...) @dev_info(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 %99)
  %101 = load %struct.mcde*, %struct.mcde** %10, align 8
  %102 = getelementptr inbounds %struct.mcde, %struct.mcde* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %105)
  %107 = sdiv i32 %106, 8
  store i32 %107, i32* %19, align 4
  %108 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = call i32 (i32, i8*, ...) @dev_info(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %17, align 4
  %117 = load %struct.mcde*, %struct.mcde** %10, align 8
  %118 = getelementptr inbounds %struct.mcde, %struct.mcde* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %80
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @min(i32 %126, i32 128)
  store i32 %127, i32* %17, align 4
  store i32 1, i32* %22, align 4
  br label %135

128:                                              ; preds = %80
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @min(i32 %129, i32 48)
  store i32 %130, i32* %17, align 4
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mcde_dsi_get_pkt_div(i32 %133, i32 640)
  store i32 %134, i32* %22, align 4
  br label %135

135:                                              ; preds = %128, %125
  %136 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %137 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %142 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %22, align 4
  %145 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %19, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %22, align 4
  %150 = sdiv i32 %148, %149
  store i32 %150, i32* %16, align 4
  %151 = load %struct.mcde*, %struct.mcde** %10, align 8
  %152 = getelementptr inbounds %struct.mcde, %struct.mcde* %151, i32 0, i32 3
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %135
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %162

162:                                              ; preds = %159, %135
  %163 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %164 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %22, align 4
  %168 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %170 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %174, %177
  %179 = load i32, i32* %18, align 4
  %180 = mul nsw i32 %178, %179
  %181 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %180)
  %182 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %183 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %18, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load %struct.mcde*, %struct.mcde** %10, align 8
  %188 = getelementptr inbounds %struct.mcde, %struct.mcde* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %190 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.mcde*, %struct.mcde** %10, align 8
  %193 = getelementptr inbounds %struct.mcde, %struct.mcde* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %22, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %15, align 4
  %200 = mul nsw i32 %198, %199
  store i32 %200, i32* %21, align 4
  %201 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %202 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %21, align 4
  %205 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %204)
  %206 = load %struct.mcde*, %struct.mcde** %10, align 8
  %207 = load i32, i32* @MCDE_FIFO_A, align 4
  %208 = load i32, i32* @MCDE_CHANNEL_0, align 4
  %209 = call i32 @mcde_drain_pipe(%struct.mcde* %206, i32 %207, i32 %208)
  %210 = load %struct.mcde*, %struct.mcde** %10, align 8
  %211 = load i32, i32* @MCDE_EXTSRC_0, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @mcde_configure_extsrc(%struct.mcde* %210, i32 %211, i32 %212)
  %214 = load %struct.mcde*, %struct.mcde** %10, align 8
  %215 = load i32, i32* @MCDE_OVERLAY_0, align 4
  %216 = load i32, i32* @MCDE_EXTSRC_0, align 4
  %217 = load i32, i32* @MCDE_CHANNEL_0, align 4
  %218 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @mcde_configure_overlay(%struct.mcde* %214, i32 %215, i32 %216, i32 %217, %struct.drm_display_mode* %218, i32 %219)
  %221 = load %struct.mcde*, %struct.mcde** %10, align 8
  %222 = load i32, i32* @MCDE_CHANNEL_0, align 4
  %223 = load i32, i32* @MCDE_FIFO_A, align 4
  %224 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %225 = call i32 @mcde_configure_channel(%struct.mcde* %221, i32 %222, i32 %223, %struct.drm_display_mode* %224)
  %226 = load %struct.mcde*, %struct.mcde** %10, align 8
  %227 = load i32, i32* @MCDE_FIFO_A, align 4
  %228 = load i32, i32* @MCDE_DSI_FORMATTER_0, align 4
  %229 = load i32, i32* %17, align 4
  %230 = call i32 @mcde_configure_fifo(%struct.mcde* %226, i32 %227, i32 %228, i32 %229)
  %231 = load %struct.mcde*, %struct.mcde** %10, align 8
  %232 = load i32, i32* @MCDE_DSI_FORMATTER_0, align 4
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @mcde_configure_dsi_formatter(%struct.mcde* %231, i32 %232, i32 %233, i32 %234)
  %236 = load %struct.mcde*, %struct.mcde** %10, align 8
  %237 = getelementptr inbounds %struct.mcde, %struct.mcde* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %276

240:                                              ; preds = %162
  %241 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %242 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @MCDE_VSCRC_VSPOL, align 4
  store i32 %248, i32* %23, align 4
  br label %250

249:                                              ; preds = %240
  store i32 0, i32* %23, align 4
  br label %250

250:                                              ; preds = %249, %247
  %251 = load i32, i32* %23, align 4
  %252 = load %struct.mcde*, %struct.mcde** %10, align 8
  %253 = getelementptr inbounds %struct.mcde, %struct.mcde* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @MCDE_VSCRC0, align 8
  %256 = add nsw i64 %254, %255
  %257 = call i32 @writel(i32 %251, i64 %256)
  %258 = load %struct.mcde*, %struct.mcde** %10, align 8
  %259 = getelementptr inbounds %struct.mcde, %struct.mcde* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @MCDE_CRC, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @readl(i64 %262)
  store i32 %263, i32* %23, align 4
  %264 = load i32, i32* @MCDE_CRC_SYCEN0, align 4
  %265 = load i32, i32* %23, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %23, align 4
  %267 = load i32, i32* %23, align 4
  %268 = load %struct.mcde*, %struct.mcde** %10, align 8
  %269 = getelementptr inbounds %struct.mcde, %struct.mcde* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MCDE_CRC, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @writel(i32 %267, i64 %272)
  %274 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %275 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %274)
  br label %276

276:                                              ; preds = %250, %162
  %277 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %278 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i32, i8*, ...) @dev_info(i32 %279, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %281

281:                                              ; preds = %276, %75
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mcde_dsi_get_pkt_div(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mcde_drain_pipe(%struct.mcde*, i32, i32) #1

declare dso_local i32 @mcde_configure_extsrc(%struct.mcde*, i32, i32) #1

declare dso_local i32 @mcde_configure_overlay(%struct.mcde*, i32, i32, i32, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @mcde_configure_channel(%struct.mcde*, i32, i32, %struct.drm_display_mode*) #1

declare dso_local i32 @mcde_configure_fifo(%struct.mcde*, i32, i32, i32) #1

declare dso_local i32 @mcde_configure_dsi_formatter(%struct.mcde*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
