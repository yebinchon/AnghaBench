; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i8*)*, i32 (i8*)*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"sw_init of IP block <%s> failed %d\0A\00", align 1
@AMD_IP_BLOCK_TYPE_GMC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"amdgpu_vram_scratch_init failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"hw_init %d failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"amdgpu_device_wb_init failed %d\0A\00", align 1
@amdgpu_mcbp = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_CSA_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"allocate CSA failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@AMDGIM_ERROR_VF_IB_INIT_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_device_ip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_ip_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call i32 @amdgpu_ras_init(%struct.amdgpu_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %224

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %154, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %157

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %154

31:                                               ; preds = %19
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32 (i8*)*, i32 (i8*)** %42, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = bitcast %struct.amdgpu_device* %44 to i8*
  %46 = call i32 %43(i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %31
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  br label %209

64:                                               ; preds = %31
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AMD_IP_BLOCK_TYPE_GMC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %153

85:                                               ; preds = %64
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = call i32 @amdgpu_device_vram_scratch_init(%struct.amdgpu_device* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %209

93:                                               ; preds = %85
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32 (i8*)*, i32 (i8*)** %104, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = bitcast %struct.amdgpu_device* %106 to i8*
  %108 = call i32 %105(i8* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %93
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  br label %209

115:                                              ; preds = %93
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %117 = call i32 @amdgpu_device_wb_init(%struct.amdgpu_device* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %209

123:                                              ; preds = %115
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load i64, i64* @amdgpu_mcbp, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %123
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %134, %123
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %144 = load i32, i32* @AMDGPU_CSA_SIZE, align 4
  %145 = call i32 @amdgpu_allocate_static_csa(%struct.amdgpu_device* %139, i32* %142, i32 %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* %5, align 4
  %150 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %209

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %134
  br label %153

153:                                              ; preds = %152, %64
  br label %154

154:                                              ; preds = %153, %30
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %13

157:                                              ; preds = %13
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = call i32 @amdgpu_ib_pool_init(%struct.amdgpu_device* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %169 = load i32, i32* @AMDGIM_ERROR_VF_IB_INIT_FAIL, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @amdgpu_vf_error_put(%struct.amdgpu_device* %168, i32 %169, i32 0, i32 %170)
  br label %209

172:                                              ; preds = %157
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = call i32 @amdgpu_ucode_create_bo(%struct.amdgpu_device* %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %209

178:                                              ; preds = %172
  %179 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %180 = call i32 @amdgpu_device_ip_hw_init_phase1(%struct.amdgpu_device* %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %209

184:                                              ; preds = %178
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %186 = call i32 @amdgpu_device_fw_loading(%struct.amdgpu_device* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %209

190:                                              ; preds = %184
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %192 = call i32 @amdgpu_device_ip_hw_init_phase2(%struct.amdgpu_device* %191)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %209

196:                                              ; preds = %190
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %201, 1
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %205 = call i32 @amdgpu_xgmi_add_device(%struct.amdgpu_device* %204)
  br label %206

206:                                              ; preds = %203, %196
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = call i32 @amdgpu_amdkfd_device_init(%struct.amdgpu_device* %207)
  br label %209

209:                                              ; preds = %206, %195, %189, %183, %177, %162, %148, %120, %111, %90, %49
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %211 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %209
  %214 = load i32, i32* %5, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %218 = call i32 @amdgpu_virt_init_data_exchange(%struct.amdgpu_device* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %221 = call i32 @amdgpu_virt_release_full_gpu(%struct.amdgpu_device* %220, i32 1)
  br label %222

222:                                              ; preds = %219, %209
  %223 = load i32, i32* %5, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %222, %10
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @amdgpu_ras_init(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @amdgpu_device_vram_scratch_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_wb_init(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_allocate_static_csa(%struct.amdgpu_device*, i32*, i32, i32) #1

declare dso_local i32 @amdgpu_ib_pool_init(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_vf_error_put(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ucode_create_bo(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_hw_init_phase1(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_fw_loading(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_ip_hw_init_phase2(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_xgmi_add_device(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_amdkfd_device_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_init_data_exchange(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_release_full_gpu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
