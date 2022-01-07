; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_save_state_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_save_state_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NV_CIO_CRE_LCD__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC0_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_LSR_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_HEB__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_ENH_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_FF_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_FFLWM__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_21 = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_KELVIN = common dso_local global i64 0, align 8
@NV_CIO_CRE_47 = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_RANKINE = common dso_local global i64 0, align 8
@NV_CIO_CRE_49 = common dso_local global i32 0, align 4
@NV_CIO_CRE_HCUR_ADDR0_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_HCUR_ADDR1_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_HCUR_ADDR2_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_ILACE__INDEX = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NV_PCRTC_830 = common dso_local global i32 0, align 4
@NV_PCRTC_834 = common dso_local global i32 0, align 4
@NV_PCRTC_GPIO_EXT = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PCRTC_850 = common dso_local global i32 0, align 4
@NV_PCRTC_ENGINE_CTRL = common dso_local global i32 0, align 4
@NV_PCRTC_CURSOR_CONFIG = common dso_local global i32 0, align 4
@NV_PCRTC_CONFIG = common dso_local global i32 0, align 4
@NV_CIO_CRE_SCRATCH3__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_SCRATCH4__INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_EBR_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_CSB = common dso_local global i32 0, align 4
@NV_CIO_CRE_4B = common dso_local global i32 0, align 4
@NV_CIO_CRE_TVOUT_LATENCY = common dso_local global i32 0, align 4
@NV_CIO_CRE_42 = common dso_local global i32 0, align 4
@NV_CIO_CRE_53 = common dso_local global i32 0, align 4
@NV_CIO_CRE_54 = common dso_local global i32 0, align 4
@NV_CIO_CRE_59 = common dso_local global i32 0, align 4
@NV_CIO_CRE_5B = common dso_local global i32 0, align 4
@NV_CIO_CRE_85 = common dso_local global i32 0, align 4
@NV_CIO_CRE_86 = common dso_local global i32 0, align 4
@NV_PCRTC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nv04_mode_state*)* @nv_save_state_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_save_state_ext(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nv04_crtc_reg*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %7, align 8
  %12 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %13 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %12, i32 0, i32 0
  %14 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %14, i64 %16
  store %struct.nv04_crtc_reg* %17, %struct.nv04_crtc_reg** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %21 = load i32, i32* @NV_CIO_CRE_LCD__INDEX, align 4
  %22 = call i32 @rd_cio_state(%struct.drm_device* %18, i32 %19, %struct.nv04_crtc_reg* %20, i32 %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %26 = load i32, i32* @NV_CIO_CRE_RPC0_INDEX, align 4
  %27 = call i32 @rd_cio_state(%struct.drm_device* %23, i32 %24, %struct.nv04_crtc_reg* %25, i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %31 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %32 = call i32 @rd_cio_state(%struct.drm_device* %28, i32 %29, %struct.nv04_crtc_reg* %30, i32 %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %36 = load i32, i32* @NV_CIO_CRE_LSR_INDEX, align 4
  %37 = call i32 @rd_cio_state(%struct.drm_device* %33, i32 %34, %struct.nv04_crtc_reg* %35, i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %41 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %42 = call i32 @rd_cio_state(%struct.drm_device* %38, i32 %39, %struct.nv04_crtc_reg* %40, i32 %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %46 = load i32, i32* @NV_CIO_CRE_HEB__INDEX, align 4
  %47 = call i32 @rd_cio_state(%struct.drm_device* %43, i32 %44, %struct.nv04_crtc_reg* %45, i32 %46)
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %51 = load i32, i32* @NV_CIO_CRE_ENH_INDEX, align 4
  %52 = call i32 @rd_cio_state(%struct.drm_device* %48, i32 %49, %struct.nv04_crtc_reg* %50, i32 %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %56 = load i32, i32* @NV_CIO_CRE_FF_INDEX, align 4
  %57 = call i32 @rd_cio_state(%struct.drm_device* %53, i32 %54, %struct.nv04_crtc_reg* %55, i32 %56)
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %61 = load i32, i32* @NV_CIO_CRE_FFLWM__INDEX, align 4
  %62 = call i32 @rd_cio_state(%struct.drm_device* %58, i32 %59, %struct.nv04_crtc_reg* %60, i32 %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %66 = load i32, i32* @NV_CIO_CRE_21, align 4
  %67 = call i32 @rd_cio_state(%struct.drm_device* %63, i32 %64, %struct.nv04_crtc_reg* %65, i32 %66)
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %69 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NV_DEVICE_INFO_V0_KELVIN, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %3
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %80 = load i32, i32* @NV_CIO_CRE_47, align 4
  %81 = call i32 @rd_cio_state(%struct.drm_device* %77, i32 %78, %struct.nv04_crtc_reg* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %3
  %83 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %84 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NV_DEVICE_INFO_V0_RANKINE, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %95 = call i32 @rd_cio_state(%struct.drm_device* %92, i32 %93, %struct.nv04_crtc_reg* %94, i32 159)
  br label %96

96:                                               ; preds = %91, %82
  %97 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %100 = load i32, i32* @NV_CIO_CRE_49, align 4
  %101 = call i32 @rd_cio_state(%struct.drm_device* %97, i32 %98, %struct.nv04_crtc_reg* %99, i32 %100)
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %105 = load i32, i32* @NV_CIO_CRE_HCUR_ADDR0_INDEX, align 4
  %106 = call i32 @rd_cio_state(%struct.drm_device* %102, i32 %103, %struct.nv04_crtc_reg* %104, i32 %105)
  %107 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %110 = load i32, i32* @NV_CIO_CRE_HCUR_ADDR1_INDEX, align 4
  %111 = call i32 @rd_cio_state(%struct.drm_device* %107, i32 %108, %struct.nv04_crtc_reg* %109, i32 %110)
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %115 = load i32, i32* @NV_CIO_CRE_HCUR_ADDR2_INDEX, align 4
  %116 = call i32 @rd_cio_state(%struct.drm_device* %112, i32 %113, %struct.nv04_crtc_reg* %114, i32 %115)
  %117 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %120 = load i32, i32* @NV_CIO_CRE_ILACE__INDEX, align 4
  %121 = call i32 @rd_cio_state(%struct.drm_device* %117, i32 %118, %struct.nv04_crtc_reg* %119, i32 %120)
  %122 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %123 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %192

130:                                              ; preds = %96
  %131 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @NV_PCRTC_830, align 4
  %134 = call i8* @NVReadCRTC(%struct.drm_device* %131, i32 %132, i32 %133)
  %135 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %136 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  %137 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @NV_PCRTC_834, align 4
  %140 = call i8* @NVReadCRTC(%struct.drm_device* %137, i32 %138, i32 %139)
  %141 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %142 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %144 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @NV_DEVICE_INFO_V0_RANKINE, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %130
  %152 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @NV_PCRTC_GPIO_EXT, align 4
  %155 = call i8* @NVReadCRTC(%struct.drm_device* %152, i32 %153, i32 %154)
  %156 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %157 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %156, i32 0, i32 6
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %151, %130
  %159 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %160 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @NV_PCRTC_850, align 4
  %171 = call i8* @NVReadCRTC(%struct.drm_device* %168, i32 %169, i32 %170)
  %172 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %173 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %167, %158
  %175 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %176 = call i64 @nv_two_heads(%struct.drm_device* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @NV_PCRTC_ENGINE_CTRL, align 4
  %182 = call i8* @NVReadCRTC(%struct.drm_device* %179, i32 %180, i32 %181)
  %183 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %184 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %174
  %186 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @NV_PCRTC_CURSOR_CONFIG, align 4
  %189 = call i8* @NVReadCRTC(%struct.drm_device* %186, i32 %187, i32 %188)
  %190 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %191 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %185, %96
  %193 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @NV_PCRTC_CONFIG, align 4
  %196 = call i8* @NVReadCRTC(%struct.drm_device* %193, i32 %194, i32 %195)
  %197 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %198 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %202 = load i32, i32* @NV_CIO_CRE_SCRATCH3__INDEX, align 4
  %203 = call i32 @rd_cio_state(%struct.drm_device* %199, i32 %200, %struct.nv04_crtc_reg* %201, i32 %202)
  %204 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %207 = load i32, i32* @NV_CIO_CRE_SCRATCH4__INDEX, align 4
  %208 = call i32 @rd_cio_state(%struct.drm_device* %204, i32 %205, %struct.nv04_crtc_reg* %206, i32 %207)
  %209 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %210 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %216 = icmp sge i64 %214, %215
  br i1 %216, label %217, label %238

217:                                              ; preds = %192
  %218 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %219 = load i32, i32* %5, align 4
  %220 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %221 = load i32, i32* @NV_CIO_CRE_EBR_INDEX, align 4
  %222 = call i32 @rd_cio_state(%struct.drm_device* %218, i32 %219, %struct.nv04_crtc_reg* %220, i32 %221)
  %223 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %226 = load i32, i32* @NV_CIO_CRE_CSB, align 4
  %227 = call i32 @rd_cio_state(%struct.drm_device* %223, i32 %224, %struct.nv04_crtc_reg* %225, i32 %226)
  %228 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %231 = load i32, i32* @NV_CIO_CRE_4B, align 4
  %232 = call i32 @rd_cio_state(%struct.drm_device* %228, i32 %229, %struct.nv04_crtc_reg* %230, i32 %231)
  %233 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %234 = load i32, i32* %5, align 4
  %235 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %236 = load i32, i32* @NV_CIO_CRE_TVOUT_LATENCY, align 4
  %237 = call i32 @rd_cio_state(%struct.drm_device* %233, i32 %234, %struct.nv04_crtc_reg* %235, i32 %236)
  br label %238

238:                                              ; preds = %217, %192
  %239 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %240 = call i64 @nv_gf4_disp_arch(%struct.drm_device* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %296

242:                                              ; preds = %238
  %243 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %246 = load i32, i32* @NV_CIO_CRE_42, align 4
  %247 = call i32 @rd_cio_state(%struct.drm_device* %243, i32 %244, %struct.nv04_crtc_reg* %245, i32 %246)
  %248 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %251 = load i32, i32* @NV_CIO_CRE_53, align 4
  %252 = call i32 @rd_cio_state(%struct.drm_device* %248, i32 %249, %struct.nv04_crtc_reg* %250, i32 %251)
  %253 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %254 = load i32, i32* %5, align 4
  %255 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %256 = load i32, i32* @NV_CIO_CRE_54, align 4
  %257 = call i32 @rd_cio_state(%struct.drm_device* %253, i32 %254, %struct.nv04_crtc_reg* %255, i32 %256)
  store i32 0, i32* %9, align 4
  br label %258

258:                                              ; preds = %272, %242
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %259, 16
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @NVReadVgaCrtc5758(%struct.drm_device* %262, i32 %263, i32 %264)
  %266 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %267 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %265, i32* %271, align 4
  br label %272

272:                                              ; preds = %261
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %9, align 4
  br label %258

275:                                              ; preds = %258
  %276 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %279 = load i32, i32* @NV_CIO_CRE_59, align 4
  %280 = call i32 @rd_cio_state(%struct.drm_device* %276, i32 %277, %struct.nv04_crtc_reg* %278, i32 %279)
  %281 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %284 = load i32, i32* @NV_CIO_CRE_5B, align 4
  %285 = call i32 @rd_cio_state(%struct.drm_device* %281, i32 %282, %struct.nv04_crtc_reg* %283, i32 %284)
  %286 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %287 = load i32, i32* %5, align 4
  %288 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %289 = load i32, i32* @NV_CIO_CRE_85, align 4
  %290 = call i32 @rd_cio_state(%struct.drm_device* %286, i32 %287, %struct.nv04_crtc_reg* %288, i32 %289)
  %291 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %292 = load i32, i32* %5, align 4
  %293 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %294 = load i32, i32* @NV_CIO_CRE_86, align 4
  %295 = call i32 @rd_cio_state(%struct.drm_device* %291, i32 %292, %struct.nv04_crtc_reg* %293, i32 %294)
  br label %296

296:                                              ; preds = %275, %238
  %297 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* @NV_PCRTC_START, align 4
  %300 = call i8* @NVReadCRTC(%struct.drm_device* %297, i32 %298, i32 %299)
  %301 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %8, align 8
  %302 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @rd_cio_state(%struct.drm_device*, i32, %struct.nv04_crtc_reg*, i32) #1

declare dso_local i8* @NVReadCRTC(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i64 @nv_gf4_disp_arch(%struct.drm_device*) #1

declare dso_local i32 @NVReadVgaCrtc5758(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
