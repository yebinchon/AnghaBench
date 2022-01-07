; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_config_pv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_config_pv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.vc4_encoder = type { i64, i32 }
%struct.vc4_crtc = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@VC4_ENCODER_TYPE_DSI0 = common dso_local global i64 0, align 8
@VC4_ENCODER_TYPE_DSI1 = common dso_local global i64 0, align 8
@PV_CONTROL_FORMAT_DSIV_24 = common dso_local global i32 0, align 4
@PV_CONTROL_FORMAT_24 = common dso_local global i32 0, align 4
@PV_CONTROL = common dso_local global i32 0, align 4
@PV_CONTROL_FIFO_CLR = common dso_local global i32 0, align 4
@PV_CONTROL_EN = common dso_local global i32 0, align 4
@PV_HORZA = common dso_local global i32 0, align 4
@PV_HORZA_HBP = common dso_local global i32 0, align 4
@PV_HORZA_HSYNC = common dso_local global i32 0, align 4
@PV_HORZB = common dso_local global i32 0, align 4
@PV_HORZB_HFP = common dso_local global i32 0, align 4
@PV_HORZB_HACTIVE = common dso_local global i32 0, align 4
@PV_VERTA = common dso_local global i32 0, align 4
@PV_VERTA_VBP = common dso_local global i32 0, align 4
@PV_VERTA_VSYNC = common dso_local global i32 0, align 4
@PV_VERTB = common dso_local global i32 0, align 4
@PV_VERTB_VFP = common dso_local global i32 0, align 4
@PV_VERTB_VACTIVE = common dso_local global i32 0, align 4
@PV_VERTA_EVEN = common dso_local global i32 0, align 4
@PV_VERTB_EVEN = common dso_local global i32 0, align 4
@PV_V_CONTROL = common dso_local global i32 0, align 4
@PV_VCONTROL_CONTINUOUS = common dso_local global i32 0, align 4
@PV_VCONTROL_DSI = common dso_local global i32 0, align 4
@PV_VCONTROL_INTERLACE = common dso_local global i32 0, align 4
@PV_VCONTROL_ODD_DELAY = common dso_local global i32 0, align 4
@PV_VSYNCD_EVEN = common dso_local global i32 0, align 4
@PV_HACT_ACT = common dso_local global i32 0, align 4
@PV_CONTROL_FORMAT = common dso_local global i32 0, align 4
@PV_CONTROL_FIFO_LEVEL = common dso_local global i32 0, align 4
@PV_CONTROL_PIXEL_REP = common dso_local global i32 0, align 4
@PV_CONTROL_CLR_AT_START = common dso_local global i32 0, align 4
@PV_CONTROL_TRIGGER_UNDERFLOW = common dso_local global i32 0, align 4
@PV_CONTROL_WAIT_HSTART = common dso_local global i32 0, align 4
@PV_CONTROL_CLK_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vc4_crtc_config_pv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_config_pv(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.vc4_encoder*, align 8
  %5 = alloca %struct.vc4_crtc*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = call %struct.drm_encoder* @vc4_get_crtc_encoder(%struct.drm_crtc* %12)
  store %struct.drm_encoder* %13, %struct.drm_encoder** %3, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = call %struct.vc4_encoder* @to_vc4_encoder(%struct.drm_encoder* %14)
  store %struct.vc4_encoder* %15, %struct.vc4_encoder** %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %16)
  store %struct.vc4_crtc* %17, %struct.vc4_crtc** %5, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %19, align 8
  store %struct.drm_crtc_state* %20, %struct.drm_crtc_state** %6, align 8
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %22 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %21, i32 0, i32 0
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %7, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 2, i32 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.vc4_encoder*, %struct.vc4_encoder** %4, align 8
  %37 = getelementptr inbounds %struct.vc4_encoder, %struct.vc4_encoder* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VC4_ENCODER_TYPE_DSI0, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %1
  %42 = load %struct.vc4_encoder*, %struct.vc4_encoder** %4, align 8
  %43 = getelementptr inbounds %struct.vc4_encoder, %struct.vc4_encoder* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VC4_ENCODER_TYPE_DSI1, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %1
  %48 = phi i1 [ true, %1 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @PV_CONTROL_FORMAT_DSIV_24, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @PV_CONTROL_FORMAT_24, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @PV_CONTROL, align 4
  %59 = call i32 @CRTC_WRITE(i32 %58, i32 0)
  %60 = load i32, i32* @PV_CONTROL, align 4
  %61 = load i32, i32* @PV_CONTROL_FIFO_CLR, align 4
  %62 = load i32, i32* @PV_CONTROL_EN, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @CRTC_WRITE(i32 %60, i32 %63)
  %65 = load i32, i32* @PV_CONTROL, align 4
  %66 = call i32 @CRTC_WRITE(i32 %65, i32 0)
  %67 = load i32, i32* @PV_HORZA, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* @PV_HORZA_HBP, align 4
  %78 = call i32 @VC4_SET_FIELD(i32 %76, i32 %77)
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* @PV_HORZA_HSYNC, align 4
  %89 = call i32 @VC4_SET_FIELD(i32 %87, i32 %88)
  %90 = or i32 %78, %89
  %91 = call i32 @CRTC_WRITE(i32 %67, i32 %90)
  %92 = load i32, i32* @PV_HORZB, align 4
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* @PV_HORZB_HFP, align 4
  %103 = call i32 @VC4_SET_FIELD(i32 %101, i32 %102)
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %105 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* @PV_HORZB_HACTIVE, align 4
  %110 = call i32 @VC4_SET_FIELD(i32 %108, i32 %109)
  %111 = or i32 %103, %110
  %112 = call i32 @CRTC_WRITE(i32 %92, i32 %111)
  %113 = load i32, i32* @PV_VERTA, align 4
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %118 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = load i32, i32* @PV_VERTA_VBP, align 4
  %122 = call i32 @VC4_SET_FIELD(i32 %120, i32 %121)
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = load i32, i32* @PV_VERTA_VSYNC, align 4
  %131 = call i32 @VC4_SET_FIELD(i32 %129, i32 %130)
  %132 = or i32 %122, %131
  %133 = call i32 @CRTC_WRITE(i32 %113, i32 %132)
  %134 = load i32, i32* @PV_VERTB, align 4
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  %142 = load i32, i32* @PV_VERTB_VFP, align 4
  %143 = call i32 @VC4_SET_FIELD(i32 %141, i32 %142)
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @PV_VERTB_VACTIVE, align 4
  %148 = call i32 @VC4_SET_FIELD(i32 %146, i32 %147)
  %149 = or i32 %143, %148
  %150 = call i32 @CRTC_WRITE(i32 %134, i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %217

153:                                              ; preds = %56
  %154 = load i32, i32* @PV_VERTA_EVEN, align 4
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %159 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %157, %160
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* @PV_VERTA_VBP, align 4
  %164 = call i32 @VC4_SET_FIELD(i32 %162, i32 %163)
  %165 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %166 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %167, %170
  %172 = load i32, i32* @PV_VERTA_VSYNC, align 4
  %173 = call i32 @VC4_SET_FIELD(i32 %171, i32 %172)
  %174 = or i32 %164, %173
  %175 = call i32 @CRTC_WRITE(i32 %154, i32 %174)
  %176 = load i32, i32* @PV_VERTB_EVEN, align 4
  %177 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %178 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %181 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %179, %182
  %184 = load i32, i32* @PV_VERTB_VFP, align 4
  %185 = call i32 @VC4_SET_FIELD(i32 %183, i32 %184)
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %187 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @PV_VERTB_VACTIVE, align 4
  %190 = call i32 @VC4_SET_FIELD(i32 %188, i32 %189)
  %191 = or i32 %185, %190
  %192 = call i32 @CRTC_WRITE(i32 %176, i32 %191)
  %193 = load i32, i32* @PV_V_CONTROL, align 4
  %194 = load i32, i32* @PV_VCONTROL_CONTINUOUS, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %153
  %198 = load i32, i32* @PV_VCONTROL_DSI, align 4
  br label %200

199:                                              ; preds = %153
  br label %200

200:                                              ; preds = %199, %197
  %201 = phi i32 [ %198, %197 ], [ 0, %199 ]
  %202 = or i32 %194, %201
  %203 = load i32, i32* @PV_VCONTROL_INTERLACE, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %206 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = mul nsw i32 %207, %208
  %210 = sdiv i32 %209, 2
  %211 = load i32, i32* @PV_VCONTROL_ODD_DELAY, align 4
  %212 = call i32 @VC4_SET_FIELD(i32 %210, i32 %211)
  %213 = or i32 %204, %212
  %214 = call i32 @CRTC_WRITE(i32 %193, i32 %213)
  %215 = load i32, i32* @PV_VSYNCD_EVEN, align 4
  %216 = call i32 @CRTC_WRITE(i32 %215, i32 0)
  br label %229

217:                                              ; preds = %56
  %218 = load i32, i32* @PV_V_CONTROL, align 4
  %219 = load i32, i32* @PV_VCONTROL_CONTINUOUS, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @PV_VCONTROL_DSI, align 4
  br label %225

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %222
  %226 = phi i32 [ %223, %222 ], [ 0, %224 ]
  %227 = or i32 %219, %226
  %228 = call i32 @CRTC_WRITE(i32 %218, i32 %227)
  br label %229

229:                                              ; preds = %225, %200
  %230 = load i32, i32* @PV_HACT_ACT, align 4
  %231 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %232 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %9, align 4
  %235 = mul nsw i32 %233, %234
  %236 = call i32 @CRTC_WRITE(i32 %230, i32 %235)
  %237 = load i32, i32* @PV_CONTROL, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @PV_CONTROL_FORMAT, align 4
  %240 = call i32 @VC4_SET_FIELD(i32 %238, i32 %239)
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @vc4_get_fifo_full_level(i32 %241)
  %243 = load i32, i32* @PV_CONTROL_FIFO_LEVEL, align 4
  %244 = call i32 @VC4_SET_FIELD(i32 %242, i32 %243)
  %245 = or i32 %240, %244
  %246 = load i32, i32* %9, align 4
  %247 = sub nsw i32 %246, 1
  %248 = load i32, i32* @PV_CONTROL_PIXEL_REP, align 4
  %249 = call i32 @VC4_SET_FIELD(i32 %247, i32 %248)
  %250 = or i32 %245, %249
  %251 = load i32, i32* @PV_CONTROL_CLR_AT_START, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @PV_CONTROL_TRIGGER_UNDERFLOW, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @PV_CONTROL_WAIT_HSTART, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.vc4_encoder*, %struct.vc4_encoder** %4, align 8
  %258 = getelementptr inbounds %struct.vc4_encoder, %struct.vc4_encoder* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @PV_CONTROL_CLK_SELECT, align 4
  %261 = call i32 @VC4_SET_FIELD(i32 %259, i32 %260)
  %262 = or i32 %256, %261
  %263 = load i32, i32* @PV_CONTROL_FIFO_CLR, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @PV_CONTROL_EN, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @CRTC_WRITE(i32 %237, i32 %266)
  ret void
}

declare dso_local %struct.drm_encoder* @vc4_get_crtc_encoder(%struct.drm_crtc*) #1

declare dso_local %struct.vc4_encoder* @to_vc4_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @CRTC_WRITE(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @vc4_get_fifo_full_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
