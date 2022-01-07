; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, %struct.drm_rect, %struct.drm_framebuffer*, %struct.drm_rect, %struct.TYPE_7__* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_rect = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { i32 }
%struct.ipu_plane = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ipu_plane_state = type { i64 }
%struct.drm_format_info = type { i32* }

@IPUV3_COLORSPACE_RGB = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"phy = %lu %lu %lu, x = %d, y = %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"phy = %lu %lu, x = %d, y = %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"phys = %lu %lu, x = %d, y = %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"phys = %lu, x = %d, y = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @ipu_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.ipu_plane*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.ipu_plane_state*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_rect*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.drm_format_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %23 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %24 = call %struct.ipu_plane* @to_ipu_plane(%struct.drm_plane* %23)
  store %struct.ipu_plane* %24, %struct.ipu_plane** %5, align 8
  %25 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 0
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %26, align 8
  store %struct.drm_plane_state* %27, %struct.drm_plane_state** %6, align 8
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %29 = call %struct.ipu_plane_state* @to_ipu_plane_state(%struct.drm_plane_state* %28)
  store %struct.ipu_plane_state* %29, %struct.ipu_plane_state** %7, align 8
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %33, align 8
  store %struct.drm_crtc_state* %34, %struct.drm_crtc_state** %8, align 8
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 2
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %36, align 8
  store %struct.drm_framebuffer* %37, %struct.drm_framebuffer** %9, align 8
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 3
  store %struct.drm_rect* %39, %struct.drm_rect** %10, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %40 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %41 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %55

44:                                               ; preds = %2
  %45 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %46 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %49 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %52 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ipu_dp_set_window_pos(i32 %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %2
  %56 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %57 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %102 [
    i32 129, label %59
    i32 128, label %83
  ]

59:                                               ; preds = %55
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %66 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %69 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @ipu_dp_set_global_alpha(i32 %67, i32 %75, i32 255, i32 1)
  br label %82

77:                                               ; preds = %59
  %78 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %79 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ipu_dp_set_global_alpha(i32 %80, i32 1, i32 0, i32 1)
  br label %82

82:                                               ; preds = %77, %64
  br label %102

83:                                               ; preds = %55
  %84 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %90 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @ipu_dp_set_global_alpha(i32 %91, i32 %99, i32 255, i32 0)
  br label %101

101:                                              ; preds = %88, %83
  br label %102

102:                                              ; preds = %55, %101, %82
  %103 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %104 = call i64 @drm_plane_state_to_eba(%struct.drm_plane_state* %103, i32 0)
  store i64 %104, i64* %11, align 8
  %105 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %7, align 8
  %106 = getelementptr inbounds %struct.ipu_plane_state, %struct.ipu_plane_state* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %102
  %110 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %111 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ipu_chan_assign_axi_id(i32 %112)
  store i32 %113, i32* %16, align 4
  %114 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %115 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %119 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %118, i32 0, i32 1
  %120 = call i32 @drm_rect_width(%struct.drm_rect* %119)
  %121 = ashr i32 %120, 16
  %122 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %123 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %122, i32 0, i32 1
  %124 = call i32 @drm_rect_height(%struct.drm_rect* %123)
  %125 = ashr i32 %124, 16
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %127 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %132 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %137 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ipu_prg_channel_configure(i32 %116, i32 %117, i32 %121, i32 %125, i32 %130, i32 %135, i32 %138, i64* %11)
  br label %140

140:                                              ; preds = %109, %102
  %141 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %142 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %141, i32 0, i32 2
  %143 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %142, align 8
  %144 = icmp ne %struct.drm_framebuffer* %143, null
  br i1 %144, label %145, label %203

145:                                              ; preds = %140
  %146 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %147 = call i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %203, label %149

149:                                              ; preds = %145
  %150 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %7, align 8
  %151 = getelementptr inbounds %struct.ipu_plane_state, %struct.ipu_plane_state* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %527

155:                                              ; preds = %149
  %156 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %157 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ipu_idmac_get_current_buffer(i32 %158)
  store i32 %159, i32* %22, align 4
  %160 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %161 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %22, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %11, align 8
  %168 = call i32 @ipu_cpmem_set_buffer(i32 %162, i32 %166, i64 %167)
  %169 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %170 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %22, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i32 @ipu_idmac_select_buffer(i32 %171, i32 %175)
  %177 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %178 = call i64 @ipu_plane_separate_alpha(%struct.ipu_plane* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %202

180:                                              ; preds = %155
  %181 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %182 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ipu_idmac_get_current_buffer(i32 %183)
  store i32 %184, i32* %22, align 4
  %185 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %186 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %22, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %14, align 8
  %193 = call i32 @ipu_cpmem_set_buffer(i32 %187, i32 %191, i64 %192)
  %194 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %195 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %22, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i32 @ipu_idmac_select_buffer(i32 %196, i32 %200)
  br label %202

202:                                              ; preds = %180, %155
  br label %527

203:                                              ; preds = %145, %140
  %204 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %205 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %204, i32 0, i32 1
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ipu_drm_fourcc_to_colorspace(i32 %208)
  store i32 %209, i32* %15, align 4
  %210 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %211 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %227 [
    i32 129, label %213
    i32 128, label %220
  ]

213:                                              ; preds = %203
  %214 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %215 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @IPUV3_COLORSPACE_RGB, align 4
  %219 = call i32 @ipu_dp_setup_channel(i32 %216, i32 %217, i32 %218)
  br label %227

220:                                              ; preds = %203
  %221 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %222 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* @IPUV3_COLORSPACE_UNKNOWN, align 4
  %226 = call i32 @ipu_dp_setup_channel(i32 %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %203, %220, %213
  %228 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %229 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.drm_rect*, %struct.drm_rect** %10, align 8
  %232 = call i32 @drm_rect_width(%struct.drm_rect* %231)
  %233 = call i32 @ipu_dmfc_config_wait4eot(i32 %230, i32 %232)
  %234 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %235 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %234, i32 0, i32 1
  %236 = call i32 @drm_rect_width(%struct.drm_rect* %235)
  %237 = ashr i32 %236, 16
  store i32 %237, i32* %20, align 4
  %238 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %239 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %238, i32 0, i32 1
  %240 = call i32 @drm_rect_height(%struct.drm_rect* %239)
  %241 = ashr i32 %240, 16
  store i32 %241, i32* %21, align 4
  %242 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %243 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %242, i32 0, i32 1
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call %struct.drm_format_info* @drm_format_info(i32 %246)
  store %struct.drm_format_info* %247, %struct.drm_format_info** %17, align 8
  %248 = load i32, i32* %20, align 4
  %249 = load %struct.drm_format_info*, %struct.drm_format_info** %17, align 8
  %250 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %255 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ipu_calculate_bursts(i32 %248, i32 %253, i32 %258, i32* %18, i32* %19)
  %260 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %261 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ipu_cpmem_zero(i32 %262)
  %264 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %265 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %20, align 4
  %268 = load i32, i32* %21, align 4
  %269 = call i32 @ipu_cpmem_set_resolution(i32 %266, i32 %267, i32 %268)
  %270 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %271 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %274 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %273, i32 0, i32 1
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @ipu_cpmem_set_fmt(i32 %272, i32 %277)
  %279 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %280 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %18, align 4
  %283 = call i32 @ipu_cpmem_set_burstsize(i32 %281, i32 %282)
  %284 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %285 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @ipu_cpmem_set_high_priority(i32 %286)
  %288 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %289 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @ipu_idmac_enable_watermark(i32 %290, i32 1)
  %292 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %293 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ipu_idmac_set_double_buffer(i32 %294, i32 1)
  %296 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %297 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %300 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @ipu_cpmem_set_stride(i32 %298, i32 %303)
  %305 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %306 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %16, align 4
  %309 = call i32 @ipu_cpmem_set_axi_id(i32 %307, i32 %308)
  %310 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %311 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %310, i32 0, i32 1
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  switch i32 %314, label %490 [
    i32 135, label %315
    i32 132, label %315
    i32 134, label %315
    i32 131, label %315
    i32 133, label %315
    i32 130, label %315
    i32 140, label %378
    i32 139, label %378
    i32 138, label %412
    i32 143, label %412
    i32 137, label %412
    i32 142, label %412
    i32 136, label %412
    i32 141, label %412
  ]

315:                                              ; preds = %227, %227, %227, %227, %227, %227
  %316 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %317 = call i64 @drm_plane_state_to_ubo(%struct.drm_plane_state* %316)
  store i64 %317, i64* %12, align 8
  %318 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %319 = call i64 @drm_plane_state_to_vbo(%struct.drm_plane_state* %318)
  store i64 %319, i64* %13, align 8
  %320 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %321 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %320, i32 0, i32 1
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 132
  br i1 %325, label %340, label %326

326:                                              ; preds = %315
  %327 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %328 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %327, i32 0, i32 1
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 131
  br i1 %332, label %340, label %333

333:                                              ; preds = %326
  %334 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %335 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %334, i32 0, i32 1
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 130
  br i1 %339, label %340, label %344

340:                                              ; preds = %333, %326, %315
  %341 = load i64, i64* %12, align 8
  %342 = load i64, i64* %13, align 8
  %343 = call i32 @swap(i64 %341, i64 %342)
  br label %344

344:                                              ; preds = %340, %333
  %345 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %346 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %349 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 1
  %352 = load i32, i32* %351, align 4
  %353 = load i64, i64* %12, align 8
  %354 = load i64, i64* %13, align 8
  %355 = call i32 @ipu_cpmem_set_yuv_planar_full(i32 %347, i32 %352, i64 %353, i64 %354)
  %356 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %357 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = load i64, i64* %11, align 8
  %363 = load i64, i64* %12, align 8
  %364 = trunc i64 %363 to i32
  %365 = load i64, i64* %13, align 8
  %366 = trunc i64 %365 to i32
  %367 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %368 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = ashr i32 %370, 16
  %372 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %373 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = ashr i32 %375, 16
  %377 = call i32 (i32, i8*, i64, i32, i32, ...) @dev_dbg(i32 %361, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %362, i32 %364, i32 %366, i32 %371, i32 %376)
  br label %509

378:                                              ; preds = %227, %227
  %379 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %380 = call i64 @drm_plane_state_to_ubo(%struct.drm_plane_state* %379)
  store i64 %380, i64* %12, align 8
  %381 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %382 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %385 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = load i64, i64* %12, align 8
  %390 = load i64, i64* %12, align 8
  %391 = call i32 @ipu_cpmem_set_yuv_planar_full(i32 %383, i32 %388, i64 %389, i64 %390)
  %392 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %393 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_5__*, %struct.TYPE_5__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i64, i64* %11, align 8
  %399 = load i64, i64* %12, align 8
  %400 = trunc i64 %399 to i32
  %401 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %402 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = ashr i32 %404, 16
  %406 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %407 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = ashr i32 %409, 16
  %411 = call i32 (i32, i8*, i64, i32, i32, ...) @dev_dbg(i32 %397, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %398, i32 %400, i32 %405, i32 %410)
  br label %509

412:                                              ; preds = %227, %227, %227, %227, %227, %227
  %413 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %414 = call i64 @drm_plane_state_to_eba(%struct.drm_plane_state* %413, i32 1)
  store i64 %414, i64* %14, align 8
  store i32 0, i32* %19, align 4
  %415 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %416 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i64, i64* %11, align 8
  %422 = load i64, i64* %14, align 8
  %423 = trunc i64 %422 to i32
  %424 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %425 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = ashr i32 %427, 16
  %429 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %430 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = ashr i32 %432, 16
  %434 = call i32 (i32, i8*, i64, i32, i32, ...) @dev_dbg(i32 %420, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %421, i32 %423, i32 %428, i32 %433)
  %435 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %436 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = call i32 @ipu_cpmem_set_burstsize(i32 %437, i32 16)
  %439 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %440 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @ipu_cpmem_zero(i32 %441)
  %443 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %444 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %447 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %446, i32 0, i32 1
  %448 = call i32 @drm_rect_width(%struct.drm_rect* %447)
  %449 = ashr i32 %448, 16
  %450 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %451 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %450, i32 0, i32 1
  %452 = call i32 @drm_rect_height(%struct.drm_rect* %451)
  %453 = ashr i32 %452, 16
  %454 = call i32 @ipu_cpmem_set_resolution(i32 %445, i32 %449, i32 %453)
  %455 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %456 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @ipu_cpmem_set_format_passthrough(i32 %457, i32 8)
  %459 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %460 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @ipu_cpmem_set_high_priority(i32 %461)
  %463 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %464 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @ipu_idmac_set_double_buffer(i32 %465, i32 1)
  %467 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %468 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %471 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 1
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @ipu_cpmem_set_stride(i32 %469, i32 %474)
  %476 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %477 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @ipu_cpmem_set_burstsize(i32 %478, i32 16)
  %480 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %481 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = load i64, i64* %14, align 8
  %484 = call i32 @ipu_cpmem_set_buffer(i32 %482, i32 0, i64 %483)
  %485 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %486 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 8
  %488 = load i64, i64* %14, align 8
  %489 = call i32 @ipu_cpmem_set_buffer(i32 %487, i32 1, i64 %488)
  br label %509

490:                                              ; preds = %227
  %491 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %492 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = load i64, i64* %11, align 8
  %498 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %499 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = ashr i32 %501, 16
  %503 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %504 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = ashr i32 %506, 16
  %508 = call i32 (i32, i8*, i64, i32, i32, ...) @dev_dbg(i32 %496, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %497, i32 %502, i32 %507)
  br label %509

509:                                              ; preds = %490, %412, %378, %344
  %510 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %511 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = load i64, i64* %11, align 8
  %514 = call i32 @ipu_cpmem_set_buffer(i32 %512, i32 0, i64 %513)
  %515 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %516 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = load i64, i64* %11, align 8
  %519 = call i32 @ipu_cpmem_set_buffer(i32 %517, i32 1, i64 %518)
  %520 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %521 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* %19, align 4
  %524 = call i32 @ipu_idmac_lock_enable(i32 %522, i32 %523)
  %525 = load %struct.ipu_plane*, %struct.ipu_plane** %5, align 8
  %526 = call i32 @ipu_plane_enable(%struct.ipu_plane* %525)
  br label %527

527:                                              ; preds = %509, %202, %154
  ret void
}

declare dso_local %struct.ipu_plane* @to_ipu_plane(%struct.drm_plane*) #1

declare dso_local %struct.ipu_plane_state* @to_ipu_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @ipu_dp_set_window_pos(i32, i32, i32) #1

declare dso_local i32 @ipu_dp_set_global_alpha(i32, i32, i32, i32) #1

declare dso_local i64 @drm_plane_state_to_eba(%struct.drm_plane_state*, i32) #1

declare dso_local i32 @ipu_chan_assign_axi_id(i32) #1

declare dso_local i32 @ipu_prg_channel_configure(i32, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @drm_atomic_crtc_needs_modeset(%struct.drm_crtc_state*) #1

declare dso_local i32 @ipu_idmac_get_current_buffer(i32) #1

declare dso_local i32 @ipu_cpmem_set_buffer(i32, i32, i64) #1

declare dso_local i32 @ipu_idmac_select_buffer(i32, i32) #1

declare dso_local i64 @ipu_plane_separate_alpha(%struct.ipu_plane*) #1

declare dso_local i32 @ipu_drm_fourcc_to_colorspace(i32) #1

declare dso_local i32 @ipu_dp_setup_channel(i32, i32, i32) #1

declare dso_local i32 @ipu_dmfc_config_wait4eot(i32, i32) #1

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @ipu_calculate_bursts(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ipu_cpmem_zero(i32) #1

declare dso_local i32 @ipu_cpmem_set_resolution(i32, i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_fmt(i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_burstsize(i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_high_priority(i32) #1

declare dso_local i32 @ipu_idmac_enable_watermark(i32, i32) #1

declare dso_local i32 @ipu_idmac_set_double_buffer(i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_stride(i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_axi_id(i32, i32) #1

declare dso_local i64 @drm_plane_state_to_ubo(%struct.drm_plane_state*) #1

declare dso_local i64 @drm_plane_state_to_vbo(%struct.drm_plane_state*) #1

declare dso_local i32 @swap(i64, i64) #1

declare dso_local i32 @ipu_cpmem_set_yuv_planar_full(i32, i32, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @ipu_cpmem_set_format_passthrough(i32, i32) #1

declare dso_local i32 @ipu_idmac_lock_enable(i32, i32) #1

declare dso_local i32 @ipu_plane_enable(%struct.ipu_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
