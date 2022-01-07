; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dac.c_nv04_dac_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dac.c_nv04_dac_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.nvif_object = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvif_object }

@NV_CIO_CR_MODE_INDEX = common dso_local global i32 0, align 4
@NV_VIO_SR_CLOCK_INDEX = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_FORMAT = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_PRMDIO_READ_MODE_ADDRESS = common dso_local global i32 0, align 4
@NV_PRMDIO_PALETTE_DATA = common dso_local global i32 0, align 4
@NV_PRMDIO_PIXEL_MASK = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL_BPC_8BITS = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL_TERMINATION_75OHM = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL_PIXMIX_ON = common dso_local global i32 0, align 4
@NV_PRMDIO_WRITE_MODE_ADDRESS = common dso_local global i32 0, align 4
@MAX_SAMPLE_PAIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Load detected on head A\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @nv04_dac_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_dac_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nvif_object*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %24)
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.nvif_object* %28, %struct.nvif_object** %7, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %30 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %29)
  store %struct.nouveau_drm* %30, %struct.nouveau_drm** %8, align 8
  store i32 1, i32* %19, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = call i64 @nv_two_heads(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = call i32 @NVSetOwner(%struct.drm_device* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %40 = call i32 @NVReadVgaCrtc(%struct.drm_device* %38, i32 0, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, 128
  %45 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %41, i32 0, i32 %42, i32 %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %48 = call i32 @NVReadVgaSeq(%struct.drm_device* %46, i32 0, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %50 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, -33
  %53 = call i32 @NVWriteVgaSeq(%struct.drm_device* %49, i32 0, i32 %50, i32 %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %56 = call i32 @NVReadRAMDAC(%struct.drm_device* %54, i32 0, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %58 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @NVWriteRAMDAC(%struct.drm_device* %57, i32 0, i32 %58, i32 %62)
  %64 = call i32 @msleep(i32 10)
  %65 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %66 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %67 = call i32 @NVReadVgaCrtc(%struct.drm_device* %65, i32 0, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %69 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @NV_CIO_CRE_PIXEL_FORMAT, align 4
  %72 = call i32 @MASK(i32 %71)
  %73 = or i32 128, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %70, %74
  %76 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %68, i32 0, i32 %69, i32 %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %78 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %79 = call i32 @NVReadVgaCrtc(%struct.drm_device* %77, i32 0, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %81 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, -193
  %84 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %80, i32 0, i32 %81, i32 %83)
  %85 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %86 = load i32, i32* @NV_PRMDIO_READ_MODE_ADDRESS, align 4
  %87 = call i32 @nvif_wr08(%struct.nvif_object* %85, i32 %86, i32 0)
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %98, %37
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %93 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %94 = call i32 @nvif_rd08(%struct.nvif_object* %92, i32 %93)
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %96
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %88

101:                                              ; preds = %88
  %102 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %103 = load i32, i32* @NV_PRMDIO_PIXEL_MASK, align 4
  %104 = call i32 @nvif_rd08(%struct.nvif_object* %102, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %106 = load i32, i32* @NV_PRMDIO_PIXEL_MASK, align 4
  %107 = call i32 @nvif_wr08(%struct.nvif_object* %105, i32 %106, i32 0)
  %108 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %109 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %110 = call i32 @NVReadRAMDAC(%struct.drm_device* %108, i32 0, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %112 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_BPC_8BITS, align 4
  %115 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_TERMINATION_75OHM, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  %119 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_PIXMIX_ON, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @NVWriteRAMDAC(%struct.drm_device* %111, i32 0, i32 %112, i32 %120)
  store i32 8, i32* %18, align 4
  br label %122

122:                                              ; preds = %172, %101
  %123 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %124 = load i32, i32* @NV_PRMDIO_WRITE_MODE_ADDRESS, align 4
  %125 = call i32 @nvif_wr08(%struct.nvif_object* %123, i32 %124, i32 0)
  %126 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %127 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %128 = call i32 @nvif_wr08(%struct.nvif_object* %126, i32 %127, i32 0)
  %129 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %130 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %131 = call i32 @nvif_wr08(%struct.nvif_object* %129, i32 %130, i32 0)
  %132 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %133 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @nvif_wr08(%struct.nvif_object* %132, i32 %133, i32 %134)
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %154, %122
  %137 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %139 = call i64 @sample_load_twice(%struct.drm_device* %137, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %175

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* @MAX_SAMPLE_PAIRS, align 4
  %153 = icmp slt i32 %151, %152
  br label %154

154:                                              ; preds = %149, %143
  %155 = phi i1 [ false, %143 ], [ %153, %149 ]
  br i1 %155, label %136, label %156

156:                                              ; preds = %154
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @MAX_SAMPLE_PAIRS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 0, i32* %19, align 4
  br label %164

161:                                              ; preds = %156
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %19, align 4
  br label %164

164:                                              ; preds = %161, %160
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %18, align 4
  %168 = icmp slt i32 %167, 24
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %169, %165
  %173 = phi i1 [ false, %165 ], [ %171, %169 ]
  br i1 %173, label %122, label %174

174:                                              ; preds = %172
  br label %175

175:                                              ; preds = %174, %141
  %176 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %177 = load i32, i32* @NV_PRMDIO_PIXEL_MASK, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @nvif_wr08(%struct.nvif_object* %176, i32 %177, i32 %178)
  %180 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %181 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @NVWriteRAMDAC(%struct.drm_device* %180, i32 0, i32 %181, i32 %182)
  %184 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %185 = load i32, i32* @NV_PRMDIO_WRITE_MODE_ADDRESS, align 4
  %186 = call i32 @nvif_wr08(%struct.nvif_object* %184, i32 %185, i32 0)
  store i32 0, i32* %17, align 4
  br label %187

187:                                              ; preds = %198, %175
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %192 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @nvif_wr08(%struct.nvif_object* %191, i32 %192, i32 %196)
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %17, align 4
  br label %187

201:                                              ; preds = %187
  %202 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %203 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @NVWriteRAMDAC(%struct.drm_device* %202, i32 0, i32 %203, i32 %204)
  %206 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %207 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %206, i32 0, i32 %207, i32 %208)
  %210 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %211 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %210, i32 0, i32 %211, i32 %212)
  %214 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %215 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @NVWriteVgaSeq(%struct.drm_device* %214, i32 0, i32 %215, i32 %216)
  %218 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %219 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %218, i32 0, i32 %219, i32 %220)
  %222 = load i32, i32* %18, align 4
  %223 = icmp eq i32 %222, 24
  br i1 %223, label %224, label %228

224:                                              ; preds = %201
  %225 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %226 = call i32 @NV_DEBUG(%struct.nouveau_drm* %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %227 = load i32, i32* @connector_status_connected, align 4
  store i32 %227, i32* %3, align 4
  br label %230

228:                                              ; preds = %201
  %229 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %228, %224
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVReadVgaSeq(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaSeq(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @nvif_wr08(%struct.nvif_object*, i32, i32) #1

declare dso_local i32 @nvif_rd08(%struct.nvif_object*, i32) #1

declare dso_local i64 @sample_load_twice(%struct.drm_device*, i32*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
