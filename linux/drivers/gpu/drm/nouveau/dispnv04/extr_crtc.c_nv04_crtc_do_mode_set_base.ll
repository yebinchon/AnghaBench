; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_crtc_do_mode_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_crtc_do_mode_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_22__, %struct.TYPE_17__*, %struct.drm_device* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_17__ = type { %struct.drm_framebuffer* }
%struct.drm_device = type { i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.nouveau_crtc = type { i64, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.nv04_crtc_reg = type { i32*, i32, i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.nv04_crtc_reg* }

@.str = private unnamed_addr constant [10 x i8] c"index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@NV_CIO_CRE_PIXEL_INDEX = common dso_local global i64 0, align 8
@NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL = common dso_local global i32 0, align 4
@NV_CIO_CR_OFFSET_INDEX = common dso_local global i64 0, align 8
@NV_CIO_CRE_RPC0_OFFSET_10_8 = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC0_INDEX = common dso_local global i64 0, align 8
@NV_CIO_CRE_42_OFFSET_11 = common dso_local global i32 0, align 4
@NV_CIO_CRE_42 = common dso_local global i64 0, align 8
@NV_CIO_CRE_FF_INDEX = common dso_local global i64 0, align 8
@NV_CIO_CRE_FFLWM__INDEX = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_KELVIN = common dso_local global i64 0, align 8
@NV_CIO_CRE_47 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32)* @nv04_crtc_do_mode_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_crtc_do_mode_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_crtc*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.nouveau_drm*, align 8
  %15 = alloca %struct.nv04_crtc_reg*, align 8
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca %struct.nouveau_framebuffer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %21 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %20)
  store %struct.nouveau_crtc* %21, %struct.nouveau_crtc** %12, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 2
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %13, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %26 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %25)
  store %struct.nouveau_drm* %26, %struct.nouveau_drm** %14, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %28 = call %struct.TYPE_15__* @nv04_display(%struct.drm_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %30, align 8
  %32 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %33 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %31, i64 %34
  store %struct.nv04_crtc_reg* %35, %struct.nv04_crtc_reg** %15, align 8
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %37 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %38 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %5
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %47, align 8
  %49 = icmp ne %struct.drm_framebuffer* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %52 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_DEBUG(%struct.nouveau_drm* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %300

53:                                               ; preds = %43, %5
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %57, %struct.drm_framebuffer** %16, align 8
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %59 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %58)
  store %struct.nouveau_framebuffer* %59, %struct.nouveau_framebuffer** %17, align 8
  br label %72

60:                                               ; preds = %53
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %64, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %16, align 8
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %67 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %69, align 8
  %71 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %70)
  store %struct.nouveau_framebuffer* %71, %struct.nouveau_framebuffer** %17, align 8
  br label %72

72:                                               ; preds = %60, %56
  %73 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %17, align 8
  %74 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %80 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %83 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %87 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %86, i32 0, i32 1
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %72
  %93 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %94 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %93, i32 0, i32 1
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %99 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %102 = call i32 @nv_crtc_gamma_load(%struct.drm_crtc* %101)
  br label %103

103:                                              ; preds = %92, %72
  %104 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %105 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @NV_CIO_CRE_PIXEL_INDEX, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -4
  store i32 %110, i32* %108, align 4
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %112 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %111, i32 0, i32 1
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  %117 = sdiv i32 %116, 8
  %118 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %119 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @NV_CIO_CRE_PIXEL_INDEX, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %117
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %128 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %132 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %131, i32 0, i32 1
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 16
  br i1 %136, label %137, label %143

137:                                              ; preds = %103
  %138 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_ALT_MODE_SEL, align 4
  %139 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %140 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %103
  %144 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %145 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %146 = load i64, i64* @NV_CIO_CRE_PIXEL_INDEX, align 8
  %147 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %144, %struct.nv04_crtc_reg* %145, i64 %146)
  %148 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %149 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %150 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %153 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %154 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @NVWriteRAMDAC(%struct.drm_device* %148, i64 %151, i32 %152, i32 %155)
  %157 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %158 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 3
  %163 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %164 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @NV_CIO_CR_OFFSET_INDEX, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %162, i32* %167, align 4
  %168 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %169 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 3
  %174 = load i32, i32* @NV_CIO_CRE_RPC0_OFFSET_10_8, align 4
  %175 = call i8* @XLATE(i32 %173, i32 8, i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %178 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @NV_CIO_CRE_RPC0_INDEX, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 %176, i32* %181, align 4
  %182 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %183 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 8
  %188 = load i32, i32* @NV_CIO_CRE_42_OFFSET_11, align 4
  %189 = call i8* @XLATE(i32 %187, i32 11, i32 %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %192 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @NV_CIO_CRE_42, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %190, i32* %195, align 4
  %196 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %197 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %198 = load i64, i64* @NV_CIO_CRE_RPC0_INDEX, align 8
  %199 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %196, %struct.nv04_crtc_reg* %197, i64 %198)
  %200 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %201 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %202 = load i64, i64* @NV_CIO_CR_OFFSET_INDEX, align 8
  %203 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %200, %struct.nv04_crtc_reg* %201, i64 %202)
  %204 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %205 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %206 = load i64, i64* @NV_CIO_CRE_42, align 8
  %207 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %204, %struct.nv04_crtc_reg* %205, i64 %206)
  %208 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %209 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, -4
  %213 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %214 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %217 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %215, %220
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %224 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %223, i32 0, i32 1
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %222, %229
  %231 = add nsw i32 %221, %230
  %232 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %233 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %237 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %12, align 8
  %238 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %241 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @nv_set_crtc_base(%struct.drm_device* %236, i64 %239, i32 %242)
  %244 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %245 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %246 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %250 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %249, i32 0, i32 1
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %255, 8
  %257 = call i32 @nouveau_calc_arb(%struct.drm_device* %244, i32 %248, i32 %256, i32* %18, i32* %19)
  %258 = load i32, i32* %18, align 4
  %259 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %260 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* @NV_CIO_CRE_FF_INDEX, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32 %258, i32* %263, align 4
  %264 = load i32, i32* %19, align 4
  %265 = and i32 %264, 255
  %266 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %267 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @NV_CIO_CRE_FFLWM__INDEX, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32 %265, i32* %270, align 4
  %271 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %272 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %273 = load i64, i64* @NV_CIO_CRE_FF_INDEX, align 8
  %274 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %271, %struct.nv04_crtc_reg* %272, i64 %273)
  %275 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %276 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %277 = load i64, i64* @NV_CIO_CRE_FFLWM__INDEX, align 8
  %278 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %275, %struct.nv04_crtc_reg* %276, i64 %277)
  %279 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %280 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @NV_DEVICE_INFO_V0_KELVIN, align 8
  %286 = icmp sge i64 %284, %285
  br i1 %286, label %287, label %299

287:                                              ; preds = %143
  %288 = load i32, i32* %19, align 4
  %289 = ashr i32 %288, 8
  %290 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %291 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* @NV_CIO_CRE_47, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32 %289, i32* %294, align 4
  %295 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %296 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %15, align 8
  %297 = load i64, i64* @NV_CIO_CRE_47, align 8
  %298 = call i32 @crtc_wr_cio_state(%struct.drm_crtc* %295, %struct.nv04_crtc_reg* %296, i64 %297)
  br label %299

299:                                              ; preds = %287, %143
  store i32 0, i32* %6, align 4
  br label %300

300:                                              ; preds = %299, %50
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.TYPE_15__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @nv_crtc_gamma_load(%struct.drm_crtc*) #1

declare dso_local i32 @crtc_wr_cio_state(%struct.drm_crtc*, %struct.nv04_crtc_reg*, i64) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i64, i32, i32) #1

declare dso_local i8* @XLATE(i32, i32, i32) #1

declare dso_local i32 @nv_set_crtc_base(%struct.drm_device*, i64, i32) #1

declare dso_local i32 @nouveau_calc_arb(%struct.drm_device*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
