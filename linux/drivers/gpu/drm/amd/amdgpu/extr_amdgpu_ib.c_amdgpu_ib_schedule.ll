; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ib.c_amdgpu_ib_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ib.c_amdgpu_ib_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.amdgpu_device* }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32 (%struct.amdgpu_ring*)*, i32, i64, i64, i64, i64, i32 (%struct.amdgpu_ring*)*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.amdgpu_device = type { i32, i32 }
%struct.amdgpu_ib = type { i32 }
%struct.amdgpu_job = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.amdgpu_vm* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_vm = type { i32 }
%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't schedule ib on ring <%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"VM IB without ID\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"scheduling IB failed (%d).\0A\00", align 1
@AMDGPU_HAVE_CTX_SWITCH = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_PREAMBLE = common dso_local global i32 0, align 4
@AMDGPU_PREAMBLE_IB_PRESENT_FIRST = common dso_local global i32 0, align 4
@amdgpu_mcbp = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_TC_WB_NOT_INVALIDATE = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_TC_WB_ONLY = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to emit fence (%d)\0A\00", align 1
@AMD_IS_APU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ib_schedule(%struct.amdgpu_ring* %0, i32 %1, %struct.amdgpu_ib* %2, %struct.amdgpu_job* %3, %struct.dma_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_ib*, align 8
  %10 = alloca %struct.amdgpu_job*, align 8
  %11 = alloca %struct.dma_fence**, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.amdgpu_ib*, align 8
  %14 = alloca %struct.dma_fence*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.amdgpu_vm*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %9, align 8
  store %struct.amdgpu_job* %3, %struct.amdgpu_job** %10, align 8
  store %struct.dma_fence** %4, %struct.dma_fence*** %11, align 8
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %27, align 8
  store %struct.amdgpu_device* %28, %struct.amdgpu_device** %12, align 8
  %29 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %29, i64 0
  store %struct.amdgpu_ib* %30, %struct.amdgpu_ib** %13, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %14, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %426

36:                                               ; preds = %5
  %37 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %38 = icmp ne %struct.amdgpu_job* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %41 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %40, i32 0, i32 7
  %42 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %41, align 8
  store %struct.amdgpu_vm* %42, %struct.amdgpu_vm** %18, align 8
  %43 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %44 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %50 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %57

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %48
  %58 = phi i32 [ %55, %48 ], [ 0, %56 ]
  store i32 %58, i32* %19, align 4
  br label %60

59:                                               ; preds = %36
  store %struct.amdgpu_vm* null, %struct.amdgpu_vm** %18, align 8
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %426

76:                                               ; preds = %60
  %77 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %18, align 8
  %78 = icmp ne %struct.amdgpu_vm* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %81 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %426

91:                                               ; preds = %79, %76
  %92 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %99 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul i32 %97, %102
  %104 = add i32 %96, %103
  store i32 %104, i32* %21, align 4
  %105 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %106 = load i32, i32* %21, align 4
  %107 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %105, i32 %106)
  store i32 %107, i32* %24, align 4
  %108 = load i32, i32* %24, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %91
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %24, align 4
  store i32 %116, i32* %6, align 4
  br label %426

117:                                              ; preds = %91
  %118 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %119 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %16, align 4
  %124 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %125 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %117
  %131 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %132 = icmp ne %struct.amdgpu_job* %131, null
  br i1 %132, label %133, label %160

133:                                              ; preds = %130
  %134 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %135 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %134, i32 0, i32 5
  %136 = call %struct.dma_fence* @amdgpu_sync_get_fence(i32* %135, i32* null)
  store %struct.dma_fence* %136, %struct.dma_fence** %14, align 8
  %137 = icmp ne %struct.dma_fence* %136, null
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %140 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %142, %138
  %146 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %147 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %148 = call i64 @amdgpu_vm_need_pipeline_sync(%struct.amdgpu_ring* %146, %struct.amdgpu_job* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145, %142, %133
  store i32 1, i32* %25, align 4
  %151 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %152 = icmp ne %struct.dma_fence* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %155 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %156 = call i32 @trace_amdgpu_ib_pipe_sync(%struct.amdgpu_job* %154, %struct.dma_fence* %155)
  br label %157

157:                                              ; preds = %153, %150
  %158 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %159 = call i32 @dma_fence_put(%struct.dma_fence* %158)
  br label %160

160:                                              ; preds = %157, %145, %130, %117
  %161 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %162 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 10
  %165 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %164, align 8
  %166 = icmp ne i32 (%struct.amdgpu_ring*)* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %160
  %168 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %169 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %168, i32 0, i32 1
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 10
  %172 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %171, align 8
  %173 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %174 = call i32 %172(%struct.amdgpu_ring* %173)
  br label %175

175:                                              ; preds = %167, %160
  %176 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %177 = icmp ne %struct.amdgpu_job* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %180 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %181 = load i32, i32* %25, align 4
  %182 = call i32 @amdgpu_vm_flush(%struct.amdgpu_ring* %179, %struct.amdgpu_job* %180, i32 %181)
  store i32 %182, i32* %24, align 4
  %183 = load i32, i32* %24, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %187 = call i32 @amdgpu_ring_undo(%struct.amdgpu_ring* %186)
  %188 = load i32, i32* %24, align 4
  store i32 %188, i32* %6, align 4
  br label %426

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %175
  %191 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %192 = icmp ne %struct.amdgpu_job* %191, null
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %195 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %202 = call i32 @amdgpu_ring_init_cond_exec(%struct.amdgpu_ring* %201)
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %200, %193, %190
  %204 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %205 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 8
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %212 = call i32 @amdgpu_ring_emit_hdp_flush(%struct.amdgpu_ring* %211)
  br label %217

213:                                              ; preds = %203
  %214 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %215 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %216 = call i32 @amdgpu_asic_flush_hdp(%struct.amdgpu_device* %214, %struct.amdgpu_ring* %215)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* @AMDGPU_HAVE_CTX_SWITCH, align 4
  %222 = load i32, i32* %20, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %220, %217
  %225 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %226 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %19, align 4
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %15, align 4
  %231 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %232 = icmp ne %struct.amdgpu_job* %231, null
  br i1 %232, label %233, label %254

233:                                              ; preds = %224
  %234 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %235 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %234, i32 0, i32 1
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %233
  %241 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %242 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %20, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %20, align 4
  %246 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %247 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %20, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %20, align 4
  %251 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %252 = load i32, i32* %20, align 4
  %253 = call i32 @amdgpu_ring_emit_cntxcntl(%struct.amdgpu_ring* %251, i32 %252)
  br label %254

254:                                              ; preds = %240, %233, %224
  store i32 0, i32* %23, align 4
  br label %255

255:                                              ; preds = %296, %254
  %256 = load i32, i32* %23, align 4
  %257 = load i32, i32* %8, align 4
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %259, label %299

259:                                              ; preds = %255
  %260 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %9, align 8
  %261 = load i32, i32* %23, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %260, i64 %262
  store %struct.amdgpu_ib* %263, %struct.amdgpu_ib** %13, align 8
  %264 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %265 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @AMDGPU_IB_FLAG_PREAMBLE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %286

270:                                              ; preds = %259
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %270
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* @AMDGPU_PREAMBLE_IB_PRESENT_FIRST, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %273
  %279 = load i32, i32* @amdgpu_mcbp, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %278
  %282 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %283 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  br label %296

286:                                              ; preds = %281, %278, %273, %270, %259
  %287 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %288 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %289 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %290 = load i32, i32* %20, align 4
  %291 = call i32 @amdgpu_ring_emit_ib(%struct.amdgpu_ring* %287, %struct.amdgpu_job* %288, %struct.amdgpu_ib* %289, i32 %290)
  %292 = load i32, i32* @AMDGPU_HAVE_CTX_SWITCH, align 4
  %293 = xor i32 %292, -1
  %294 = load i32, i32* %20, align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* %20, align 4
  br label %296

296:                                              ; preds = %286, %285
  %297 = load i32, i32* %23, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %23, align 4
  br label %255

299:                                              ; preds = %255
  %300 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %301 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %300, i32 0, i32 1
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %299
  %307 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %308 = call i32 @amdgpu_ring_emit_tmz(%struct.amdgpu_ring* %307, i32 0)
  br label %309

309:                                              ; preds = %306, %299
  %310 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %311 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %312 = call i32 @amdgpu_asic_invalidate_hdp(%struct.amdgpu_device* %310, %struct.amdgpu_ring* %311)
  %313 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %314 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @AMDGPU_IB_FLAG_TC_WB_NOT_INVALIDATE, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %309
  %320 = load i32, i32* @AMDGPU_FENCE_FLAG_TC_WB_ONLY, align 4
  %321 = load i32, i32* %22, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %22, align 4
  br label %323

323:                                              ; preds = %319, %309
  %324 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %325 = icmp ne %struct.amdgpu_job* %324, null
  br i1 %325, label %326, label %343

326:                                              ; preds = %323
  %327 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %328 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %326
  %332 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %333 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %334 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %337 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %22, align 4
  %340 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %341 = or i32 %339, %340
  %342 = call i32 @amdgpu_ring_emit_fence(%struct.amdgpu_ring* %332, i32 %335, i32 %338, i32 %341)
  br label %343

343:                                              ; preds = %331, %326, %323
  %344 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %345 = load %struct.dma_fence**, %struct.dma_fence*** %11, align 8
  %346 = load i32, i32* %22, align 4
  %347 = call i32 @amdgpu_fence_emit(%struct.amdgpu_ring* %344, %struct.dma_fence** %345, i32 %346)
  store i32 %347, i32* %24, align 4
  %348 = load i32, i32* %24, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %378

350:                                              ; preds = %343
  %351 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %352 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %24, align 4
  %355 = call i32 (i32, i8*, ...) @dev_err(i32 %353, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %354)
  %356 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %357 = icmp ne %struct.amdgpu_job* %356, null
  br i1 %357, label %358, label %374

358:                                              ; preds = %350
  %359 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %360 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %374

363:                                              ; preds = %358
  %364 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %365 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %366 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %365, i32 0, i32 1
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %371 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @amdgpu_vmid_reset(%struct.amdgpu_device* %364, i32 %369, i32 %372)
  br label %374

374:                                              ; preds = %363, %358, %350
  %375 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %376 = call i32 @amdgpu_ring_undo(%struct.amdgpu_ring* %375)
  %377 = load i32, i32* %24, align 4
  store i32 %377, i32* %6, align 4
  br label %426

378:                                              ; preds = %343
  %379 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %380 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %379, i32 0, i32 1
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 4
  %383 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %382, align 8
  %384 = icmp ne i32 (%struct.amdgpu_ring*)* %383, null
  br i1 %384, label %385, label %393

385:                                              ; preds = %378
  %386 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %387 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %386, i32 0, i32 1
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 4
  %390 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %389, align 8
  %391 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %392 = call i32 %390(%struct.amdgpu_ring* %391)
  br label %393

393:                                              ; preds = %385, %378
  %394 = load i32, i32* %17, align 4
  %395 = icmp ne i32 %394, -1
  br i1 %395, label %396, label %407

396:                                              ; preds = %393
  %397 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %398 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %397, i32 0, i32 1
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 3
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %396
  %404 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %405 = load i32, i32* %17, align 4
  %406 = call i32 @amdgpu_ring_patch_cond_exec(%struct.amdgpu_ring* %404, i32 %405)
  br label %407

407:                                              ; preds = %403, %396, %393
  %408 = load i32, i32* %19, align 4
  %409 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %410 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %409, i32 0, i32 2
  store i32 %408, i32* %410, align 8
  %411 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %18, align 8
  %412 = icmp ne %struct.amdgpu_vm* %411, null
  br i1 %412, label %413, label %423

413:                                              ; preds = %407
  %414 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %415 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %414, i32 0, i32 1
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %413
  %421 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %422 = call i32 @amdgpu_ring_emit_switch_buffer(%struct.amdgpu_ring* %421)
  br label %423

423:                                              ; preds = %420, %413, %407
  %424 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %425 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %424)
  store i32 0, i32* %6, align 4
  br label %426

426:                                              ; preds = %423, %374, %185, %110, %84, %66, %33
  %427 = load i32, i32* %6, align 4
  ret i32 %427
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local %struct.dma_fence* @amdgpu_sync_get_fence(i32*, i32*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_vm_need_pipeline_sync(%struct.amdgpu_ring*, %struct.amdgpu_job*) #1

declare dso_local i32 @trace_amdgpu_ib_pipe_sync(%struct.amdgpu_job*, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_vm_flush(%struct.amdgpu_ring*, %struct.amdgpu_job*, i32) #1

declare dso_local i32 @amdgpu_ring_undo(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_init_cond_exec(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_emit_hdp_flush(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_asic_flush_hdp(%struct.amdgpu_device*, %struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_emit_cntxcntl(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_ib(%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_tmz(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_asic_invalidate_hdp(%struct.amdgpu_device*, %struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_emit_fence(%struct.amdgpu_ring*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_fence_emit(%struct.amdgpu_ring*, %struct.dma_fence**, i32) #1

declare dso_local i32 @amdgpu_vmid_reset(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_ring_patch_cond_exec(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_switch_buffer(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
