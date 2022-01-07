; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_set_bios_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_set_bios_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.amdgpu_connector = type { i32 }
%struct.amdgpu_encoder = type { i32 }

@mmBIOS_SCRATCH_0 = common dso_local global i32 0, align 4
@mmBIOS_SCRATCH_3 = common dso_local global i32 0, align 4
@mmBIOS_SCRATCH_6 = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"LCD1 connected\0A\00", align 1
@ATOM_S0_LCD1 = common dso_local global i32 0, align 4
@ATOM_S3_LCD1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_LCD1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"LCD1 disconnected\0A\00", align 1
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CRT1 connected\0A\00", align 1
@ATOM_S0_CRT1_COLOR = common dso_local global i32 0, align 4
@ATOM_S3_CRT1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_CRT1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"CRT1 disconnected\0A\00", align 1
@ATOM_S0_CRT1_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"CRT2 connected\0A\00", align 1
@ATOM_S0_CRT2_COLOR = common dso_local global i32 0, align 4
@ATOM_S3_CRT2_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_CRT2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"CRT2 disconnected\0A\00", align 1
@ATOM_S0_CRT2_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"DFP1 connected\0A\00", align 1
@ATOM_S0_DFP1 = common dso_local global i32 0, align 4
@ATOM_S3_DFP1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"DFP1 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"DFP2 connected\0A\00", align 1
@ATOM_S0_DFP2 = common dso_local global i32 0, align 4
@ATOM_S3_DFP2_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"DFP2 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP3_SUPPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"DFP3 connected\0A\00", align 1
@ATOM_S0_DFP3 = common dso_local global i32 0, align 4
@ATOM_S3_DFP3_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"DFP3 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP4_SUPPORT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"DFP4 connected\0A\00", align 1
@ATOM_S0_DFP4 = common dso_local global i32 0, align 4
@ATOM_S3_DFP4_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP4 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"DFP4 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP5_SUPPORT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"DFP5 connected\0A\00", align 1
@ATOM_S0_DFP5 = common dso_local global i32 0, align 4
@ATOM_S3_DFP5_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP5 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"DFP5 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP6_SUPPORT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"DFP6 connected\0A\00", align 1
@ATOM_S0_DFP6 = common dso_local global i32 0, align 4
@ATOM_S3_DFP6_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP6 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"DFP6 disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_encoder_set_bios_scratch_regs(%struct.drm_connector* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_connector*, align 8
  %10 = alloca %struct.amdgpu_encoder*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %20)
  store %struct.amdgpu_connector* %21, %struct.amdgpu_connector** %9, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %23 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %22)
  store %struct.amdgpu_encoder* %23, %struct.amdgpu_encoder** %10, align 8
  %24 = load i32, i32* @mmBIOS_SCRATCH_0, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @mmBIOS_SCRATCH_3, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @mmBIOS_SCRATCH_6, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %31 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %3
  %37 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %38 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ATOM_S0_LCD1, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @ATOM_S3_LCD1_ACTIVE, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @ATOM_S6_ACC_REQ_LCD1, align 4
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %71

57:                                               ; preds = %43
  %58 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ATOM_S0_LCD1, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* @ATOM_S3_LCD1_ACTIVE, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @ATOM_S6_ACC_REQ_LCD1, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %57, %46
  br label %72

72:                                               ; preds = %71, %36, %3
  %73 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %74 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %72
  %80 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %81 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ATOM_S0_CRT1_COLOR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @ATOM_S3_CRT1_ACTIVE, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* @ATOM_S6_ACC_REQ_CRT1, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %114

100:                                              ; preds = %86
  %101 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @ATOM_S0_CRT1_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @ATOM_S3_CRT1_ACTIVE, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @ATOM_S6_ACC_REQ_CRT1, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %13, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %100, %89
  br label %115

115:                                              ; preds = %114, %79, %72
  %116 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %117 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %115
  %123 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %124 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %158

129:                                              ; preds = %122
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @ATOM_S0_CRT2_COLOR, align 4
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* @ATOM_S3_CRT2_ACTIVE, align 4
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* @ATOM_S6_ACC_REQ_CRT2, align 4
  %141 = load i32, i32* %13, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %13, align 4
  br label %157

143:                                              ; preds = %129
  %144 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* @ATOM_S0_CRT2_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* @ATOM_S3_CRT2_ACTIVE, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %12, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* @ATOM_S6_ACC_REQ_CRT2, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %143, %132
  br label %158

158:                                              ; preds = %157, %122, %115
  %159 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %160 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %201

165:                                              ; preds = %158
  %166 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %167 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %165
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %172
  %176 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* @ATOM_S0_DFP1, align 4
  %178 = load i32, i32* %11, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* @ATOM_S3_DFP1_ACTIVE, align 4
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* @ATOM_S6_ACC_REQ_DFP1, align 4
  %184 = load i32, i32* %13, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %13, align 4
  br label %200

186:                                              ; preds = %172
  %187 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %188 = load i32, i32* @ATOM_S0_DFP1, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* @ATOM_S3_DFP1_ACTIVE, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %12, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* @ATOM_S6_ACC_REQ_DFP1, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %186, %175
  br label %201

201:                                              ; preds = %200, %165, %158
  %202 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %203 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %244

208:                                              ; preds = %201
  %209 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %210 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %244

215:                                              ; preds = %208
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %220 = load i32, i32* @ATOM_S0_DFP2, align 4
  %221 = load i32, i32* %11, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* @ATOM_S3_DFP2_ACTIVE, align 4
  %224 = load i32, i32* %12, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @ATOM_S6_ACC_REQ_DFP2, align 4
  %227 = load i32, i32* %13, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %13, align 4
  br label %243

229:                                              ; preds = %215
  %230 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %231 = load i32, i32* @ATOM_S0_DFP2, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %11, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* @ATOM_S3_DFP2_ACTIVE, align 4
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %12, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* @ATOM_S6_ACC_REQ_DFP2, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %13, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %13, align 4
  br label %243

243:                                              ; preds = %229, %218
  br label %244

244:                                              ; preds = %243, %208, %201
  %245 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %246 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %287

251:                                              ; preds = %244
  %252 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %253 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %287

258:                                              ; preds = %251
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %258
  %262 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %263 = load i32, i32* @ATOM_S0_DFP3, align 4
  %264 = load i32, i32* %11, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %11, align 4
  %266 = load i32, i32* @ATOM_S3_DFP3_ACTIVE, align 4
  %267 = load i32, i32* %12, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %12, align 4
  %269 = load i32, i32* @ATOM_S6_ACC_REQ_DFP3, align 4
  %270 = load i32, i32* %13, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %13, align 4
  br label %286

272:                                              ; preds = %258
  %273 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %274 = load i32, i32* @ATOM_S0_DFP3, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %11, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %11, align 4
  %278 = load i32, i32* @ATOM_S3_DFP3_ACTIVE, align 4
  %279 = xor i32 %278, -1
  %280 = load i32, i32* %12, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* @ATOM_S6_ACC_REQ_DFP3, align 4
  %283 = xor i32 %282, -1
  %284 = load i32, i32* %13, align 4
  %285 = and i32 %284, %283
  store i32 %285, i32* %13, align 4
  br label %286

286:                                              ; preds = %272, %261
  br label %287

287:                                              ; preds = %286, %251, %244
  %288 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %289 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ATOM_DEVICE_DFP4_SUPPORT, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %330

294:                                              ; preds = %287
  %295 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %296 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @ATOM_DEVICE_DFP4_SUPPORT, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %330

301:                                              ; preds = %294
  %302 = load i32, i32* %6, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %301
  %305 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %306 = load i32, i32* @ATOM_S0_DFP4, align 4
  %307 = load i32, i32* %11, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* @ATOM_S3_DFP4_ACTIVE, align 4
  %310 = load i32, i32* %12, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* @ATOM_S6_ACC_REQ_DFP4, align 4
  %313 = load i32, i32* %13, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %13, align 4
  br label %329

315:                                              ; preds = %301
  %316 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %317 = load i32, i32* @ATOM_S0_DFP4, align 4
  %318 = xor i32 %317, -1
  %319 = load i32, i32* %11, align 4
  %320 = and i32 %319, %318
  store i32 %320, i32* %11, align 4
  %321 = load i32, i32* @ATOM_S3_DFP4_ACTIVE, align 4
  %322 = xor i32 %321, -1
  %323 = load i32, i32* %12, align 4
  %324 = and i32 %323, %322
  store i32 %324, i32* %12, align 4
  %325 = load i32, i32* @ATOM_S6_ACC_REQ_DFP4, align 4
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %13, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %13, align 4
  br label %329

329:                                              ; preds = %315, %304
  br label %330

330:                                              ; preds = %329, %294, %287
  %331 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %332 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @ATOM_DEVICE_DFP5_SUPPORT, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %373

337:                                              ; preds = %330
  %338 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %339 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @ATOM_DEVICE_DFP5_SUPPORT, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %373

344:                                              ; preds = %337
  %345 = load i32, i32* %6, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %344
  %348 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %349 = load i32, i32* @ATOM_S0_DFP5, align 4
  %350 = load i32, i32* %11, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %11, align 4
  %352 = load i32, i32* @ATOM_S3_DFP5_ACTIVE, align 4
  %353 = load i32, i32* %12, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %12, align 4
  %355 = load i32, i32* @ATOM_S6_ACC_REQ_DFP5, align 4
  %356 = load i32, i32* %13, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %13, align 4
  br label %372

358:                                              ; preds = %344
  %359 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %360 = load i32, i32* @ATOM_S0_DFP5, align 4
  %361 = xor i32 %360, -1
  %362 = load i32, i32* %11, align 4
  %363 = and i32 %362, %361
  store i32 %363, i32* %11, align 4
  %364 = load i32, i32* @ATOM_S3_DFP5_ACTIVE, align 4
  %365 = xor i32 %364, -1
  %366 = load i32, i32* %12, align 4
  %367 = and i32 %366, %365
  store i32 %367, i32* %12, align 4
  %368 = load i32, i32* @ATOM_S6_ACC_REQ_DFP5, align 4
  %369 = xor i32 %368, -1
  %370 = load i32, i32* %13, align 4
  %371 = and i32 %370, %369
  store i32 %371, i32* %13, align 4
  br label %372

372:                                              ; preds = %358, %347
  br label %373

373:                                              ; preds = %372, %337, %330
  %374 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %375 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @ATOM_DEVICE_DFP6_SUPPORT, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %416

380:                                              ; preds = %373
  %381 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %382 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @ATOM_DEVICE_DFP6_SUPPORT, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %416

387:                                              ; preds = %380
  %388 = load i32, i32* %6, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %401

390:                                              ; preds = %387
  %391 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %392 = load i32, i32* @ATOM_S0_DFP6, align 4
  %393 = load i32, i32* %11, align 4
  %394 = or i32 %393, %392
  store i32 %394, i32* %11, align 4
  %395 = load i32, i32* @ATOM_S3_DFP6_ACTIVE, align 4
  %396 = load i32, i32* %12, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %12, align 4
  %398 = load i32, i32* @ATOM_S6_ACC_REQ_DFP6, align 4
  %399 = load i32, i32* %13, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %13, align 4
  br label %415

401:                                              ; preds = %387
  %402 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %403 = load i32, i32* @ATOM_S0_DFP6, align 4
  %404 = xor i32 %403, -1
  %405 = load i32, i32* %11, align 4
  %406 = and i32 %405, %404
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* @ATOM_S3_DFP6_ACTIVE, align 4
  %408 = xor i32 %407, -1
  %409 = load i32, i32* %12, align 4
  %410 = and i32 %409, %408
  store i32 %410, i32* %12, align 4
  %411 = load i32, i32* @ATOM_S6_ACC_REQ_DFP6, align 4
  %412 = xor i32 %411, -1
  %413 = load i32, i32* %13, align 4
  %414 = and i32 %413, %412
  store i32 %414, i32* %13, align 4
  br label %415

415:                                              ; preds = %401, %390
  br label %416

416:                                              ; preds = %415, %380, %373
  %417 = load i32, i32* @mmBIOS_SCRATCH_0, align 4
  %418 = load i32, i32* %11, align 4
  %419 = call i32 @WREG32(i32 %417, i32 %418)
  %420 = load i32, i32* @mmBIOS_SCRATCH_3, align 4
  %421 = load i32, i32* %12, align 4
  %422 = call i32 @WREG32(i32 %420, i32 %421)
  %423 = load i32, i32* @mmBIOS_SCRATCH_6, align 4
  %424 = load i32, i32* %13, align 4
  %425 = call i32 @WREG32(i32 %423, i32 %424)
  ret void
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
