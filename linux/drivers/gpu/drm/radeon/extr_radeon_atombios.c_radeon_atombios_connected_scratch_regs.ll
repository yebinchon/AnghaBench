; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_connected_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_connected_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.radeon_connector = type { i32 }
%struct.radeon_encoder = type { i32 }

@CHIP_R600 = common dso_local global i64 0, align 8
@R600_BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@R600_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@R600_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TV1 connected\0A\00", align 1
@ATOM_S3_TV1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_TV1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"TV1 disconnected\0A\00", align 1
@ATOM_S0_TV1_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"CV connected\0A\00", align 1
@ATOM_S3_CV_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_CV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CV disconnected\0A\00", align 1
@ATOM_S0_CV_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"LCD1 connected\0A\00", align 1
@ATOM_S0_LCD1 = common dso_local global i32 0, align 4
@ATOM_S3_LCD1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_LCD1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"LCD1 disconnected\0A\00", align 1
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"CRT1 connected\0A\00", align 1
@ATOM_S0_CRT1_COLOR = common dso_local global i32 0, align 4
@ATOM_S3_CRT1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_CRT1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"CRT1 disconnected\0A\00", align 1
@ATOM_S0_CRT1_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"CRT2 connected\0A\00", align 1
@ATOM_S0_CRT2_COLOR = common dso_local global i32 0, align 4
@ATOM_S3_CRT2_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_CRT2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"CRT2 disconnected\0A\00", align 1
@ATOM_S0_CRT2_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"DFP1 connected\0A\00", align 1
@ATOM_S0_DFP1 = common dso_local global i32 0, align 4
@ATOM_S3_DFP1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"DFP1 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"DFP2 connected\0A\00", align 1
@ATOM_S0_DFP2 = common dso_local global i32 0, align 4
@ATOM_S3_DFP2_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"DFP2 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP3_SUPPORT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"DFP3 connected\0A\00", align 1
@ATOM_S0_DFP3 = common dso_local global i32 0, align 4
@ATOM_S3_DFP3_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP3 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"DFP3 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP4_SUPPORT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"DFP4 connected\0A\00", align 1
@ATOM_S0_DFP4 = common dso_local global i32 0, align 4
@ATOM_S3_DFP4_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP4 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"DFP4 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP5_SUPPORT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"DFP5 connected\0A\00", align 1
@ATOM_S0_DFP5 = common dso_local global i32 0, align 4
@ATOM_S3_DFP5_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP5 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"DFP5 disconnected\0A\00", align 1
@ATOM_DEVICE_DFP6_SUPPORT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"DFP6 connected\0A\00", align 1
@ATOM_S0_DFP6 = common dso_local global i32 0, align 4
@ATOM_S3_DFP6_ACTIVE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_REQ_DFP6 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"DFP6 disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_connected_scratch_regs(%struct.drm_connector* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
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
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %20)
  store %struct.radeon_connector* %21, %struct.radeon_connector** %9, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %23 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %22)
  store %struct.radeon_encoder* %23, %struct.radeon_encoder** %10, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_R600, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @R600_BIOS_0_SCRATCH, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @R600_BIOS_3_SCRATCH, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @R600_BIOS_6_SCRATCH, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %13, align 4
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* @RADEON_BIOS_0_SCRATCH, align 4
  %38 = call i32 @RREG32(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %42 = call i32 @RREG32(i32 %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %45 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %43
  %51 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ATOM_S3_TV1_ACTIVE, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @ATOM_S6_ACC_REQ_TV1, align 4
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  br label %82

68:                                               ; preds = %57
  %69 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ATOM_S0_TV1_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @ATOM_S3_TV1_ACTIVE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @ATOM_S6_ACC_REQ_TV1, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %68, %60
  br label %83

83:                                               ; preds = %82, %50, %43
  %84 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %85 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %83
  %91 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %92 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @ATOM_S3_CV_ACTIVE, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @ATOM_S6_ACC_REQ_CV, align 4
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %13, align 4
  br label %122

108:                                              ; preds = %97
  %109 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @ATOM_S0_CV_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @ATOM_S3_CV_ACTIVE, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* @ATOM_S6_ACC_REQ_CV, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %13, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %108, %100
  br label %123

123:                                              ; preds = %122, %90, %83
  %124 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %125 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %166

130:                                              ; preds = %123
  %131 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %132 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %130
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @ATOM_S0_LCD1, align 4
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* @ATOM_S3_LCD1_ACTIVE, align 4
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* @ATOM_S6_ACC_REQ_LCD1, align 4
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  br label %165

151:                                              ; preds = %137
  %152 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* @ATOM_S0_LCD1, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %11, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @ATOM_S3_LCD1_ACTIVE, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %12, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* @ATOM_S6_ACC_REQ_LCD1, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %151, %140
  br label %166

166:                                              ; preds = %165, %130, %123
  %167 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %168 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %209

173:                                              ; preds = %166
  %174 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %175 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %209

180:                                              ; preds = %173
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* @ATOM_S0_CRT1_COLOR, align 4
  %186 = load i32, i32* %11, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* @ATOM_S3_CRT1_ACTIVE, align 4
  %189 = load i32, i32* %12, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* @ATOM_S6_ACC_REQ_CRT1, align 4
  %192 = load i32, i32* %13, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %13, align 4
  br label %208

194:                                              ; preds = %180
  %195 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %196 = load i32, i32* @ATOM_S0_CRT1_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* @ATOM_S3_CRT1_ACTIVE, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* @ATOM_S6_ACC_REQ_CRT1, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %13, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %194, %183
  br label %209

209:                                              ; preds = %208, %173, %166
  %210 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %211 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %252

216:                                              ; preds = %209
  %217 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %218 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %252

223:                                              ; preds = %216
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %228 = load i32, i32* @ATOM_S0_CRT2_COLOR, align 4
  %229 = load i32, i32* %11, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* @ATOM_S3_CRT2_ACTIVE, align 4
  %232 = load i32, i32* %12, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* @ATOM_S6_ACC_REQ_CRT2, align 4
  %235 = load i32, i32* %13, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %13, align 4
  br label %251

237:                                              ; preds = %223
  %238 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %239 = load i32, i32* @ATOM_S0_CRT2_MASK, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %11, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* @ATOM_S3_CRT2_ACTIVE, align 4
  %244 = xor i32 %243, -1
  %245 = load i32, i32* %12, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* @ATOM_S6_ACC_REQ_CRT2, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %13, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %13, align 4
  br label %251

251:                                              ; preds = %237, %226
  br label %252

252:                                              ; preds = %251, %216, %209
  %253 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %254 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %295

259:                                              ; preds = %252
  %260 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %261 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %295

266:                                              ; preds = %259
  %267 = load i32, i32* %6, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %271 = load i32, i32* @ATOM_S0_DFP1, align 4
  %272 = load i32, i32* %11, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* @ATOM_S3_DFP1_ACTIVE, align 4
  %275 = load i32, i32* %12, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* @ATOM_S6_ACC_REQ_DFP1, align 4
  %278 = load i32, i32* %13, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %13, align 4
  br label %294

280:                                              ; preds = %266
  %281 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %282 = load i32, i32* @ATOM_S0_DFP1, align 4
  %283 = xor i32 %282, -1
  %284 = load i32, i32* %11, align 4
  %285 = and i32 %284, %283
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* @ATOM_S3_DFP1_ACTIVE, align 4
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %12, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* @ATOM_S6_ACC_REQ_DFP1, align 4
  %291 = xor i32 %290, -1
  %292 = load i32, i32* %13, align 4
  %293 = and i32 %292, %291
  store i32 %293, i32* %13, align 4
  br label %294

294:                                              ; preds = %280, %269
  br label %295

295:                                              ; preds = %294, %259, %252
  %296 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %297 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %338

302:                                              ; preds = %295
  %303 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %304 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %338

309:                                              ; preds = %302
  %310 = load i32, i32* %6, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %309
  %313 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %314 = load i32, i32* @ATOM_S0_DFP2, align 4
  %315 = load i32, i32* %11, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %11, align 4
  %317 = load i32, i32* @ATOM_S3_DFP2_ACTIVE, align 4
  %318 = load i32, i32* %12, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* @ATOM_S6_ACC_REQ_DFP2, align 4
  %321 = load i32, i32* %13, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %13, align 4
  br label %337

323:                                              ; preds = %309
  %324 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %325 = load i32, i32* @ATOM_S0_DFP2, align 4
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %11, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* @ATOM_S3_DFP2_ACTIVE, align 4
  %330 = xor i32 %329, -1
  %331 = load i32, i32* %12, align 4
  %332 = and i32 %331, %330
  store i32 %332, i32* %12, align 4
  %333 = load i32, i32* @ATOM_S6_ACC_REQ_DFP2, align 4
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %13, align 4
  %336 = and i32 %335, %334
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %323, %312
  br label %338

338:                                              ; preds = %337, %302, %295
  %339 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %340 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %381

345:                                              ; preds = %338
  %346 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %347 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %381

352:                                              ; preds = %345
  %353 = load i32, i32* %6, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %352
  %356 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %357 = load i32, i32* @ATOM_S0_DFP3, align 4
  %358 = load i32, i32* %11, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %11, align 4
  %360 = load i32, i32* @ATOM_S3_DFP3_ACTIVE, align 4
  %361 = load i32, i32* %12, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %12, align 4
  %363 = load i32, i32* @ATOM_S6_ACC_REQ_DFP3, align 4
  %364 = load i32, i32* %13, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %13, align 4
  br label %380

366:                                              ; preds = %352
  %367 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %368 = load i32, i32* @ATOM_S0_DFP3, align 4
  %369 = xor i32 %368, -1
  %370 = load i32, i32* %11, align 4
  %371 = and i32 %370, %369
  store i32 %371, i32* %11, align 4
  %372 = load i32, i32* @ATOM_S3_DFP3_ACTIVE, align 4
  %373 = xor i32 %372, -1
  %374 = load i32, i32* %12, align 4
  %375 = and i32 %374, %373
  store i32 %375, i32* %12, align 4
  %376 = load i32, i32* @ATOM_S6_ACC_REQ_DFP3, align 4
  %377 = xor i32 %376, -1
  %378 = load i32, i32* %13, align 4
  %379 = and i32 %378, %377
  store i32 %379, i32* %13, align 4
  br label %380

380:                                              ; preds = %366, %355
  br label %381

381:                                              ; preds = %380, %345, %338
  %382 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %383 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @ATOM_DEVICE_DFP4_SUPPORT, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %424

388:                                              ; preds = %381
  %389 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %390 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @ATOM_DEVICE_DFP4_SUPPORT, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %424

395:                                              ; preds = %388
  %396 = load i32, i32* %6, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %409

398:                                              ; preds = %395
  %399 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %400 = load i32, i32* @ATOM_S0_DFP4, align 4
  %401 = load i32, i32* %11, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %11, align 4
  %403 = load i32, i32* @ATOM_S3_DFP4_ACTIVE, align 4
  %404 = load i32, i32* %12, align 4
  %405 = or i32 %404, %403
  store i32 %405, i32* %12, align 4
  %406 = load i32, i32* @ATOM_S6_ACC_REQ_DFP4, align 4
  %407 = load i32, i32* %13, align 4
  %408 = or i32 %407, %406
  store i32 %408, i32* %13, align 4
  br label %423

409:                                              ; preds = %395
  %410 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %411 = load i32, i32* @ATOM_S0_DFP4, align 4
  %412 = xor i32 %411, -1
  %413 = load i32, i32* %11, align 4
  %414 = and i32 %413, %412
  store i32 %414, i32* %11, align 4
  %415 = load i32, i32* @ATOM_S3_DFP4_ACTIVE, align 4
  %416 = xor i32 %415, -1
  %417 = load i32, i32* %12, align 4
  %418 = and i32 %417, %416
  store i32 %418, i32* %12, align 4
  %419 = load i32, i32* @ATOM_S6_ACC_REQ_DFP4, align 4
  %420 = xor i32 %419, -1
  %421 = load i32, i32* %13, align 4
  %422 = and i32 %421, %420
  store i32 %422, i32* %13, align 4
  br label %423

423:                                              ; preds = %409, %398
  br label %424

424:                                              ; preds = %423, %388, %381
  %425 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %426 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @ATOM_DEVICE_DFP5_SUPPORT, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %467

431:                                              ; preds = %424
  %432 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %433 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @ATOM_DEVICE_DFP5_SUPPORT, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %467

438:                                              ; preds = %431
  %439 = load i32, i32* %6, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %438
  %442 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %443 = load i32, i32* @ATOM_S0_DFP5, align 4
  %444 = load i32, i32* %11, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %11, align 4
  %446 = load i32, i32* @ATOM_S3_DFP5_ACTIVE, align 4
  %447 = load i32, i32* %12, align 4
  %448 = or i32 %447, %446
  store i32 %448, i32* %12, align 4
  %449 = load i32, i32* @ATOM_S6_ACC_REQ_DFP5, align 4
  %450 = load i32, i32* %13, align 4
  %451 = or i32 %450, %449
  store i32 %451, i32* %13, align 4
  br label %466

452:                                              ; preds = %438
  %453 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %454 = load i32, i32* @ATOM_S0_DFP5, align 4
  %455 = xor i32 %454, -1
  %456 = load i32, i32* %11, align 4
  %457 = and i32 %456, %455
  store i32 %457, i32* %11, align 4
  %458 = load i32, i32* @ATOM_S3_DFP5_ACTIVE, align 4
  %459 = xor i32 %458, -1
  %460 = load i32, i32* %12, align 4
  %461 = and i32 %460, %459
  store i32 %461, i32* %12, align 4
  %462 = load i32, i32* @ATOM_S6_ACC_REQ_DFP5, align 4
  %463 = xor i32 %462, -1
  %464 = load i32, i32* %13, align 4
  %465 = and i32 %464, %463
  store i32 %465, i32* %13, align 4
  br label %466

466:                                              ; preds = %452, %441
  br label %467

467:                                              ; preds = %466, %431, %424
  %468 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %469 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @ATOM_DEVICE_DFP6_SUPPORT, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %510

474:                                              ; preds = %467
  %475 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %476 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @ATOM_DEVICE_DFP6_SUPPORT, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %510

481:                                              ; preds = %474
  %482 = load i32, i32* %6, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %495

484:                                              ; preds = %481
  %485 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %486 = load i32, i32* @ATOM_S0_DFP6, align 4
  %487 = load i32, i32* %11, align 4
  %488 = or i32 %487, %486
  store i32 %488, i32* %11, align 4
  %489 = load i32, i32* @ATOM_S3_DFP6_ACTIVE, align 4
  %490 = load i32, i32* %12, align 4
  %491 = or i32 %490, %489
  store i32 %491, i32* %12, align 4
  %492 = load i32, i32* @ATOM_S6_ACC_REQ_DFP6, align 4
  %493 = load i32, i32* %13, align 4
  %494 = or i32 %493, %492
  store i32 %494, i32* %13, align 4
  br label %509

495:                                              ; preds = %481
  %496 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %497 = load i32, i32* @ATOM_S0_DFP6, align 4
  %498 = xor i32 %497, -1
  %499 = load i32, i32* %11, align 4
  %500 = and i32 %499, %498
  store i32 %500, i32* %11, align 4
  %501 = load i32, i32* @ATOM_S3_DFP6_ACTIVE, align 4
  %502 = xor i32 %501, -1
  %503 = load i32, i32* %12, align 4
  %504 = and i32 %503, %502
  store i32 %504, i32* %12, align 4
  %505 = load i32, i32* @ATOM_S6_ACC_REQ_DFP6, align 4
  %506 = xor i32 %505, -1
  %507 = load i32, i32* %13, align 4
  %508 = and i32 %507, %506
  store i32 %508, i32* %13, align 4
  br label %509

509:                                              ; preds = %495, %484
  br label %510

510:                                              ; preds = %509, %474, %467
  %511 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %512 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @CHIP_R600, align 8
  %515 = icmp sge i64 %513, %514
  br i1 %515, label %516, label %526

516:                                              ; preds = %510
  %517 = load i32, i32* @R600_BIOS_0_SCRATCH, align 4
  %518 = load i32, i32* %11, align 4
  %519 = call i32 @WREG32(i32 %517, i32 %518)
  %520 = load i32, i32* @R600_BIOS_3_SCRATCH, align 4
  %521 = load i32, i32* %12, align 4
  %522 = call i32 @WREG32(i32 %520, i32 %521)
  %523 = load i32, i32* @R600_BIOS_6_SCRATCH, align 4
  %524 = load i32, i32* %13, align 4
  %525 = call i32 @WREG32(i32 %523, i32 %524)
  br label %536

526:                                              ; preds = %510
  %527 = load i32, i32* @RADEON_BIOS_0_SCRATCH, align 4
  %528 = load i32, i32* %11, align 4
  %529 = call i32 @WREG32(i32 %527, i32 %528)
  %530 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %531 = load i32, i32* %12, align 4
  %532 = call i32 @WREG32(i32 %530, i32 %531)
  %533 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %534 = load i32, i32* %13, align 4
  %535 = call i32 @WREG32(i32 %533, i32 %534)
  br label %536

536:                                              ; preds = %526, %516
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
