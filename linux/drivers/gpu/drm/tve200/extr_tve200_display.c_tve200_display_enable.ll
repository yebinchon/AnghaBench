; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_plane, %struct.drm_crtc }
%struct.drm_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.tve200_drm_dev_private* }
%struct.tve200_drm_dev_private = type { i64, i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_plane_state = type { i32 }

@TVE200_CTRL_CSMODE = common dso_local global i32 0, align 4
@TVE200_CTRL_NONINTERLACE = common dso_local global i32 0, align 4
@TVE200_CTRL_BURST_32_WORDS = common dso_local global i32 0, align 4
@TVE200_CTRL_RETRYCNT_16 = common dso_local global i32 0, align 4
@TVE200_CTRL_NTSC = common dso_local global i32 0, align 4
@TVE200_VSTSTYPE_VSYNC = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@TVE200_CTRL_TVCLKP = common dso_local global i32 0, align 4
@TVE200_CTRL_IPRESOL_CIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CIF mode\0A\00", align 1
@TVE200_CTRL_IPRESOL_VGA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"VGA mode\0A\00", align 1
@TVE200_CTRL_IPRESOL_D1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"D1 mode\0A\00", align 1
@DRM_FORMAT_BIG_ENDIAN = common dso_local global i32 0, align 4
@TVE200_CTRL_BBBP = common dso_local global i32 0, align 4
@TVE200_IPDMOD_RGB888 = common dso_local global i32 0, align 4
@TVE200_IPDMOD_RGB565 = common dso_local global i32 0, align 4
@TVE200_IPDMOD_RGB555 = common dso_local global i32 0, align 4
@TVE200_BGR = common dso_local global i32 0, align 4
@TVE200_IPDMOD_YUV422 = common dso_local global i32 0, align 4
@TVE200_CTRL_YCBCRODR_CR0Y1CB0Y0 = common dso_local global i32 0, align 4
@TVE200_CTRL_YCBCRODR_CB0Y1CR0Y0 = common dso_local global i32 0, align 4
@TVE200_CTRL_YCBCRODR_Y1CR0Y0CB0 = common dso_local global i32 0, align 4
@TVE200_CTRL_YCBCRODR_Y1CB0Y0CR0 = common dso_local global i32 0, align 4
@TVE200_CTRL_YUV420 = common dso_local global i32 0, align 4
@TVE200_IPDMOD_YUV420 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown FB format 0x%08x\0A\00", align 1
@TVE200_TVEEN = common dso_local global i32 0, align 4
@TVE200_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @tve200_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tve200_display_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.tve200_drm_dev_private*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_connector*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %16 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %17 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %16, i32 0, i32 1
  store %struct.drm_crtc* %17, %struct.drm_crtc** %7, align 8
  %18 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %19 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %18, i32 0, i32 0
  store %struct.drm_plane* %19, %struct.drm_plane** %8, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %9, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %24, align 8
  store %struct.tve200_drm_dev_private* %25, %struct.tve200_drm_dev_private** %10, align 8
  %26 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %27 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %26, i32 0, i32 0
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %11, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %31, align 8
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %12, align 8
  %33 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %10, align 8
  %34 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %33, i32 0, i32 2
  %35 = load %struct.drm_connector*, %struct.drm_connector** %34, align 8
  store %struct.drm_connector* %35, %struct.drm_connector** %13, align 8
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %41 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %10, align 8
  %42 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_prepare_enable(i32 %43)
  %45 = load i32, i32* @TVE200_CTRL_CSMODE, align 4
  %46 = load i32, i32* %15, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* @TVE200_CTRL_NONINTERLACE, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @TVE200_CTRL_BURST_32_WORDS, align 4
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* @TVE200_CTRL_RETRYCNT_16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* @TVE200_CTRL_NTSC, align 4
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @TVE200_VSTSTYPE_VSYNC, align 4
  %61 = load i32, i32* %15, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %64 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %3
  %71 = load i32, i32* @TVE200_CTRL_TVCLKP, align 4
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %3
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 352
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 240
  br i1 %83, label %94, label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 352
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 288
  br i1 %93, label %94, label %102

94:                                               ; preds = %89, %79
  %95 = load i32, i32* @TVE200_CTRL_IPRESOL_CIF, align 4
  %96 = load i32, i32* %15, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %15, align 4
  %98 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dev_info(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %150

102:                                              ; preds = %89, %84
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 640
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 480
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i32, i32* @TVE200_CTRL_IPRESOL_VGA, align 4
  %114 = load i32, i32* %15, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %15, align 4
  %116 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %117 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_info(i32 %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %149

120:                                              ; preds = %107, %102
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 720
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 480
  br i1 %129, label %140, label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 720
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 576
  br i1 %139, label %140, label %148

140:                                              ; preds = %135, %125
  %141 = load i32, i32* @TVE200_CTRL_IPRESOL_D1, align 4
  %142 = load i32, i32* %15, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %15, align 4
  %144 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %145 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dev_info(i32 %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %148

148:                                              ; preds = %140, %135, %130
  br label %149

149:                                              ; preds = %148, %112
  br label %150

150:                                              ; preds = %149, %94
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @DRM_FORMAT_BIG_ENDIAN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i32, i32* @TVE200_CTRL_BBBP, align 4
  %157 = load i32, i32* %15, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* @DRM_FORMAT_BIG_ENDIAN, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %155, %150
  %164 = load i32, i32* %14, align 4
  switch i32 %164, label %230 [
    i32 131, label %165
    i32 137, label %169
    i32 132, label %173
    i32 133, label %177
    i32 138, label %183
    i32 134, label %189
    i32 129, label %195
    i32 128, label %202
    i32 136, label %209
    i32 135, label %216
    i32 130, label %223
  ]

165:                                              ; preds = %163
  %166 = load i32, i32* @TVE200_IPDMOD_RGB888, align 4
  %167 = load i32, i32* %15, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %15, align 4
  br label %240

169:                                              ; preds = %163
  %170 = load i32, i32* @TVE200_IPDMOD_RGB565, align 4
  %171 = load i32, i32* %15, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %15, align 4
  br label %240

173:                                              ; preds = %163
  %174 = load i32, i32* @TVE200_IPDMOD_RGB555, align 4
  %175 = load i32, i32* %15, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %15, align 4
  br label %240

177:                                              ; preds = %163
  %178 = load i32, i32* @TVE200_IPDMOD_RGB888, align 4
  %179 = load i32, i32* @TVE200_BGR, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %15, align 4
  br label %240

183:                                              ; preds = %163
  %184 = load i32, i32* @TVE200_IPDMOD_RGB565, align 4
  %185 = load i32, i32* @TVE200_BGR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %15, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %240

189:                                              ; preds = %163
  %190 = load i32, i32* @TVE200_IPDMOD_RGB555, align 4
  %191 = load i32, i32* @TVE200_BGR, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %15, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %15, align 4
  br label %240

195:                                              ; preds = %163
  %196 = load i32, i32* @TVE200_IPDMOD_YUV422, align 4
  %197 = load i32, i32* %15, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* @TVE200_CTRL_YCBCRODR_CR0Y1CB0Y0, align 4
  %200 = load i32, i32* %15, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %15, align 4
  br label %240

202:                                              ; preds = %163
  %203 = load i32, i32* @TVE200_IPDMOD_YUV422, align 4
  %204 = load i32, i32* %15, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* @TVE200_CTRL_YCBCRODR_CB0Y1CR0Y0, align 4
  %207 = load i32, i32* %15, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %240

209:                                              ; preds = %163
  %210 = load i32, i32* @TVE200_IPDMOD_YUV422, align 4
  %211 = load i32, i32* %15, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* @TVE200_CTRL_YCBCRODR_Y1CR0Y0CB0, align 4
  %214 = load i32, i32* %15, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %15, align 4
  br label %240

216:                                              ; preds = %163
  %217 = load i32, i32* @TVE200_IPDMOD_YUV422, align 4
  %218 = load i32, i32* %15, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* @TVE200_CTRL_YCBCRODR_Y1CB0Y0CR0, align 4
  %221 = load i32, i32* %15, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %15, align 4
  br label %240

223:                                              ; preds = %163
  %224 = load i32, i32* @TVE200_CTRL_YUV420, align 4
  %225 = load i32, i32* %15, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* @TVE200_IPDMOD_YUV420, align 4
  %228 = load i32, i32* %15, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %15, align 4
  br label %240

230:                                              ; preds = %163
  %231 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %232 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %235 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %234, i32 0, i32 0
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @dev_err(i32 %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %230, %223, %216, %209, %202, %195, %189, %183, %177, %173, %169, %165
  %241 = load i32, i32* @TVE200_TVEEN, align 4
  %242 = load i32, i32* %15, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %15, align 4
  %244 = load i32, i32* %15, align 4
  %245 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %10, align 8
  %246 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @TVE200_CTRL, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writel(i32 %244, i64 %249)
  %251 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %252 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %251)
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
