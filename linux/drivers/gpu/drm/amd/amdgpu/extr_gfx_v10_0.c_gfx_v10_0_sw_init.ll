; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_kiq = type { i32, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.amdgpu_kiq, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@SOC15_IH_CLIENTID_GRBM_CP = common dso_local global i32 0, align 4
@GFX_10_1__SRCID__CP_IB2_INTERRUPT_PKT = common dso_local global i32 0, align 4
@GFX_10_1__SRCID__CP_EOP_INTERRUPT = common dso_local global i32 0, align 4
@GFX_10_1__SRCID__CP_PRIV_REG_FAULT = common dso_local global i32 0, align 4
@GFX_10_1__SRCID__CP_PRIV_INSTR_FAULT = common dso_local global i32 0, align 4
@AMDGPU_GFX_NORMAL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init MEC BOs!\0A\00", align 1
@GFX10_MEC_HPD_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init KIQ BOs!\0A\00", align 1
@AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO = common dso_local global i64 0, align 8
@F32_CE_PROGRAM_RAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v10_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_kiq*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %10, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %41 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %1, %1, %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 2, i32* %24, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 2, i32* %32, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 4, i32* %36, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 8, i32* %40, align 4
  br label %66

41:                                               ; preds = %1
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 4, i32* %61, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 8, i32* %65, align 4
  br label %66

66:                                               ; preds = %41, %16
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %68 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %69 = load i32, i32* @GFX_10_1__SRCID__CP_IB2_INTERRUPT_PKT, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %72, i32 0, i32 0
  %74 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %67, i32 %68, i32 %69, i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %316

79:                                               ; preds = %66
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %81 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %82 = load i32, i32* @GFX_10_1__SRCID__CP_EOP_INTERRUPT, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 7
  %86 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %80, i32 %81, i32 %82, i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %316

91:                                               ; preds = %79
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %93 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %94 = load i32, i32* @GFX_10_1__SRCID__CP_PRIV_REG_FAULT, align 4
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %92, i32 %93, i32 %94, i32* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %316

103:                                              ; preds = %91
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %105 = load i32, i32* @SOC15_IH_CLIENTID_GRBM_CP, align 4
  %106 = load i32, i32* @GFX_10_1__SRCID__CP_PRIV_INSTR_FAULT, align 4
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  %110 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %104, i32 %105, i32 %106, i32* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %316

115:                                              ; preds = %103
  %116 = load i32, i32* @AMDGPU_GFX_NORMAL_MODE, align 4
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  store i32 %116, i32* %119, align 4
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %121 = call i32 @gfx_v10_0_scratch_init(%struct.amdgpu_device* %120)
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %123 = call i32 @gfx_v10_0_me_init(%struct.amdgpu_device* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %316

128:                                              ; preds = %115
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %130 = call i32 @gfx_v10_0_rlc_init(%struct.amdgpu_device* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %316

136:                                              ; preds = %128
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %138 = call i32 @gfx_v10_0_mec_init(%struct.amdgpu_device* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %316

144:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %201, %144
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %153, label %204

153:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %197, %153
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %155, %160
  br i1 %161, label %162, label %200

162:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %193, %162
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %164, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %163
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @amdgpu_gfx_is_me_queue_enabled(%struct.amdgpu_device* %172, i32 %173, i32 %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  br label %193

179:                                              ; preds = %171
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @gfx_v10_0_gfx_ring_init(%struct.amdgpu_device* %180, i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %2, align 4
  br label %316

190:                                              ; preds = %179
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %190, %178
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %163

196:                                              ; preds = %163
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %154

200:                                              ; preds = %154
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %145

204:                                              ; preds = %145
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %261, %204
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %206, %211
  br i1 %212, label %213, label %264

213:                                              ; preds = %205
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %257, %213
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %217 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %215, %220
  br i1 %221, label %222, label %260

222:                                              ; preds = %214
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %253, %222
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %226 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %224, %229
  br i1 %230, label %231, label %256

231:                                              ; preds = %223
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device* %232, i32 %233, i32 %234, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %231
  br label %253

239:                                              ; preds = %231
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @gfx_v10_0_compute_ring_init(%struct.amdgpu_device* %240, i32 %241, i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %239
  %249 = load i32, i32* %7, align 4
  store i32 %249, i32* %2, align 4
  br label %316

250:                                              ; preds = %239
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %253

253:                                              ; preds = %250, %238
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %6, align 4
  br label %223

256:                                              ; preds = %223
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %214

260:                                              ; preds = %214
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  br label %205

264:                                              ; preds = %205
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %266 = load i32, i32* @GFX10_MEC_HPD_SIZE, align 4
  %267 = call i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device* %265, i32 %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %264
  %271 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %272 = load i32, i32* %7, align 4
  store i32 %272, i32* %2, align 4
  br label %316

273:                                              ; preds = %264
  %274 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %275 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  store %struct.amdgpu_kiq* %276, %struct.amdgpu_kiq** %9, align 8
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %278 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %9, align 8
  %279 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %278, i32 0, i32 1
  %280 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %9, align 8
  %281 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %280, i32 0, i32 0
  %282 = call i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device* %277, i32* %279, i32* %281)
  store i32 %282, i32* %7, align 4
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %273
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %2, align 4
  br label %316

287:                                              ; preds = %273
  %288 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %289 = call i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device* %288, i32 4)
  store i32 %289, i32* %7, align 4
  %290 = load i32, i32* %7, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = load i32, i32* %7, align 4
  store i32 %293, i32* %2, align 4
  br label %316

294:                                              ; preds = %287
  %295 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %296 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %309

301:                                              ; preds = %294
  %302 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %303 = call i32 @gfx_v10_0_rlc_backdoor_autoload_buffer_init(%struct.amdgpu_device* %302)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* %2, align 4
  br label %316

308:                                              ; preds = %301
  br label %309

309:                                              ; preds = %308, %294
  %310 = load i32, i32* @F32_CE_PROGRAM_RAM_SIZE, align 4
  %311 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %312 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  store i32 %310, i32* %313, align 4
  %314 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %315 = call i32 @gfx_v10_0_gpu_early_init(%struct.amdgpu_device* %314)
  store i32 0, i32* %2, align 4
  br label %316

316:                                              ; preds = %309, %306, %292, %285, %270, %248, %188, %141, %133, %126, %113, %101, %89, %77
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @gfx_v10_0_scratch_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_me_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_init(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @gfx_v10_0_mec_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gfx_is_me_queue_enabled(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_gfx_ring_init(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_compute_ring_init(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_kiq_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device*, i32*, i32*) #1

declare dso_local i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_buffer_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_gpu_early_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
