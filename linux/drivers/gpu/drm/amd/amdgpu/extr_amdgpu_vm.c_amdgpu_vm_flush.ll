; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_8__*, %struct.amdgpu_device* }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.amdgpu_vmid_mgr* }
%struct.amdgpu_vmid_mgr = type { i32, %struct.amdgpu_vmid* }
%struct.amdgpu_vmid = type { i64, i64, i64, i64, i64, i64, i64, %struct.dma_fence*, i32, %struct.dma_fence* }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i64 }

@AMDGPU_BO_INVALID_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_flush(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_vmid_mgr*, align 8
  %11 = alloca %struct.amdgpu_vmid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_fence*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %8, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %29, i64 %31
  store %struct.amdgpu_vmid_mgr* %32, %struct.amdgpu_vmid_mgr** %10, align 8
  %33 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %10, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %33, i32 0, i32 1
  %35 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %34, align 8
  %36 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %37 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %35, i64 %38
  store %struct.amdgpu_vmid* %39, %struct.amdgpu_vmid** %11, align 8
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %3
  %47 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %48 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %51 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %94, label %54

54:                                               ; preds = %46
  %55 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %56 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %59 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %94, label %62

62:                                               ; preds = %54
  %63 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %64 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %94, label %70

70:                                               ; preds = %62
  %71 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %72 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %94, label %78

78:                                               ; preds = %70
  %79 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %80 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %88 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %91 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br label %94

94:                                               ; preds = %86, %78, %70, %62, %54, %46
  %95 = phi i1 [ true, %78 ], [ true, %70 ], [ true, %62 ], [ true, %54 ], [ true, %46 ], [ %93, %86 ]
  br label %96

96:                                               ; preds = %94, %3
  %97 = phi i1 [ false, %3 ], [ %95, %94 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %12, align 4
  %99 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %100 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %13, align 4
  %102 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %103 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %106 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %96
  %110 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %111 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %110, i32 0, i32 7
  %112 = load %struct.dma_fence*, %struct.dma_fence** %111, align 8
  %113 = icmp ne %struct.dma_fence* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %116 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %115, i32 0, i32 7
  %117 = load %struct.dma_fence*, %struct.dma_fence** %116, align 8
  %118 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %114, %109, %96
  %122 = phi i1 [ true, %109 ], [ true, %96 ], [ %120, %114 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %14, align 4
  store %struct.dma_fence* null, %struct.dma_fence** %15, align 8
  store i32 0, i32* %16, align 4
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %125 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %126 = call i64 @amdgpu_vmid_had_gpu_reset(%struct.amdgpu_device* %124, %struct.amdgpu_vmid* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %121
  %130 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %131 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = xor i1 %135, true
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %142 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %129
  %148 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %149 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AMDGPU_BO_INVALID_OFFSET, align 8
  %152 = icmp ne i64 %150, %151
  br label %153

153:                                              ; preds = %147, %129
  %154 = phi i1 [ false, %129 ], [ %152, %147 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %13, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %153
  %166 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %167 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br label %172

172:                                              ; preds = %165, %153
  %173 = phi i1 [ false, %153 ], [ %171, %165 ]
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %14, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %380

186:                                              ; preds = %182, %179, %172
  %187 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %188 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %195 = call i32 @amdgpu_ring_init_cond_exec(%struct.amdgpu_ring* %194)
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %193, %186
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %201 = call i32 @amdgpu_ring_emit_pipeline_sync(%struct.amdgpu_ring* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %202
  %206 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %207 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %208 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %211 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @trace_amdgpu_vm_flush(%struct.amdgpu_ring* %206, i64 %209, i64 %212)
  %214 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %215 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %216 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %219 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %218, i32 0, i32 9
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @amdgpu_ring_emit_vm_flush(%struct.amdgpu_ring* %214, i64 %217, i64 %220)
  br label %222

222:                                              ; preds = %205, %202
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %227 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %228 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %231 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @amdgpu_gmc_emit_pasid_mapping(%struct.amdgpu_ring* %226, i64 %229, i64 %232)
  br label %234

234:                                              ; preds = %225, %222
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %237, %234
  %241 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %242 = call i32 @amdgpu_fence_emit(%struct.amdgpu_ring* %241, %struct.dma_fence** %15, i32 0)
  store i32 %242, i32* %17, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = load i32, i32* %17, align 4
  store i32 %246, i32* %4, align 4
  br label %380

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %237
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %272

251:                                              ; preds = %248
  %252 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %10, align 8
  %253 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %252, i32 0, i32 0
  %254 = call i32 @mutex_lock(i32* %253)
  %255 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %256 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %255, i32 0, i32 9
  %257 = load %struct.dma_fence*, %struct.dma_fence** %256, align 8
  %258 = call i32 @dma_fence_put(%struct.dma_fence* %257)
  %259 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %260 = call i8* @dma_fence_get(%struct.dma_fence* %259)
  %261 = bitcast i8* %260 to %struct.dma_fence*
  %262 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %263 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %262, i32 0, i32 9
  store %struct.dma_fence* %261, %struct.dma_fence** %263, align 8
  %264 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %265 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %264, i32 0, i32 0
  %266 = call i32 @atomic_read(i32* %265)
  %267 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %268 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %267, i32 0, i32 8
  store i32 %266, i32* %268, align 8
  %269 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %10, align 8
  %270 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %269, i32 0, i32 0
  %271 = call i32 @mutex_unlock(i32* %270)
  br label %272

272:                                              ; preds = %251, %248
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %277 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %276, i32 0, i32 8
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %280 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %279, i32 0, i32 6
  store i64 %278, i64* %280, align 8
  %281 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %282 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %281, i32 0, i32 7
  %283 = load %struct.dma_fence*, %struct.dma_fence** %282, align 8
  %284 = call i32 @dma_fence_put(%struct.dma_fence* %283)
  %285 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %286 = call i8* @dma_fence_get(%struct.dma_fence* %285)
  %287 = bitcast i8* %286 to %struct.dma_fence*
  %288 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %289 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %288, i32 0, i32 7
  store %struct.dma_fence* %287, %struct.dma_fence** %289, align 8
  br label %290

290:                                              ; preds = %275, %272
  %291 = load %struct.dma_fence*, %struct.dma_fence** %15, align 8
  %292 = call i32 @dma_fence_put(%struct.dma_fence* %291)
  %293 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %294 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %293, i32 0, i32 0
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %356

299:                                              ; preds = %290
  %300 = load i32, i32* %12, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %356

302:                                              ; preds = %299
  %303 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %304 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %307 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  %308 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %309 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %312 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %311, i32 0, i32 1
  store i64 %310, i64* %312, align 8
  %313 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %314 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %317 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %316, i32 0, i32 2
  store i64 %315, i64* %317, align 8
  %318 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %319 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %322 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %321, i32 0, i32 3
  store i64 %320, i64* %322, align 8
  %323 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %324 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %323, i32 0, i32 5
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %327 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %326, i32 0, i32 4
  store i64 %325, i64* %327, align 8
  %328 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %329 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %328, i32 0, i32 6
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %11, align 8
  %332 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %331, i32 0, i32 5
  store i64 %330, i64* %332, align 8
  %333 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %334 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %335 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %338 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %341 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %344 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %347 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %346, i32 0, i32 4
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %350 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %349, i32 0, i32 5
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %353 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @amdgpu_ring_emit_gds_switch(%struct.amdgpu_ring* %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351, i64 %354)
  br label %356

356:                                              ; preds = %302, %299, %290
  %357 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %358 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %357, i32 0, i32 0
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %356
  %364 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %365 = load i32, i32* %16, align 4
  %366 = call i32 @amdgpu_ring_patch_cond_exec(%struct.amdgpu_ring* %364, i32 %365)
  br label %367

367:                                              ; preds = %363, %356
  %368 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %369 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %368, i32 0, i32 0
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %367
  %375 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %376 = call i32 @amdgpu_ring_emit_switch_buffer(%struct.amdgpu_ring* %375)
  %377 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %378 = call i32 @amdgpu_ring_emit_switch_buffer(%struct.amdgpu_ring* %377)
  br label %379

379:                                              ; preds = %374, %367
  store i32 0, i32* %4, align 4
  br label %380

380:                                              ; preds = %379, %245, %185
  %381 = load i32, i32* %4, align 4
  ret i32 %381
}

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i64 @amdgpu_vmid_had_gpu_reset(%struct.amdgpu_device*, %struct.amdgpu_vmid*) #1

declare dso_local i32 @amdgpu_ring_init_cond_exec(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_emit_pipeline_sync(%struct.amdgpu_ring*) #1

declare dso_local i32 @trace_amdgpu_vm_flush(%struct.amdgpu_ring*, i64, i64) #1

declare dso_local i32 @amdgpu_ring_emit_vm_flush(%struct.amdgpu_ring*, i64, i64) #1

declare dso_local i32 @amdgpu_gmc_emit_pasid_mapping(%struct.amdgpu_ring*, i64, i64) #1

declare dso_local i32 @amdgpu_fence_emit(%struct.amdgpu_ring*, %struct.dma_fence**, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i8* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_ring_emit_gds_switch(%struct.amdgpu_ring*, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @amdgpu_ring_patch_cond_exec(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_emit_switch_buffer(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
