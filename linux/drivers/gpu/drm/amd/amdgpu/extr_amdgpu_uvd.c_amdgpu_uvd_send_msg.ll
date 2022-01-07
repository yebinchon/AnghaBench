; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, i32***, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.amdgpu_bo = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { i32, %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32*, i32 }

@UVD_BASE_SI = common dso_local global i32 0, align 4
@__const.amdgpu_uvd_send_msg.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@UVD_HWIP = common dso_local global i64 0, align 8
@UVD_GPCOM_VCPU_DATA0 = common dso_local global i64 0, align 8
@UVD_GPCOM_VCPU_DATA1 = common dso_local global i64 0, align 8
@UVD_GPCOM_VCPU_CMD = common dso_local global i64 0, align 8
@UVD_NO_OP = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@AMDGPU_FENCE_OWNER_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*, %struct.amdgpu_bo*, i32, %struct.dma_fence**)* @amdgpu_uvd_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_send_msg(%struct.amdgpu_ring* %0, %struct.amdgpu_bo* %1, i32 %2, %struct.dma_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.dma_fence*, align 8
  %12 = alloca %struct.amdgpu_job*, align 8
  %13 = alloca %struct.amdgpu_ib*, align 8
  %14 = alloca [4 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca %struct.ttm_operation_ctx, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %6, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dma_fence** %3, %struct.dma_fence*** %9, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %22, align 8
  store %struct.amdgpu_device* %23, %struct.amdgpu_device** %10, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %11, align 8
  store i32 0, i32* %18, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %25 = load i32, i32* @UVD_BASE_SI, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %29 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %28)
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %31 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 1
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %33, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %4
  %40 = bitcast %struct.ttm_operation_ctx* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.amdgpu_uvd_send_msg.ctx to i8*), i64 8, i1 false)
  %41 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %42 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %43 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %41, i32 %42)
  %44 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %45 = call i32 @amdgpu_uvd_force_into_uvd_segment(%struct.amdgpu_bo* %44)
  %46 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %47 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %46, i32 0, i32 0
  %48 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %48, i32 0, i32 1
  %50 = call i64 @ttm_bo_validate(%struct.TYPE_6__* %47, i32* %49, %struct.ttm_operation_ctx* %20)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %270

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %57 = call i64 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device* %56, i32 64, %struct.amdgpu_job** %12)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %270

61:                                               ; preds = %55
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CHIP_VEGA10, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %61
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 1, %70
  store i32 %71, i32* %18, align 4
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = load i32***, i32**** %73, align 8
  %75 = load i64, i64* @UVD_HWIP, align 8
  %76 = getelementptr inbounds i32**, i32*** %74, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 1
  %85 = load i32***, i32**** %84, align 8
  %86 = load i64, i64* @UVD_HWIP, align 8
  %87 = getelementptr inbounds i32**, i32*** %85, i64 %86
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %67, %61
  %95 = load i32, i32* %18, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* @UVD_GPCOM_VCPU_DATA0, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i8* @PACKET0(i64 %101, i32 0)
  %103 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  store i8* %102, i8** %103, align 16
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* @UVD_GPCOM_VCPU_DATA1, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i8* @PACKET0(i64 %110, i32 0)
  %112 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* %18, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* @UVD_GPCOM_VCPU_CMD, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i8* @PACKET0(i64 %119, i32 0)
  %121 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  store i8* %120, i8** %121, align 16
  %122 = load i32, i32* %18, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* @UVD_NO_OP, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i8* @PACKET0(i64 %128, i32 0)
  %130 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  store i8* %129, i8** %130, align 8
  %131 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %132 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %131, i32 0, i32 1
  %133 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %132, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %133, i64 0
  store %struct.amdgpu_ib* %134, %struct.amdgpu_ib** %13, align 8
  %135 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %136 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %135)
  store i32 %136, i32* %15, align 4
  %137 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %138 = load i8*, i8** %137, align 16
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %141 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %146 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %144, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %153 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %15, align 4
  %157 = ashr i32 %156, 32
  %158 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %159 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  store i32 %157, i32* %161, align 4
  %162 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  %163 = load i8*, i8** %162, align 16
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %166 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 4
  store i32 %164, i32* %168, align 4
  %169 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %170 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  store i32 0, i32* %172, align 4
  store i32 6, i32* %17, align 4
  br label %173

173:                                              ; preds = %193, %94
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %174, 16
  br i1 %175, label %176, label %196

176:                                              ; preds = %173
  %177 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %181 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %187 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %176
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %17, align 4
  br label %173

196:                                              ; preds = %173
  %197 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %13, align 8
  %198 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %197, i32 0, i32 1
  store i32 16, i32* %198, align 8
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %226

201:                                              ; preds = %196
  %202 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %203 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @msecs_to_jiffies(i32 10)
  %208 = call i64 @dma_resv_wait_timeout_rcu(i32 %206, i32 1, i32 0, i32 %207)
  store i64 %208, i64* %16, align 8
  %209 = load i64, i64* %16, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i64, i64* @ETIMEDOUT, align 8
  %213 = sub nsw i64 0, %212
  store i64 %213, i64* %16, align 8
  br label %214

214:                                              ; preds = %211, %201
  %215 = load i64, i64* %16, align 8
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %267

218:                                              ; preds = %214
  %219 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %220 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %221 = call i64 @amdgpu_job_submit_direct(%struct.amdgpu_job* %219, %struct.amdgpu_ring* %220, %struct.dma_fence** %11)
  store i64 %221, i64* %16, align 8
  %222 = load i64, i64* %16, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %267

225:                                              ; preds = %218
  br label %251

226:                                              ; preds = %196
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %228 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %229 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %228, i32 0, i32 0
  %230 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %231 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %236 = call i64 @amdgpu_sync_resv(%struct.amdgpu_device* %227, i32* %229, i32 %234, i32 %235, i32 0)
  store i64 %236, i64* %16, align 8
  %237 = load i64, i64* %16, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  br label %267

240:                                              ; preds = %226
  %241 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* @AMDGPU_FENCE_OWNER_UNDEFINED, align 4
  %246 = call i64 @amdgpu_job_submit(%struct.amdgpu_job* %241, i32* %244, i32 %245, %struct.dma_fence** %11)
  store i64 %246, i64* %16, align 8
  %247 = load i64, i64* %16, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %240
  br label %267

250:                                              ; preds = %240
  br label %251

251:                                              ; preds = %250, %225
  %252 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %253 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %254 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %252, %struct.dma_fence* %253, i32 0)
  %255 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %256 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %255)
  %257 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %7)
  %258 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %259 = icmp ne %struct.dma_fence** %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %251
  %261 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %262 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %261)
  %263 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  store %struct.dma_fence* %262, %struct.dma_fence** %263, align 8
  br label %264

264:                                              ; preds = %260, %251
  %265 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %266 = call i32 @dma_fence_put(%struct.dma_fence* %265)
  store i32 0, i32* %5, align 4
  br label %276

267:                                              ; preds = %249, %239, %224, %217
  %268 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %269 = call i32 @amdgpu_job_free(%struct.amdgpu_job* %268)
  br label %270

270:                                              ; preds = %267, %60, %53
  %271 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %272 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %271)
  %273 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %7)
  %274 = load i64, i64* %16, align 8
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %270, %264
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_uvd_force_into_uvd_segment(%struct.amdgpu_bo*) #1

declare dso_local i64 @ttm_bo_validate(%struct.TYPE_6__*, i32*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @amdgpu_job_alloc_with_ib(%struct.amdgpu_device*, i32, %struct.amdgpu_job**) #1

declare dso_local i8* @PACKET0(i64, i32) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @amdgpu_job_submit_direct(%struct.amdgpu_job*, %struct.amdgpu_ring*, %struct.dma_fence**) #1

declare dso_local i64 @amdgpu_sync_resv(%struct.amdgpu_device*, i32*, i32, i32, i32) #1

declare dso_local i64 @amdgpu_job_submit(%struct.amdgpu_job*, i32*, i32, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, %struct.dma_fence*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_job_free(%struct.amdgpu_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
