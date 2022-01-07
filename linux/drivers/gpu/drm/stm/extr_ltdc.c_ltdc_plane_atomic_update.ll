; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, i64, %struct.TYPE_6__, %struct.drm_plane_state* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ltdc_device = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32, i64 }

@LAY_OFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fb or crtc NULL\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"plane:%d fb:%d (%dx%d)@(%d,%d) -> (%dx%d)@(%d,%d)\0A\00", align 1
@LTDC_BPCR = common dso_local global i32 0, align 4
@BPCR_AHBP = common dso_local global i32 0, align 4
@BPCR_AVBP = common dso_local global i32 0, align 4
@LTDC_L1WHPCR = common dso_local global i32 0, align 4
@LXWHPCR_WHSTPOS = common dso_local global i32 0, align 4
@LXWHPCR_WHSPPOS = common dso_local global i32 0, align 4
@LTDC_L1WVPCR = common dso_local global i32 0, align 4
@LXWVPCR_WVSTPOS = common dso_local global i32 0, align 4
@LXWVPCR_WVSPPOS = common dso_local global i32 0, align 4
@NB_PF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Pixel format %.4s not supported\0A\00", align 1
@LTDC_L1PFCR = common dso_local global i32 0, align 4
@LXPFCR_PF = common dso_local global i32 0, align 4
@LTDC_L1CFBLR = common dso_local global i32 0, align 4
@LXCFBLR_CFBLL = common dso_local global i32 0, align 4
@LXCFBLR_CFBP = common dso_local global i32 0, align 4
@CONSTA_MAX = common dso_local global i32 0, align 4
@LTDC_L1CACR = common dso_local global i32 0, align 4
@LXCACR_CONSTA = common dso_local global i32 0, align 4
@BF1_PAXCA = common dso_local global i32 0, align 4
@BF2_1PAXCA = common dso_local global i32 0, align 4
@BF1_CA = common dso_local global i32 0, align 4
@BF2_1CA = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i64 0, align 8
@LTDC_L1BFCR = common dso_local global i32 0, align 4
@LXBFCR_BF2 = common dso_local global i32 0, align 4
@LXBFCR_BF1 = common dso_local global i32 0, align 4
@LTDC_L1CFBLNR = common dso_local global i32 0, align 4
@LXCFBLNR_CFBLN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"fb: phys 0x%08x\00", align 1
@LTDC_L1CFBAR = common dso_local global i32 0, align 4
@DRM_FORMAT_C8 = common dso_local global i64 0, align 8
@LXCR_CLUTEN = common dso_local global i32 0, align 4
@LXCR_LEN = common dso_local global i32 0, align 4
@LTDC_L1CR = common dso_local global i32 0, align 4
@ISR_FUIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"ltdc fifo underrun: please verify display mode\0A\00", align 1
@ISR_TERRIF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"ltdc transfer error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @ltdc_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltdc_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.ltdc_device*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %25 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %26 = call %struct.ltdc_device* @plane_to_ltdc(%struct.drm_plane* %25)
  store %struct.ltdc_device* %26, %struct.ltdc_device** %5, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 3
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %28, align 8
  store %struct.drm_plane_state* %29, %struct.drm_plane_state** %6, align 8
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 9
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %31, align 8
  store %struct.drm_framebuffer* %32, %struct.drm_framebuffer** %7, align 8
  %33 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LAY_OFS, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %53 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %2
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %66 = icmp ne %struct.drm_framebuffer* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %2
  %68 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %402

69:                                               ; preds = %64
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 16
  store i32 %73, i32* %13, align 4
  %74 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %75 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 16
  store i32 %77, i32* %14, align 4
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 16
  store i32 %81, i32* %15, align 4
  %82 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %83 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 16
  store i32 %85, i32* %16, align 4
  %86 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %87 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %91 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %99 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %102 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %105 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %108 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %100, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %112 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @LTDC_BPCR, align 4
  %115 = call i32 @reg_read(i32 %113, i32 %114)
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* @BPCR_AHBP, align 4
  %118 = and i32 %116, %117
  %119 = ashr i32 %118, 16
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* @BPCR_AVBP, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %124, %125
  %127 = shl i32 %126, 16
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %129, %130
  %132 = add nsw i32 %127, %131
  store i32 %132, i32* %17, align 4
  %133 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %134 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @LTDC_L1WHPCR, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* @LXWHPCR_WHSTPOS, align 4
  %140 = load i32, i32* @LXWHPCR_WHSPPOS, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @reg_update_bits(i32 %135, i32 %138, i32 %141, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %145, %146
  %148 = shl i32 %147, 16
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* %22, align 4
  %152 = add nsw i32 %150, %151
  %153 = add nsw i32 %148, %152
  store i32 %153, i32* %17, align 4
  %154 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %155 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @LTDC_L1WVPCR, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* @LXWVPCR_WVSTPOS, align 4
  %161 = load i32, i32* @LXWVPCR_WVSPPOS, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @reg_update_bits(i32 %156, i32 %159, i32 %162, i32 %163)
  %165 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %166 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %165, i32 0, i32 1
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @to_ltdc_pixelformat(i64 %169)
  store i32 %170, i32* %24, align 4
  store i32 0, i32* %17, align 4
  br label %171

171:                                              ; preds = %188, %69
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @NB_PF, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %171
  %176 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %177 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %24, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %191

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %171

191:                                              ; preds = %186, %171
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* @NB_PF, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %197 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %196, i32 0, i32 1
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = bitcast i64* %199 to i8*
  %201 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %200)
  store i32 0, i32* %17, align 4
  br label %202

202:                                              ; preds = %195, %191
  %203 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %204 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @LTDC_L1PFCR, align 4
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @LXPFCR_PF, align 4
  %210 = load i32, i32* %17, align 4
  %211 = call i32 @reg_update_bits(i32 %205, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %213 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %18, align 4
  %217 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %218 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %217, i32 0, i32 1
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %9, align 4
  %226 = sub nsw i32 %224, %225
  %227 = add nsw i32 %226, 1
  %228 = mul nsw i32 %223, %227
  %229 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %230 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = ashr i32 %232, 3
  %234 = add nsw i32 %228, %233
  %235 = sub nsw i32 %234, 1
  store i32 %235, i32* %19, align 4
  %236 = load i32, i32* %18, align 4
  %237 = shl i32 %236, 16
  %238 = load i32, i32* %19, align 4
  %239 = or i32 %237, %238
  store i32 %239, i32* %17, align 4
  %240 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %241 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @LTDC_L1CFBLR, align 4
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %243, %244
  %246 = load i32, i32* @LXCFBLR_CFBLL, align 4
  %247 = load i32, i32* @LXCFBLR_CFBP, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @reg_update_bits(i32 %242, i32 %245, i32 %248, i32 %249)
  %251 = load i32, i32* @CONSTA_MAX, align 4
  store i32 %251, i32* %17, align 4
  %252 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %253 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @LTDC_L1CACR, align 4
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* @LXCACR_CONSTA, align 4
  %259 = load i32, i32* %17, align 4
  %260 = call i32 @reg_update_bits(i32 %254, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* @BF1_PAXCA, align 4
  %262 = load i32, i32* @BF2_1PAXCA, align 4
  %263 = or i32 %261, %262
  store i32 %263, i32* %17, align 4
  %264 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %265 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %264, i32 0, i32 1
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %202
  %271 = load i32, i32* @BF1_CA, align 4
  %272 = load i32, i32* @BF2_1CA, align 4
  %273 = or i32 %271, %272
  store i32 %273, i32* %17, align 4
  br label %274

274:                                              ; preds = %270, %202
  %275 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %276 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %282 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @DRM_PLANE_TYPE_PRIMARY, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* @BF1_PAXCA, align 4
  %288 = load i32, i32* @BF2_1PAXCA, align 4
  %289 = or i32 %287, %288
  store i32 %289, i32* %17, align 4
  br label %290

290:                                              ; preds = %286, %280, %274
  %291 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %292 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @LTDC_L1BFCR, align 4
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32, i32* @LXBFCR_BF2, align 4
  %298 = load i32, i32* @LXBFCR_BF1, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* %17, align 4
  %301 = call i32 @reg_update_bits(i32 %293, i32 %296, i32 %299, i32 %300)
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %11, align 4
  %304 = sub nsw i32 %302, %303
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %17, align 4
  %306 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %307 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @LTDC_L1CFBLNR, align 4
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* @LXCFBLNR_CFBLN, align 4
  %313 = load i32, i32* %17, align 4
  %314 = call i32 @reg_update_bits(i32 %308, i32 %311, i32 %312, i32 %313)
  %315 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %316 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %317 = call i64 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %315, %struct.drm_plane_state* %316, i32 0)
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %20, align 4
  %319 = load i32, i32* %20, align 4
  %320 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %319)
  %321 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %322 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @LTDC_L1CFBAR, align 4
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %20, align 4
  %328 = call i32 @reg_write(i32 %323, i32 %326, i32 %327)
  %329 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %330 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %329, i32 0, i32 1
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @DRM_FORMAT_C8, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %290
  %337 = load i32, i32* @LXCR_CLUTEN, align 4
  br label %339

338:                                              ; preds = %290
  br label %339

339:                                              ; preds = %338, %336
  %340 = phi i32 [ %337, %336 ], [ 0, %338 ]
  store i32 %340, i32* %17, align 4
  %341 = load i32, i32* @LXCR_LEN, align 4
  %342 = load i32, i32* %17, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %17, align 4
  %344 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %345 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @LTDC_L1CR, align 4
  %348 = load i32, i32* %8, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* @LXCR_LEN, align 4
  %351 = load i32, i32* @LXCR_CLUTEN, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* %17, align 4
  %354 = call i32 @reg_update_bits(i32 %346, i32 %349, i32 %352, i32 %353)
  %355 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %356 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %355, i32 0, i32 2
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %356, align 8
  %358 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %359 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %363, align 4
  %366 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %367 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %366, i32 0, i32 1
  %368 = call i32 @mutex_lock(i32* %367)
  %369 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %370 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @ISR_FUIF, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %383

375:                                              ; preds = %339
  %376 = call i32 @DRM_WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %377 = load i32, i32* @ISR_FUIF, align 4
  %378 = xor i32 %377, -1
  %379 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %380 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = and i32 %381, %378
  store i32 %382, i32* %380, align 8
  br label %383

383:                                              ; preds = %375, %339
  %384 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %385 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @ISR_TERRIF, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %383
  %391 = call i32 @DRM_WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %392 = load i32, i32* @ISR_TERRIF, align 4
  %393 = xor i32 %392, -1
  %394 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %395 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = and i32 %396, %393
  store i32 %397, i32* %395, align 8
  br label %398

398:                                              ; preds = %390, %383
  %399 = load %struct.ltdc_device*, %struct.ltdc_device** %5, align 8
  %400 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %399, i32 0, i32 1
  %401 = call i32 @mutex_unlock(i32* %400)
  br label %402

402:                                              ; preds = %398, %67
  ret void
}

declare dso_local %struct.ltdc_device* @plane_to_ltdc(%struct.drm_plane*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @reg_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @to_ltdc_pixelformat(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i64 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, %struct.drm_plane_state*, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
