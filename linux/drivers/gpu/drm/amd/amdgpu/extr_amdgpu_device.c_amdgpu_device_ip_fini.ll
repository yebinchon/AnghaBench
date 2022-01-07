; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_14__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@AMD_PG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_SMC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"hw_fini of IP block <%s> failed %d\0A\00", align 1
@AMD_IP_BLOCK_TYPE_GMC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"sw_fini of IP block <%s> failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to release exclusive mode on fini\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_device_ip_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_ip_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = call i32 @amdgpu_ras_pre_fini(%struct.amdgpu_device* %5)
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = call i32 @amdgpu_xgmi_remove_device(%struct.amdgpu_device* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = call i32 @amdgpu_amdkfd_device_fini(%struct.amdgpu_device* %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = load i32, i32* @AMD_PG_STATE_UNGATE, align 4
  %21 = call i32 @amdgpu_device_set_pg_state(%struct.amdgpu_device* %19, i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %24 = call i32 @amdgpu_device_set_cg_state(%struct.amdgpu_device* %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %99, %16
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %25
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %99

43:                                               ; preds = %31
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AMD_IP_BLOCK_TYPE_SMC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %43
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32 (i8*)*, i32 (i8*)** %67, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = bitcast %struct.amdgpu_device* %69 to i8*
  %71 = call i32 %68(i8* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %56
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %74, %56
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  br label %102

98:                                               ; preds = %43
  br label %99

99:                                               ; preds = %98, %42
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %25

102:                                              ; preds = %89, %25
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %164, %102
  %108 = load i32, i32* %3, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %167

110:                                              ; preds = %107
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %110
  br label %164

122:                                              ; preds = %110
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32 (i8*)*, i32 (i8*)** %133, align 8
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = bitcast %struct.amdgpu_device* %135 to i8*
  %137 = call i32 %134(i8* %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %122
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %140, %122
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  br label %164

164:                                              ; preds = %155, %121
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %3, align 4
  br label %107

167:                                              ; preds = %107
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %263, %167
  %173 = load i32, i32* %3, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %266

175:                                              ; preds = %172
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %177 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %176, i32 0, i32 1
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %175
  br label %263

187:                                              ; preds = %175
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AMD_IP_BLOCK_TYPE_GMC, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %187
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %202 = call i32 @amdgpu_ucode_free_bo(%struct.amdgpu_device* %201)
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = call i32 @amdgpu_free_static_csa(i32* %205)
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %208 = call i32 @amdgpu_device_wb_fini(%struct.amdgpu_device* %207)
  %209 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %210 = call i32 @amdgpu_device_vram_scratch_fini(%struct.amdgpu_device* %209)
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %212 = call i32 @amdgpu_ib_pool_fini(%struct.amdgpu_device* %211)
  br label %213

213:                                              ; preds = %200, %187
  %214 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %215 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %214, i32 0, i32 1
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = load i32 (i8*)*, i32 (i8*)** %224, align 8
  %226 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %227 = bitcast %struct.amdgpu_device* %226 to i8*
  %228 = call i32 %225(i8* %227)
  store i32 %228, i32* %4, align 4
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %213
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %233 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %232, i32 0, i32 1
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %231, %213
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %248 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %247, i32 0, i32 1
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  store i32 0, i32* %254, align 4
  %255 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %256 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %255, i32 0, i32 1
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = load i32, i32* %3, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  store i32 0, i32* %262, align 8
  br label %263

263:                                              ; preds = %246, %186
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %3, align 4
  br label %172

266:                                              ; preds = %172
  %267 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %268 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %269, 1
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %325, %266
  %272 = load i32, i32* %3, align 4
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %328

274:                                              ; preds = %271
  %275 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %276 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %275, i32 0, i32 1
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = load i32, i32* %3, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %274
  br label %325

286:                                              ; preds = %274
  %287 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %288 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %287, i32 0, i32 1
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = load i32, i32* %3, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  %298 = load i32 (i8*)*, i32 (i8*)** %297, align 8
  %299 = icmp ne i32 (i8*)* %298, null
  br i1 %299, label %300, label %316

300:                                              ; preds = %286
  %301 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %302 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %301, i32 0, i32 1
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %302, align 8
  %304 = load i32, i32* %3, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 2
  %312 = load i32 (i8*)*, i32 (i8*)** %311, align 8
  %313 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %314 = bitcast %struct.amdgpu_device* %313 to i8*
  %315 = call i32 %312(i8* %314)
  br label %316

316:                                              ; preds = %300, %286
  %317 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %318 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %317, i32 0, i32 1
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = load i32, i32* %3, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 3
  store i32 0, i32* %324, align 4
  br label %325

325:                                              ; preds = %316, %285
  %326 = load i32, i32* %3, align 4
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %3, align 4
  br label %271

328:                                              ; preds = %271
  %329 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %330 = call i32 @amdgpu_ras_fini(%struct.amdgpu_device* %329)
  %331 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %332 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %336 = call i64 @amdgpu_virt_release_full_gpu(%struct.amdgpu_device* %335, i32 0)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %334
  %339 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %340

340:                                              ; preds = %338, %334
  br label %341

341:                                              ; preds = %340, %328
  ret i32 0
}

declare dso_local i32 @amdgpu_ras_pre_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_xgmi_remove_device(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_amdkfd_device_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_set_pg_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_device_set_cg_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_ucode_free_bo(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_free_static_csa(i32*) #1

declare dso_local i32 @amdgpu_device_wb_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_vram_scratch_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ib_pool_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ras_fini(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_virt_release_full_gpu(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
