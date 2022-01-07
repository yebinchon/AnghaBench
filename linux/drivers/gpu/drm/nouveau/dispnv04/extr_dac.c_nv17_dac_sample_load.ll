; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dac.c_nv17_dac_sample_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dac.c_nv17_dac_sample_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.nvif_object }
%struct.TYPE_7__ = type { i64 }
%struct.nvif_object = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_output = type { i64 }
%struct.TYPE_10__ = type { %struct.dcb_output* }

@DCB_OUTPUT_TV = common dso_local global i64 0, align 8
@NV_PRAMDAC_TEST_CONTROL = common dso_local global i64 0, align 8
@NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF = common dso_local global i32 0, align 4
@NV_PBUS_POWERCTRL_2 = common dso_local global i32 0, align 4
@NV_PBUS_POWERCTRL_4 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC1 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC0 = common dso_local global i32 0, align 4
@NV_PRAMDAC_DACCLK = common dso_local global i64 0, align 8
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PRAMDAC_TESTPOINT_DATA = common dso_local global i64 0, align 8
@NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv17_dac_sample_load(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvif_object*, align 8
  %6 = alloca %struct.nvkm_gpio*, align 8
  %7 = alloca %struct.dcb_output*, align 8
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
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %3, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %23)
  store %struct.nouveau_drm* %24, %struct.nouveau_drm** %4, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %25)
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store %struct.nvif_object* %29, %struct.nvif_object** %5, align 8
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call %struct.nvkm_gpio* @nvxx_gpio(%struct.TYPE_9__* %32)
  store %struct.nvkm_gpio* %33, %struct.nvkm_gpio** %6, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %35 = call %struct.TYPE_10__* @nouveau_encoder(%struct.drm_encoder* %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.dcb_output*, %struct.dcb_output** %36, align 8
  store %struct.dcb_output* %37, %struct.dcb_output** %7, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %39 = call i32 @nv04_dac_output_offset(%struct.drm_encoder* %38)
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %40 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %41 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %1
  store i32 167936160, i32* %9, align 4
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %47 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %45
  br label %69

57:                                               ; preds = %1
  store i32 335872320, i32* %9, align 4
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %59 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %65 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %71 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @NVReadRAMDAC(%struct.drm_device* %70, i32 0, i64 %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %77 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @NVWriteRAMDAC(%struct.drm_device* %76, i32 0, i64 %80, i32 %84)
  %86 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %87 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %88 = call i32 @nvif_rd32(%struct.nvif_object* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %90 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, -671088641
  %93 = call i32 @nvif_wr32(%struct.nvif_object* %89, i32 %90, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 104
  br i1 %95, label %96, label %105

96:                                               ; preds = %69
  %97 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %98 = load i32, i32* @NV_PBUS_POWERCTRL_4, align 4
  %99 = call i32 @nvif_rd32(%struct.nvif_object* %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %101 = load i32, i32* @NV_PBUS_POWERCTRL_4, align 4
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, -49
  %104 = call i32 @nvif_wr32(%struct.nvif_object* %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %96, %69
  %106 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %107 = icmp ne %struct.nvkm_gpio* %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %110 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %111 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %109, i32 0, i32 %110, i32 255)
  store i32 %111, i32* %16, align 4
  %112 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %113 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %114 = call i32 @nvkm_gpio_get(%struct.nvkm_gpio* %112, i32 0, i32 %113, i32 255)
  store i32 %114, i32* %15, align 4
  %115 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %116 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %117 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %118 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %115, i32 0, i32 %116, i32 255, i32 %122)
  %124 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %125 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %126 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %127 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %124, i32 0, i32 %125, i32 255, i32 %131)
  br label %133

133:                                              ; preds = %108, %105
  %134 = call i32 @msleep(i32 4)
  %135 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %136 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = call i32 @NVReadRAMDAC(%struct.drm_device* %135, i32 0, i64 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = and i32 %141, 256
  %143 = ashr i32 %142, 8
  store i32 %143, i32* %19, align 4
  %144 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %147 = call i32 @NVReadVgaCrtc(%struct.drm_device* %144, i32 %145, i32 %146)
  %148 = and i32 %147, 192
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %133
  %151 = load i32, i32* %19, align 4
  %152 = xor i32 %151, 1
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %150, %133
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %154, -306
  %156 = load i32, i32* %19, align 4
  %157 = shl i32 %156, 8
  %158 = or i32 %155, %157
  store i32 %158, i32* %18, align 4
  %159 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %160 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %153
  %168 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %169 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* %18, align 4
  %175 = or i32 %174, 1703936
  store i32 %175, i32* %18, align 4
  br label %179

176:                                              ; preds = %167
  %177 = load i32, i32* %18, align 4
  %178 = and i32 %177, -1703937
  store i32 %178, i32* %18, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %153
  %181 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %182 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %182, %184
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @NVWriteRAMDAC(%struct.drm_device* %181, i32 0, i64 %185, i32 %186)
  %188 = call i32 @msleep(i32 1)
  %189 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %190 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  %194 = call i32 @NVReadRAMDAC(%struct.drm_device* %189, i32 0, i64 %193)
  store i32 %194, i32* %17, align 4
  %195 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %196 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = load i32, i32* %17, align 4
  %201 = or i32 %200, 1
  %202 = call i32 @NVWriteRAMDAC(%struct.drm_device* %195, i32 0, i64 %199, i32 %201)
  %203 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %204 = load i32, i32* %19, align 4
  %205 = load i64, i64* @NV_PRAMDAC_TESTPOINT_DATA, align 8
  %206 = load i32, i32* @NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK, align 4
  %207 = load i32, i32* %9, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @NVWriteRAMDAC(%struct.drm_device* %203, i32 %204, i64 %205, i32 %208)
  %210 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %213 = call i32 @NVReadRAMDAC(%struct.drm_device* %210, i32 %211, i64 %212)
  store i32 %213, i32* %17, align 4
  %214 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %215 = load i32, i32* %19, align 4
  %216 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @NVWriteRAMDAC(%struct.drm_device* %214, i32 %215, i64 %216, i32 %219)
  %221 = call i32 @msleep(i32 5)
  %222 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %223 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = call i32 @NVReadRAMDAC(%struct.drm_device* %222, i32 0, i64 %226)
  store i32 %227, i32* %8, align 4
  %228 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %229 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %229, %231
  %233 = call i32 @NVReadRAMDAC(%struct.drm_device* %228, i32 0, i64 %232)
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %8, align 4
  %236 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %237 = load i32, i32* %19, align 4
  %238 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %239 = call i32 @NVReadRAMDAC(%struct.drm_device* %236, i32 %237, i64 %238)
  store i32 %239, i32* %17, align 4
  %240 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %241 = load i32, i32* %19, align 4
  %242 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED, align 4
  %245 = xor i32 %244, -1
  %246 = and i32 %243, %245
  %247 = call i32 @NVWriteRAMDAC(%struct.drm_device* %240, i32 %241, i64 %242, i32 %246)
  %248 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %249 = load i32, i32* %19, align 4
  %250 = load i64, i64* @NV_PRAMDAC_TESTPOINT_DATA, align 8
  %251 = call i32 @NVWriteRAMDAC(%struct.drm_device* %248, i32 %249, i64 %250, i32 0)
  %252 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %253 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %253, %255
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @NVWriteRAMDAC(%struct.drm_device* %252, i32 0, i64 %256, i32 %257)
  %259 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %260 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %260, %262
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @NVWriteRAMDAC(%struct.drm_device* %259, i32 0, i64 %263, i32 %264)
  %266 = load i32, i32* %10, align 4
  %267 = icmp eq i32 %266, 104
  br i1 %267, label %268, label %273

268:                                              ; preds = %180
  %269 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %270 = load i32, i32* @NV_PBUS_POWERCTRL_4, align 4
  %271 = load i32, i32* %12, align 4
  %272 = call i32 @nvif_wr32(%struct.nvif_object* %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %268, %180
  %274 = load %struct.nvif_object*, %struct.nvif_object** %5, align 8
  %275 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %276 = load i32, i32* %11, align 4
  %277 = call i32 @nvif_wr32(%struct.nvif_object* %274, i32 %275, i32 %276)
  %278 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %279 = icmp ne %struct.nvkm_gpio* %278, null
  br i1 %279, label %280, label %289

280:                                              ; preds = %273
  %281 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %282 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %283 = load i32, i32* %16, align 4
  %284 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %281, i32 0, i32 %282, i32 255, i32 %283)
  %285 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %286 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %287 = load i32, i32* %15, align 4
  %288 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %285, i32 0, i32 %286, i32 255, i32 %287)
  br label %289

289:                                              ; preds = %280, %273
  %290 = load i32, i32* %8, align 4
  ret i32 %290
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_gpio* @nvxx_gpio(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @nv04_dac_output_offset(%struct.drm_encoder*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i64) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i32 @nvif_rd32(%struct.nvif_object*, i32) #1

declare dso_local i32 @nvif_wr32(%struct.nvif_object*, i32, i32) #1

declare dso_local i32 @nvkm_gpio_get(%struct.nvkm_gpio*, i32, i32, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
