; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_compute_mqd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_compute_mqd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.v10_compute_mqd*, %struct.amdgpu_device* }
%struct.v10_compute_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i8*, i8*, i64, i64, i64, i8* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_HQD_EOP_CONTROL = common dso_local global i32 0, align 4
@CP_HQD_EOP_CONTROL = common dso_local global i32 0, align 4
@EOP_SIZE = common dso_local global i32 0, align 4
@GFX10_MEC_HPD_SIZE = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@CP_HQD_PQ_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DOORBELL_OFFSET = common dso_local global i32 0, align 4
@DOORBELL_EN = common dso_local global i32 0, align 4
@DOORBELL_SOURCE = common dso_local global i32 0, align 4
@DOORBELL_HIT = common dso_local global i32 0, align 4
@mmCP_MQD_CONTROL = common dso_local global i32 0, align 4
@CP_MQD_CONTROL = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_CONTROL = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL = common dso_local global i32 0, align 4
@QUEUE_SIZE = common dso_local global i32 0, align 4
@RPTR_BLOCK_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@UNORD_DISPATCH = common dso_local global i32 0, align 4
@TUNNEL_DISPATCH = common dso_local global i32 0, align 4
@PRIV_STATE = common dso_local global i32 0, align 4
@KMD_QUEUE = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@mmCP_HQD_PERSISTENT_STATE = common dso_local global i32 0, align 4
@CP_HQD_PERSISTENT_STATE = common dso_local global i32 0, align 4
@PRELOAD_SIZE = common dso_local global i32 0, align 4
@mmCP_HQD_IB_CONTROL = common dso_local global i32 0, align 4
@CP_HQD_IB_CONTROL = common dso_local global i32 0, align 4
@MIN_IB_AVAIL_SIZE = common dso_local global i32 0, align 4
@ENDIAN_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_compute_mqd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_compute_mqd_init(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.v10_compute_mqd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 10
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %3, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 9
  %14 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %13, align 8
  store %struct.v10_compute_mqd* %14, %struct.v10_compute_mqd** %4, align 8
  %15 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %16 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %15, i32 0, i32 0
  store i32 -1070528512, i32* %16, align 8
  %17 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %18 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %20 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %19, i32 0, i32 2
  store i32 -1, i32* %20, align 8
  %21 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %22 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %21, i32 0, i32 3
  store i32 -1, i32* %22, align 4
  %23 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %24 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %23, i32 0, i32 4
  store i32 -1, i32* %24, align 8
  %25 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %26 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %25, i32 0, i32 5
  store i32 -1, i32* %26, align 4
  %27 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %28 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %27, i32 0, i32 6
  store i32 3, i32* %28, align 8
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %35 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @upper_32_bits(i32 %36)
  %38 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %39 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @GC, align 4
  %41 = load i32, i32* @mmCP_HQD_EOP_CONTROL, align 4
  %42 = call i8* @RREG32_SOC15(i32 %40, i32 0, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* @CP_HQD_EOP_CONTROL, align 4
  %45 = load i32, i32* @EOP_SIZE, align 4
  %46 = load i32, i32* @GFX10_MEC_HPD_SIZE, align 4
  %47 = sdiv i32 %46, 4
  %48 = call i32 @order_base_2(i32 %47)
  %49 = sub nsw i32 %48, 1
  %50 = call i8* @REG_SET_FIELD(i8* %43, i32 %44, i32 %45, i32 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %53 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %52, i32 0, i32 28
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @GC, align 4
  %55 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %56 = call i8* @RREG32_SOC15(i32 %54, i32 0, i32 %55)
  store i8* %56, i8** %8, align 8
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %1
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %64 = load i32, i32* @DOORBELL_OFFSET, align 4
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @REG_SET_FIELD(i8* %62, i32 %63, i32 %64, i32 %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %71 = load i32, i32* @DOORBELL_EN, align 4
  %72 = call i8* @REG_SET_FIELD(i8* %69, i32 %70, i32 %71, i32 1)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %75 = load i32, i32* @DOORBELL_SOURCE, align 4
  %76 = call i8* @REG_SET_FIELD(i8* %73, i32 %74, i32 %75, i32 0)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %79 = load i32, i32* @DOORBELL_HIT, align 4
  %80 = call i8* @REG_SET_FIELD(i8* %77, i32 %78, i32 %79, i32 0)
  store i8* %80, i8** %8, align 8
  br label %86

81:                                               ; preds = %1
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %84 = load i32, i32* @DOORBELL_EN, align 4
  %85 = call i8* @REG_SET_FIELD(i8* %82, i32 %83, i32 %84, i32 0)
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %81, %61
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %89 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %88, i32 0, i32 22
  store i8* %87, i8** %89, align 8
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 7
  store i64 0, i64* %91, align 8
  %92 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %93 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %92, i32 0, i32 27
  store i64 0, i64* %93, align 8
  %94 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %95 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %94, i32 0, i32 21
  store i8* null, i8** %95, align 8
  %96 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %97 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %96, i32 0, i32 26
  store i64 0, i64* %97, align 8
  %98 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %99 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %98, i32 0, i32 25
  store i64 0, i64* %99, align 8
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, -4
  %104 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %105 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 4
  %106 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @upper_32_bits(i32 %108)
  %110 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %111 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @GC, align 4
  %113 = load i32, i32* @mmCP_MQD_CONTROL, align 4
  %114 = call i8* @RREG32_SOC15(i32 %112, i32 0, i32 %113)
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* @CP_MQD_CONTROL, align 4
  %117 = load i32, i32* @VMID, align 4
  %118 = call i8* @REG_SET_FIELD(i8* %115, i32 %116, i32 %117, i32 0)
  store i8* %118, i8** %8, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %121 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %120, i32 0, i32 24
  store i8* %119, i8** %121, align 8
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 8
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %128 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @upper_32_bits(i32 %129)
  %131 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %132 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %131, i32 0, i32 12
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @GC, align 4
  %134 = load i32, i32* @mmCP_HQD_PQ_CONTROL, align 4
  %135 = call i8* @RREG32_SOC15(i32 %133, i32 0, i32 %134)
  store i8* %135, i8** %8, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %138 = load i32, i32* @QUEUE_SIZE, align 4
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 4
  %143 = call i32 @order_base_2(i32 %142)
  %144 = sub nsw i32 %143, 1
  %145 = call i8* @REG_SET_FIELD(i8* %136, i32 %137, i32 %138, i32 %144)
  store i8* %145, i8** %8, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %148 = load i32, i32* @RPTR_BLOCK_SIZE, align 4
  %149 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %150 = sdiv i32 %149, 4
  %151 = call i32 @order_base_2(i32 %150)
  %152 = sub nsw i32 %151, 1
  %153 = shl i32 %152, 8
  %154 = call i8* @REG_SET_FIELD(i8* %146, i32 %147, i32 %148, i32 %153)
  store i8* %154, i8** %8, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %157 = load i32, i32* @UNORD_DISPATCH, align 4
  %158 = call i8* @REG_SET_FIELD(i8* %155, i32 %156, i32 %157, i32 0)
  store i8* %158, i8** %8, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %161 = load i32, i32* @TUNNEL_DISPATCH, align 4
  %162 = call i8* @REG_SET_FIELD(i8* %159, i32 %160, i32 %161, i32 0)
  store i8* %162, i8** %8, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %165 = load i32, i32* @PRIV_STATE, align 4
  %166 = call i8* @REG_SET_FIELD(i8* %163, i32 %164, i32 %165, i32 1)
  store i8* %166, i8** %8, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* @CP_HQD_PQ_CONTROL, align 4
  %169 = load i32, i32* @KMD_QUEUE, align 4
  %170 = call i8* @REG_SET_FIELD(i8* %167, i32 %168, i32 %169, i32 1)
  store i8* %170, i8** %8, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %173 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %172, i32 0, i32 23
  store i8* %171, i8** %173, align 8
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %175 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %180, 4
  %182 = add nsw i32 %177, %181
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = and i32 %183, -4
  %185 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %186 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %185, i32 0, i32 13
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @upper_32_bits(i32 %187)
  %189 = and i32 %188, 65535
  %190 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %191 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %190, i32 0, i32 14
  store i32 %189, i32* %191, align 8
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %197 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %198, 4
  %200 = add nsw i32 %195, %199
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = and i32 %201, -4
  %203 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %204 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %203, i32 0, i32 15
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @upper_32_bits(i32 %205)
  %207 = and i32 %206, 65535
  %208 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %209 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %208, i32 0, i32 16
  store i32 %207, i32* %209, align 8
  store i8* null, i8** %8, align 8
  %210 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %211 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %237

214:                                              ; preds = %86
  %215 = load i32, i32* @GC, align 4
  %216 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %217 = call i8* @RREG32_SOC15(i32 %215, i32 0, i32 %216)
  store i8* %217, i8** %8, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %220 = load i32, i32* @DOORBELL_OFFSET, align 4
  %221 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %222 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @REG_SET_FIELD(i8* %218, i32 %219, i32 %220, i32 %223)
  store i8* %224, i8** %8, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %227 = load i32, i32* @DOORBELL_EN, align 4
  %228 = call i8* @REG_SET_FIELD(i8* %225, i32 %226, i32 %227, i32 1)
  store i8* %228, i8** %8, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %231 = load i32, i32* @DOORBELL_SOURCE, align 4
  %232 = call i8* @REG_SET_FIELD(i8* %229, i32 %230, i32 %231, i32 0)
  store i8* %232, i8** %8, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = load i32, i32* @CP_HQD_PQ_DOORBELL_CONTROL, align 4
  %235 = load i32, i32* @DOORBELL_HIT, align 4
  %236 = call i8* @REG_SET_FIELD(i8* %233, i32 %234, i32 %235, i32 0)
  store i8* %236, i8** %8, align 8
  br label %237

237:                                              ; preds = %214, %86
  %238 = load i8*, i8** %8, align 8
  %239 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %240 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %239, i32 0, i32 22
  store i8* %238, i8** %240, align 8
  %241 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %242 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %241, i32 0, i32 7
  store i64 0, i64* %242, align 8
  %243 = load i32, i32* @GC, align 4
  %244 = load i32, i32* @mmCP_HQD_PQ_RPTR, align 4
  %245 = call i8* @RREG32_SOC15(i32 %243, i32 0, i32 %244)
  %246 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %247 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %246, i32 0, i32 21
  store i8* %245, i8** %247, align 8
  %248 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %249 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %248, i32 0, i32 20
  store i64 0, i64* %249, align 8
  %250 = load i32, i32* @GC, align 4
  %251 = load i32, i32* @mmCP_HQD_PERSISTENT_STATE, align 4
  %252 = call i8* @RREG32_SOC15(i32 %250, i32 0, i32 %251)
  store i8* %252, i8** %8, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = load i32, i32* @CP_HQD_PERSISTENT_STATE, align 4
  %255 = load i32, i32* @PRELOAD_SIZE, align 4
  %256 = call i8* @REG_SET_FIELD(i8* %253, i32 %254, i32 %255, i32 83)
  store i8* %256, i8** %8, align 8
  %257 = load i8*, i8** %8, align 8
  %258 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %259 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %258, i32 0, i32 19
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* @GC, align 4
  %261 = load i32, i32* @mmCP_HQD_IB_CONTROL, align 4
  %262 = call i8* @RREG32_SOC15(i32 %260, i32 0, i32 %261)
  store i8* %262, i8** %8, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = load i32, i32* @CP_HQD_IB_CONTROL, align 4
  %265 = load i32, i32* @MIN_IB_AVAIL_SIZE, align 4
  %266 = call i8* @REG_SET_FIELD(i8* %263, i32 %264, i32 %265, i32 3)
  store i8* %266, i8** %8, align 8
  %267 = load i8*, i8** %8, align 8
  %268 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %269 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %268, i32 0, i32 18
  store i8* %267, i8** %269, align 8
  %270 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %271 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %270, i32 0, i32 17
  store i32 1, i32* %271, align 4
  ret i32 0
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i8* @REG_SET_FIELD(i8*, i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
