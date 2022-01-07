; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_init_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_kiq_init_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, %struct.v10_compute_mqd*, %struct.amdgpu_device* }
%struct.v10_compute_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GC = common dso_local global i32 0, align 4
@CP_PQ_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@mmCP_HQD_EOP_BASE_ADDR = common dso_local global i32 0, align 4
@mmCP_HQD_EOP_BASE_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_HQD_EOP_CONTROL = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@mmCP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_LO = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_HI = common dso_local global i32 0, align 4
@mmCP_MQD_BASE_ADDR = common dso_local global i32 0, align 4
@mmCP_MQD_BASE_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_MQD_CONTROL = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_BASE = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_BASE_HI = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_CONTROL = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR_REPORT_ADDR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR_REPORT_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_POLL_ADDR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_MEC_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_MEC_DOORBELL_RANGE_UPPER = common dso_local global i32 0, align 4
@mmCP_HQD_VMID = common dso_local global i32 0, align 4
@mmCP_HQD_PERSISTENT_STATE = common dso_local global i32 0, align 4
@CP_PQ_STATUS = common dso_local global i32 0, align 4
@DOORBELL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_kiq_init_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_kiq_init_register(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.v10_compute_mqd*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 2
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 1
  %11 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %10, align 8
  store %struct.v10_compute_mqd* %11, %struct.v10_compute_mqd** %4, align 8
  %12 = load i32, i32* @GC, align 4
  %13 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %14 = load i32, i32* @EN, align 4
  %15 = call i32 @WREG32_FIELD15(i32 %12, i32 0, i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* @GC, align 4
  %17 = load i32, i32* @mmCP_HQD_EOP_BASE_ADDR, align 4
  %18 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %19 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WREG32_SOC15(i32 %16, i32 0, i32 %17, i32 %20)
  %22 = load i32, i32* @GC, align 4
  %23 = load i32, i32* @mmCP_HQD_EOP_BASE_ADDR_HI, align 4
  %24 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %25 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %26)
  %28 = load i32, i32* @GC, align 4
  %29 = load i32, i32* @mmCP_HQD_EOP_CONTROL, align 4
  %30 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %31 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WREG32_SOC15(i32 %28, i32 0, i32 %29, i32 %32)
  %34 = load i32, i32* @GC, align 4
  %35 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %36 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %37 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WREG32_SOC15(i32 %34, i32 0, i32 %35, i32 %38)
  %40 = load i32, i32* @GC, align 4
  %41 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %42 = call i32 @RREG32_SOC15(i32 %40, i32 0, i32 %41)
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %1
  %46 = load i32, i32* @GC, align 4
  %47 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %48 = call i32 @WREG32_SOC15(i32 %46, i32 0, i32 %47, i32 1)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %64, %45
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32, i32* @GC, align 4
  %57 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %58 = call i32 @RREG32_SOC15(i32 %56, i32 0, i32 %57)
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %67

62:                                               ; preds = %55
  %63 = call i32 @udelay(i32 1)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %49

67:                                               ; preds = %61, %49
  %68 = load i32, i32* @GC, align 4
  %69 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %70 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %71 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @WREG32_SOC15(i32 %68, i32 0, i32 %69, i32 %72)
  %74 = load i32, i32* @GC, align 4
  %75 = load i32, i32* @mmCP_HQD_PQ_RPTR, align 4
  %76 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %77 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @WREG32_SOC15(i32 %74, i32 0, i32 %75, i32 %78)
  %80 = load i32, i32* @GC, align 4
  %81 = load i32, i32* @mmCP_HQD_PQ_WPTR_LO, align 4
  %82 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %83 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @WREG32_SOC15(i32 %80, i32 0, i32 %81, i32 %84)
  %86 = load i32, i32* @GC, align 4
  %87 = load i32, i32* @mmCP_HQD_PQ_WPTR_HI, align 4
  %88 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %89 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WREG32_SOC15(i32 %86, i32 0, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %67, %1
  %93 = load i32, i32* @GC, align 4
  %94 = load i32, i32* @mmCP_MQD_BASE_ADDR, align 4
  %95 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %96 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @WREG32_SOC15(i32 %93, i32 0, i32 %94, i32 %97)
  %99 = load i32, i32* @GC, align 4
  %100 = load i32, i32* @mmCP_MQD_BASE_ADDR_HI, align 4
  %101 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %102 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @WREG32_SOC15(i32 %99, i32 0, i32 %100, i32 %103)
  %105 = load i32, i32* @GC, align 4
  %106 = load i32, i32* @mmCP_MQD_CONTROL, align 4
  %107 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %108 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @WREG32_SOC15(i32 %105, i32 0, i32 %106, i32 %109)
  %111 = load i32, i32* @GC, align 4
  %112 = load i32, i32* @mmCP_HQD_PQ_BASE, align 4
  %113 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %114 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @WREG32_SOC15(i32 %111, i32 0, i32 %112, i32 %115)
  %117 = load i32, i32* @GC, align 4
  %118 = load i32, i32* @mmCP_HQD_PQ_BASE_HI, align 4
  %119 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %120 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @WREG32_SOC15(i32 %117, i32 0, i32 %118, i32 %121)
  %123 = load i32, i32* @GC, align 4
  %124 = load i32, i32* @mmCP_HQD_PQ_CONTROL, align 4
  %125 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %126 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @WREG32_SOC15(i32 %123, i32 0, i32 %124, i32 %127)
  %129 = load i32, i32* @GC, align 4
  %130 = load i32, i32* @mmCP_HQD_PQ_RPTR_REPORT_ADDR, align 4
  %131 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %132 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @WREG32_SOC15(i32 %129, i32 0, i32 %130, i32 %133)
  %135 = load i32, i32* @GC, align 4
  %136 = load i32, i32* @mmCP_HQD_PQ_RPTR_REPORT_ADDR_HI, align 4
  %137 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %138 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %137, i32 0, i32 15
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @WREG32_SOC15(i32 %135, i32 0, i32 %136, i32 %139)
  %141 = load i32, i32* @GC, align 4
  %142 = load i32, i32* @mmCP_HQD_PQ_WPTR_POLL_ADDR, align 4
  %143 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %144 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %143, i32 0, i32 16
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @WREG32_SOC15(i32 %141, i32 0, i32 %142, i32 %145)
  %147 = load i32, i32* @GC, align 4
  %148 = load i32, i32* @mmCP_HQD_PQ_WPTR_POLL_ADDR_HI, align 4
  %149 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %150 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %149, i32 0, i32 17
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @WREG32_SOC15(i32 %147, i32 0, i32 %148, i32 %151)
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %154 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %92
  %158 = load i32, i32* @GC, align 4
  %159 = load i32, i32* @mmCP_MEC_DOORBELL_RANGE_LOWER, align 4
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %161 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 2
  %165 = shl i32 %164, 2
  %166 = call i32 @WREG32_SOC15(i32 %158, i32 0, i32 %159, i32 %165)
  %167 = load i32, i32* @GC, align 4
  %168 = load i32, i32* @mmCP_MEC_DOORBELL_RANGE_UPPER, align 4
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %172, 2
  %174 = shl i32 %173, 2
  %175 = call i32 @WREG32_SOC15(i32 %167, i32 0, i32 %168, i32 %174)
  br label %176

176:                                              ; preds = %157, %92
  %177 = load i32, i32* @GC, align 4
  %178 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %179 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %180 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @WREG32_SOC15(i32 %177, i32 0, i32 %178, i32 %181)
  %183 = load i32, i32* @GC, align 4
  %184 = load i32, i32* @mmCP_HQD_PQ_WPTR_LO, align 4
  %185 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %186 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @WREG32_SOC15(i32 %183, i32 0, i32 %184, i32 %187)
  %189 = load i32, i32* @GC, align 4
  %190 = load i32, i32* @mmCP_HQD_PQ_WPTR_HI, align 4
  %191 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %192 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @WREG32_SOC15(i32 %189, i32 0, i32 %190, i32 %193)
  %195 = load i32, i32* @GC, align 4
  %196 = load i32, i32* @mmCP_HQD_VMID, align 4
  %197 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %198 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %197, i32 0, i32 18
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @WREG32_SOC15(i32 %195, i32 0, i32 %196, i32 %199)
  %201 = load i32, i32* @GC, align 4
  %202 = load i32, i32* @mmCP_HQD_PERSISTENT_STATE, align 4
  %203 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %204 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %203, i32 0, i32 19
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @WREG32_SOC15(i32 %201, i32 0, i32 %202, i32 %205)
  %207 = load i32, i32* @GC, align 4
  %208 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %209 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %4, align 8
  %210 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %209, i32 0, i32 20
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @WREG32_SOC15(i32 %207, i32 0, i32 %208, i32 %211)
  %213 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %214 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %176
  %218 = load i32, i32* @GC, align 4
  %219 = load i32, i32* @CP_PQ_STATUS, align 4
  %220 = load i32, i32* @DOORBELL_ENABLE, align 4
  %221 = call i32 @WREG32_FIELD15(i32 %218, i32 0, i32 %219, i32 %220, i32 1)
  br label %222

222:                                              ; preds = %217, %176
  ret i32 0
}

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
