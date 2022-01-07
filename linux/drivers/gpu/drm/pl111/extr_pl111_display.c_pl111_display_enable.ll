; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_plane, %struct.drm_crtc }
%struct.drm_plane = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { %struct.TYPE_7__*, i64, i64, i32 (%struct.drm_device.0*, i32)*, i32, i32, %struct.drm_bridge*, %struct.drm_connector* }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i64 }
%struct.drm_device.0 = type opaque
%struct.drm_bridge = type { %struct.drm_bridge_timings* }
%struct.drm_bridge_timings = type { i32 }
%struct.drm_connector = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64* }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_plane_state = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to set pixel clock rate to %d: %d\0A\00", align 1
@CLCD_TIM0 = common dso_local global i64 0, align 8
@CLCD_TIM1 = common dso_local global i64 0, align 8
@CLCD_TIM2 = common dso_local global i64 0, align 8
@TIM2_BCD = common dso_local global i32 0, align 4
@TIM2_PCD_LO_MASK = common dso_local global i32 0, align 4
@TIM2_PCD_HI_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@TIM2_IHS = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@TIM2_IVS = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_LOW = common dso_local global i32 0, align 4
@TIM2_IOE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@TIM2_IPC = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y8_1X8 = common dso_local global i64 0, align 8
@TIM2_ACB_MASK = common dso_local global i32 0, align 4
@CLCD_TIM3 = common dso_local global i64 0, align 8
@CNTL_LCDEN = common dso_local global i32 0, align 4
@CNTL_LCDMONO8 = common dso_local global i32 0, align 4
@CNTL_LCDTFT = common dso_local global i32 0, align 4
@CNTL_ST_CDWID_24 = common dso_local global i32 0, align 4
@CNTL_ST_LCDBPP24_PACKED = common dso_local global i32 0, align 4
@CNTL_BGR = common dso_local global i32 0, align 4
@CNTL_LCDBPP24 = common dso_local global i32 0, align 4
@CNTL_LCDBPP16 = common dso_local global i32 0, align 4
@CNTL_ST_1XBPP_565 = common dso_local global i32 0, align 4
@CNTL_LCDBPP16_565 = common dso_local global i32 0, align 4
@CNTL_ST_1XBPP_5551 = common dso_local global i32 0, align 4
@CNTL_LCDBPP16_444 = common dso_local global i32 0, align 4
@CNTL_ST_1XBPP_444 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown FB format 0x%08x\0A\00", align 1
@CNTL_LCDPWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*, %struct.drm_crtc_state*, %struct.drm_plane_state*)* @pl111_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl111_display_enable(%struct.drm_simple_display_pipe* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.drm_simple_display_pipe*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.pl111_drm_dev_private*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_connector*, align 8
  %14 = alloca %struct.drm_bridge*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.drm_bridge_timings*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %29 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %30 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %29, i32 0, i32 1
  store %struct.drm_crtc* %30, %struct.drm_crtc** %7, align 8
  %31 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %4, align 8
  %32 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %31, i32 0, i32 0
  store %struct.drm_plane* %32, %struct.drm_plane** %8, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  store %struct.drm_device* %35, %struct.drm_device** %9, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 1
  %38 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %37, align 8
  store %struct.pl111_drm_dev_private* %38, %struct.pl111_drm_dev_private** %10, align 8
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %40 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %39, i32 0, i32 0
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %11, align 8
  %41 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %44, align 8
  store %struct.drm_framebuffer* %45, %struct.drm_framebuffer** %12, align 8
  %46 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %47 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %46, i32 0, i32 7
  %48 = load %struct.drm_connector*, %struct.drm_connector** %47, align 8
  store %struct.drm_connector* %48, %struct.drm_connector** %13, align 8
  %49 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %50 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %49, i32 0, i32 6
  %51 = load %struct.drm_bridge*, %struct.drm_bridge** %50, align 8
  store %struct.drm_bridge* %51, %struct.drm_bridge** %14, align 8
  store i32 0, i32* %15, align 4
  %52 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %53 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 1000
  %59 = call i32 @clk_set_rate(i32 %54, i32 %58)
  store i32 %59, i32* %27, align 4
  %60 = load i32, i32* %27, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %3
  %63 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = load i32, i32* %27, align 4
  %71 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %3
  %73 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %74 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_prepare_enable(i32 %75)
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 16
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %18, align 4
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %22, align 4
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  store i32 %124, i32* %23, align 4
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  store i32 %131, i32* %24, align 4
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %25, align 4
  %136 = load i32, i32* %17, align 4
  %137 = shl i32 %136, 2
  %138 = load i32, i32* %18, align 4
  %139 = shl i32 %138, 8
  %140 = or i32 %137, %139
  %141 = load i32, i32* %19, align 4
  %142 = shl i32 %141, 16
  %143 = or i32 %140, %142
  %144 = load i32, i32* %20, align 4
  %145 = shl i32 %144, 24
  %146 = or i32 %143, %145
  %147 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %148 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CLCD_TIM0, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 %146, i64 %151)
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %22, align 4
  %155 = shl i32 %154, 10
  %156 = or i32 %153, %155
  %157 = load i32, i32* %23, align 4
  %158 = shl i32 %157, 16
  %159 = or i32 %156, %158
  %160 = load i32, i32* %24, align 4
  %161 = shl i32 %160, 24
  %162 = or i32 %159, %161
  %163 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %164 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CLCD_TIM1, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writel(i32 %162, i64 %167)
  %169 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %170 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %169, i32 0, i32 4
  %171 = call i32 @spin_lock(i32* %170)
  %172 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %173 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CLCD_TIM2, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @readl(i64 %176)
  store i32 %177, i32* %26, align 4
  %178 = load i32, i32* @TIM2_BCD, align 4
  %179 = load i32, i32* @TIM2_PCD_LO_MASK, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @TIM2_PCD_HI_MASK, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %26, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %26, align 4
  %185 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %186 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %185, i32 0, i32 0
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %72
  %192 = load i32, i32* @TIM2_BCD, align 4
  %193 = load i32, i32* %26, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %26, align 4
  br label %195

195:                                              ; preds = %191, %72
  %196 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %197 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load i32, i32* @TIM2_IHS, align 4
  %204 = load i32, i32* %26, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %26, align 4
  br label %206

206:                                              ; preds = %202, %195
  %207 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %208 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load i32, i32* @TIM2_IVS, align 4
  %215 = load i32, i32* %26, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %26, align 4
  br label %217

217:                                              ; preds = %213, %206
  %218 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %219 = icmp ne %struct.drm_connector* %218, null
  br i1 %219, label %220, label %268

220:                                              ; preds = %217
  %221 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %222 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @DRM_BUS_FLAG_DE_LOW, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %220
  %229 = load i32, i32* @TIM2_IOE, align 4
  %230 = load i32, i32* %26, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %26, align 4
  br label %232

232:                                              ; preds = %228, %220
  %233 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %234 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %232
  %241 = load i32, i32* @TIM2_IPC, align 4
  %242 = load i32, i32* %26, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %26, align 4
  br label %244

244:                                              ; preds = %240, %232
  %245 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %246 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load %struct.drm_connector*, %struct.drm_connector** %13, align 8
  %252 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @MEDIA_BUS_FMT_Y8_1X8, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  store i32 1, i32* %15, align 4
  br label %260

260:                                              ; preds = %259, %250, %244
  %261 = load i32, i32* %15, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load i32, i32* @TIM2_ACB_MASK, align 4
  %265 = load i32, i32* %26, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %26, align 4
  br label %267

267:                                              ; preds = %263, %260
  br label %268

268:                                              ; preds = %267, %217
  %269 = load %struct.drm_bridge*, %struct.drm_bridge** %14, align 8
  %270 = icmp ne %struct.drm_bridge* %269, null
  br i1 %270, label %271, label %287

271:                                              ; preds = %268
  %272 = load %struct.drm_bridge*, %struct.drm_bridge** %14, align 8
  %273 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %272, i32 0, i32 0
  %274 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %273, align 8
  store %struct.drm_bridge_timings* %274, %struct.drm_bridge_timings** %28, align 8
  %275 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %28, align 8
  %276 = icmp ne %struct.drm_bridge_timings* %275, null
  br i1 %276, label %277, label %286

277:                                              ; preds = %271
  %278 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %28, align 8
  %279 = getelementptr inbounds %struct.drm_bridge_timings, %struct.drm_bridge_timings* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp sge i32 %280, 3000
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load i32, i32* @TIM2_IPC, align 4
  %284 = load i32, i32* %26, align 4
  %285 = xor i32 %284, %283
  store i32 %285, i32* %26, align 4
  br label %286

286:                                              ; preds = %282, %277, %271
  br label %287

287:                                              ; preds = %286, %268
  %288 = load i32, i32* %25, align 4
  %289 = shl i32 %288, 16
  %290 = load i32, i32* %26, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %26, align 4
  %292 = load i32, i32* %26, align 4
  %293 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %294 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @CLCD_TIM2, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writel(i32 %292, i64 %297)
  %299 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %300 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %299, i32 0, i32 4
  %301 = call i32 @spin_unlock(i32* %300)
  %302 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %303 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @CLCD_TIM3, align 8
  %306 = add nsw i64 %304, %305
  %307 = call i32 @writel(i32 0, i64 %306)
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %287
  %311 = load i32, i32* @CNTL_LCDEN, align 4
  %312 = load i32, i32* @CNTL_LCDMONO8, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %16, align 4
  br label %320

314:                                              ; preds = %287
  %315 = load i32, i32* @CNTL_LCDEN, align 4
  %316 = load i32, i32* @CNTL_LCDTFT, align 4
  %317 = or i32 %315, %316
  %318 = call i32 @CNTL_LCDVCOMP(i32 1)
  %319 = or i32 %317, %318
  store i32 %319, i32* %16, align 4
  br label %320

320:                                              ; preds = %314, %310
  %321 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %322 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %321, i32 0, i32 0
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %320
  %328 = load i32, i32* @CNTL_ST_CDWID_24, align 4
  %329 = load i32, i32* %16, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %16, align 4
  br label %331

331:                                              ; preds = %327, %320
  %332 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %333 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %332, i32 0, i32 0
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  switch i32 %336, label %537 [
    i32 136, label %337
    i32 134, label %351
    i32 141, label %363
    i32 131, label %363
    i32 138, label %381
    i32 128, label %381
    i32 137, label %399
    i32 135, label %431
    i32 143, label %465
    i32 133, label %465
    i32 140, label %482
    i32 130, label %482
    i32 142, label %501
    i32 132, label %501
    i32 139, label %518
    i32 129, label %518
  ]

337:                                              ; preds = %331
  %338 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %339 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %338, i32 0, i32 0
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %337
  %345 = load i32, i32* @CNTL_ST_LCDBPP24_PACKED, align 4
  %346 = load i32, i32* @CNTL_BGR, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* %16, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %16, align 4
  br label %350

350:                                              ; preds = %344, %337
  br label %544

351:                                              ; preds = %331
  %352 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %353 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %352, i32 0, i32 0
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %351
  %359 = load i32, i32* @CNTL_ST_LCDBPP24_PACKED, align 4
  %360 = load i32, i32* %16, align 4
  %361 = or i32 %360, %359
  store i32 %361, i32* %16, align 4
  br label %362

362:                                              ; preds = %358, %351
  br label %544

363:                                              ; preds = %331, %331
  %364 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %365 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %364, i32 0, i32 0
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %363
  %371 = load i32, i32* @CNTL_LCDBPP24, align 4
  %372 = load i32, i32* @CNTL_BGR, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* %16, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %16, align 4
  br label %380

376:                                              ; preds = %363
  %377 = load i32, i32* @CNTL_LCDBPP24, align 4
  %378 = load i32, i32* %16, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %16, align 4
  br label %380

380:                                              ; preds = %376, %370
  br label %544

381:                                              ; preds = %331, %331
  %382 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %383 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %382, i32 0, i32 0
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %381
  %389 = load i32, i32* @CNTL_LCDBPP24, align 4
  %390 = load i32, i32* %16, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %16, align 4
  br label %398

392:                                              ; preds = %381
  %393 = load i32, i32* @CNTL_LCDBPP24, align 4
  %394 = load i32, i32* @CNTL_BGR, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* %16, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %16, align 4
  br label %398

398:                                              ; preds = %392, %388
  br label %544

399:                                              ; preds = %331
  %400 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %401 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %400, i32 0, i32 0
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %399
  %407 = load i32, i32* @CNTL_LCDBPP16, align 4
  %408 = load i32, i32* %16, align 4
  %409 = or i32 %408, %407
  store i32 %409, i32* %16, align 4
  br label %430

410:                                              ; preds = %399
  %411 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %412 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %411, i32 0, i32 0
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %410
  %418 = load i32, i32* @CNTL_LCDBPP16, align 4
  %419 = load i32, i32* @CNTL_ST_1XBPP_565, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @CNTL_BGR, align 4
  %422 = or i32 %420, %421
  %423 = load i32, i32* %16, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %16, align 4
  br label %429

425:                                              ; preds = %410
  %426 = load i32, i32* @CNTL_LCDBPP16_565, align 4
  %427 = load i32, i32* %16, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* %16, align 4
  br label %429

429:                                              ; preds = %425, %417
  br label %430

430:                                              ; preds = %429, %406
  br label %544

431:                                              ; preds = %331
  %432 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %433 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %432, i32 0, i32 0
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %431
  %439 = load i32, i32* @CNTL_LCDBPP16, align 4
  %440 = load i32, i32* @CNTL_BGR, align 4
  %441 = or i32 %439, %440
  %442 = load i32, i32* %16, align 4
  %443 = or i32 %442, %441
  store i32 %443, i32* %16, align 4
  br label %464

444:                                              ; preds = %431
  %445 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %446 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %445, i32 0, i32 0
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %457

451:                                              ; preds = %444
  %452 = load i32, i32* @CNTL_LCDBPP16, align 4
  %453 = load i32, i32* @CNTL_ST_1XBPP_565, align 4
  %454 = or i32 %452, %453
  %455 = load i32, i32* %16, align 4
  %456 = or i32 %455, %454
  store i32 %456, i32* %16, align 4
  br label %463

457:                                              ; preds = %444
  %458 = load i32, i32* @CNTL_LCDBPP16_565, align 4
  %459 = load i32, i32* @CNTL_BGR, align 4
  %460 = or i32 %458, %459
  %461 = load i32, i32* %16, align 4
  %462 = or i32 %461, %460
  store i32 %462, i32* %16, align 4
  br label %463

463:                                              ; preds = %457, %451
  br label %464

464:                                              ; preds = %463, %438
  br label %544

465:                                              ; preds = %331, %331
  %466 = load i32, i32* @CNTL_LCDBPP16, align 4
  %467 = load i32, i32* %16, align 4
  %468 = or i32 %467, %466
  store i32 %468, i32* %16, align 4
  %469 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %470 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %469, i32 0, i32 0
  %471 = load %struct.TYPE_7__*, %struct.TYPE_7__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 2
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %465
  %476 = load i32, i32* @CNTL_ST_1XBPP_5551, align 4
  %477 = load i32, i32* @CNTL_BGR, align 4
  %478 = or i32 %476, %477
  %479 = load i32, i32* %16, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %16, align 4
  br label %481

481:                                              ; preds = %475, %465
  br label %544

482:                                              ; preds = %331, %331
  %483 = load i32, i32* @CNTL_LCDBPP16, align 4
  %484 = load i32, i32* %16, align 4
  %485 = or i32 %484, %483
  store i32 %485, i32* %16, align 4
  %486 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %487 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %486, i32 0, i32 0
  %488 = load %struct.TYPE_7__*, %struct.TYPE_7__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %482
  %493 = load i32, i32* @CNTL_ST_1XBPP_5551, align 4
  %494 = load i32, i32* %16, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %16, align 4
  br label %500

496:                                              ; preds = %482
  %497 = load i32, i32* @CNTL_BGR, align 4
  %498 = load i32, i32* %16, align 4
  %499 = or i32 %498, %497
  store i32 %499, i32* %16, align 4
  br label %500

500:                                              ; preds = %496, %492
  br label %544

501:                                              ; preds = %331, %331
  %502 = load i32, i32* @CNTL_LCDBPP16_444, align 4
  %503 = load i32, i32* %16, align 4
  %504 = or i32 %503, %502
  store i32 %504, i32* %16, align 4
  %505 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %506 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %505, i32 0, i32 0
  %507 = load %struct.TYPE_7__*, %struct.TYPE_7__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 2
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %517

511:                                              ; preds = %501
  %512 = load i32, i32* @CNTL_ST_1XBPP_444, align 4
  %513 = load i32, i32* @CNTL_BGR, align 4
  %514 = or i32 %512, %513
  %515 = load i32, i32* %16, align 4
  %516 = or i32 %515, %514
  store i32 %516, i32* %16, align 4
  br label %517

517:                                              ; preds = %511, %501
  br label %544

518:                                              ; preds = %331, %331
  %519 = load i32, i32* @CNTL_LCDBPP16_444, align 4
  %520 = load i32, i32* %16, align 4
  %521 = or i32 %520, %519
  store i32 %521, i32* %16, align 4
  %522 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %523 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %522, i32 0, i32 0
  %524 = load %struct.TYPE_7__*, %struct.TYPE_7__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %524, i32 0, i32 2
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %518
  %529 = load i32, i32* @CNTL_ST_1XBPP_444, align 4
  %530 = load i32, i32* %16, align 4
  %531 = or i32 %530, %529
  store i32 %531, i32* %16, align 4
  br label %536

532:                                              ; preds = %518
  %533 = load i32, i32* @CNTL_BGR, align 4
  %534 = load i32, i32* %16, align 4
  %535 = or i32 %534, %533
  store i32 %535, i32* %16, align 4
  br label %536

536:                                              ; preds = %532, %528
  br label %544

537:                                              ; preds = %331
  %538 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %539 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %538, i32 0, i32 0
  %540 = load %struct.TYPE_5__*, %struct.TYPE_5__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %542)
  br label %544

544:                                              ; preds = %537, %536, %517, %500, %481, %464, %430, %398, %380, %362, %350
  %545 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %546 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %545, i32 0, i32 0
  %547 = load %struct.TYPE_7__*, %struct.TYPE_7__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %547, i32 0, i32 1
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %544
  %552 = load i32, i32* @CNTL_BGR, align 4
  %553 = xor i32 %552, -1
  %554 = load i32, i32* %16, align 4
  %555 = and i32 %554, %553
  store i32 %555, i32* %16, align 4
  br label %556

556:                                              ; preds = %551, %544
  %557 = load i32, i32* %16, align 4
  %558 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %559 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %562 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %561, i32 0, i32 1
  %563 = load i64, i64* %562, align 8
  %564 = add nsw i64 %560, %563
  %565 = call i32 @writel(i32 %557, i64 %564)
  %566 = call i32 @msleep(i32 20)
  %567 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %568 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %567, i32 0, i32 3
  %569 = load i32 (%struct.drm_device.0*, i32)*, i32 (%struct.drm_device.0*, i32)** %568, align 8
  %570 = icmp ne i32 (%struct.drm_device.0*, i32)* %569, null
  br i1 %570, label %571, label %583

571:                                              ; preds = %556
  %572 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %573 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %572, i32 0, i32 3
  %574 = load i32 (%struct.drm_device.0*, i32)*, i32 (%struct.drm_device.0*, i32)** %573, align 8
  %575 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %576 = bitcast %struct.drm_device* %575 to %struct.drm_device.0*
  %577 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %578 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %577, i32 0, i32 0
  %579 = load %struct.TYPE_5__*, %struct.TYPE_5__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 4
  %582 = call i32 %574(%struct.drm_device.0* %576, i32 %581)
  br label %583

583:                                              ; preds = %571, %556
  %584 = load i32, i32* @CNTL_LCDPWR, align 4
  %585 = load i32, i32* %16, align 4
  %586 = or i32 %585, %584
  store i32 %586, i32* %16, align 4
  %587 = load i32, i32* %16, align 4
  %588 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %589 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %588, i32 0, i32 2
  %590 = load i64, i64* %589, align 8
  %591 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %592 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %591, i32 0, i32 1
  %593 = load i64, i64* %592, align 8
  %594 = add nsw i64 %590, %593
  %595 = call i32 @writel(i32 %587, i64 %594)
  %596 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  %597 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %596, i32 0, i32 0
  %598 = load %struct.TYPE_7__*, %struct.TYPE_7__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %605, label %602

602:                                              ; preds = %583
  %603 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %604 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %603)
  br label %605

605:                                              ; preds = %602, %583
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @CNTL_LCDVCOMP(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
