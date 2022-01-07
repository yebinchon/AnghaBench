; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@UVD_STATUS__UVD_BUSY = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__MASK_MC_URGENT_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_MPC_CNTL = common dso_local global i32 0, align 4
@UVD_MPC_CNTL__REPLACEMENT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA0 = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXA0__VARA_1__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXA0__VARA_2__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXA0__VARA_3__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXA0__VARA_4__SHIFT = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB0 = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXB0__VARB_1__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXB0__VARB_2__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXB0__VARB_3__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUXB0__VARB_4__SHIFT = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUX = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUX__SET_0__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUX__SET_1__SHIFT = common dso_local global i32 0, align 4
@UVD_MPC_SET_MUX__SET_2__SHIFT = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__STALL_ARB_UMC_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"VCN decode not responding, trying to reset the VCPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"VCN decode not responding, giving up!!!\0A\00", align 1
@UVD_STATUS__VCPU_REPORT__SHIFT = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_VMID = common dso_local global i32 0, align 4
@UVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@RB_NO_FETCH = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@RB_RPTR_WR_EN = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR2 = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO2 = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI2 = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v2_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %4, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = call i32 @amdgpu_dpm_enable_uvd(%struct.amdgpu_device* %23, i32 1)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vcn_v2_0_start_dpg_mode(%struct.amdgpu_device* %33, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %2, align 4
  br label %385

43:                                               ; preds = %32
  br label %381

44:                                               ; preds = %25
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = call i32 @vcn_v2_0_disable_static_power_gating(%struct.amdgpu_device* %45)
  %47 = load i32, i32* @UVD, align 4
  %48 = load i32, i32* @mmUVD_STATUS, align 4
  %49 = call i32 @RREG32_SOC15(i32 %47, i32 0, i32 %48)
  %50 = load i32, i32* @UVD_STATUS__UVD_BUSY, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @UVD, align 4
  %53 = load i32, i32* @mmUVD_STATUS, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WREG32_SOC15(i32 %52, i32 0, i32 %53, i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = call i32 @vcn_v2_0_disable_clock_gating(%struct.amdgpu_device* %56)
  %58 = load i32, i32* @UVD, align 4
  %59 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %60 = call i32 @SOC15_REG_OFFSET(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %62 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @WREG32_P(i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* @UVD, align 4
  %66 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  %68 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = call i32 @WREG32_P(i32 %67, i32 0, i32 %69)
  %71 = load i32, i32* @UVD, align 4
  %72 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %73 = call i32 @RREG32_SOC15(i32 %71, i32 0, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @UVD, align 4
  %75 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @UVD_LMI_CTRL__MASK_MC_URGENT_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @WREG32_SOC15(i32 %74, i32 0, i32 %75, i32 %84)
  %86 = load i32, i32* @UVD, align 4
  %87 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %88 = call i32 @RREG32_SOC15(i32 %86, i32 0, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT, align 4
  %94 = shl i32 2, %93
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @VCN, align 4
  %98 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @WREG32_SOC15(i32 %97, i32 0, i32 %98, i32 %99)
  %101 = load i32, i32* @UVD, align 4
  %102 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %103 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_1__SHIFT, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_2__SHIFT, align 4
  %106 = shl i32 2, %105
  %107 = or i32 %104, %106
  %108 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_3__SHIFT, align 4
  %109 = shl i32 3, %108
  %110 = or i32 %107, %109
  %111 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_4__SHIFT, align 4
  %112 = shl i32 4, %111
  %113 = or i32 %110, %112
  %114 = call i32 @WREG32_SOC15(i32 %101, i32 0, i32 %102, i32 %113)
  %115 = load i32, i32* @UVD, align 4
  %116 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %117 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_1__SHIFT, align 4
  %118 = shl i32 1, %117
  %119 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_2__SHIFT, align 4
  %120 = shl i32 2, %119
  %121 = or i32 %118, %120
  %122 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_3__SHIFT, align 4
  %123 = shl i32 3, %122
  %124 = or i32 %121, %123
  %125 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_4__SHIFT, align 4
  %126 = shl i32 4, %125
  %127 = or i32 %124, %126
  %128 = call i32 @WREG32_SOC15(i32 %115, i32 0, i32 %116, i32 %127)
  %129 = load i32, i32* @UVD, align 4
  %130 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %131 = load i32, i32* @UVD_MPC_SET_MUX__SET_0__SHIFT, align 4
  %132 = shl i32 0, %131
  %133 = load i32, i32* @UVD_MPC_SET_MUX__SET_1__SHIFT, align 4
  %134 = shl i32 1, %133
  %135 = or i32 %132, %134
  %136 = load i32, i32* @UVD_MPC_SET_MUX__SET_2__SHIFT, align 4
  %137 = shl i32 2, %136
  %138 = or i32 %135, %137
  %139 = call i32 @WREG32_SOC15(i32 %129, i32 0, i32 %130, i32 %138)
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %141 = call i32 @vcn_v2_0_mc_resume(%struct.amdgpu_device* %140)
  %142 = load i32, i32* @UVD, align 4
  %143 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %144 = call i32 @SOC15_REG_OFFSET(i32 %142, i32 0, i32 %143)
  %145 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = call i32 @WREG32_P(i32 %144, i32 0, i32 %146)
  %148 = load i32, i32* @UVD, align 4
  %149 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %150 = call i32 @SOC15_REG_OFFSET(i32 %148, i32 0, i32 %149)
  %151 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = call i32 @WREG32_P(i32 %150, i32 0, i32 %152)
  %154 = load i32, i32* @VCN, align 4
  %155 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %156 = call i32 @RREG32_SOC15(i32 %154, i32 0, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %6, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* @VCN, align 4
  %166 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @WREG32_SOC15(i32 %165, i32 0, i32 %166, i32 %167)
  store i32 0, i32* %7, align 4
  %169 = load i32, i32* @UVD, align 4
  %170 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @WREG32_SOC15(i32 %169, i32 0, i32 %170, i32 %171)
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %215, %44
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 10
  br i1 %175, label %176, label %218

176:                                              ; preds = %173
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %190, %176
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 100
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load i32, i32* @UVD, align 4
  %182 = load i32, i32* @mmUVD_STATUS, align 4
  %183 = call i32 @RREG32_SOC15(i32 %181, i32 0, i32 %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = and i32 %184, 2
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %193

188:                                              ; preds = %180
  %189 = call i32 @mdelay(i32 10)
  br label %190

190:                                              ; preds = %188
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %177

193:                                              ; preds = %187, %177
  store i32 0, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = and i32 %194, 2
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %218

198:                                              ; preds = %193
  %199 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %200 = load i32, i32* @UVD, align 4
  %201 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %202 = call i32 @SOC15_REG_OFFSET(i32 %200, i32 0, i32 %201)
  %203 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %204 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %205 = xor i32 %204, -1
  %206 = call i32 @WREG32_P(i32 %202, i32 %203, i32 %205)
  %207 = call i32 @mdelay(i32 10)
  %208 = load i32, i32* @UVD, align 4
  %209 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %210 = call i32 @SOC15_REG_OFFSET(i32 %208, i32 0, i32 %209)
  %211 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %212 = xor i32 %211, -1
  %213 = call i32 @WREG32_P(i32 %210, i32 0, i32 %212)
  %214 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %10, align 4
  br label %215

215:                                              ; preds = %198
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  br label %173

218:                                              ; preds = %197, %173
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %2, align 4
  br label %385

224:                                              ; preds = %218
  %225 = load i32, i32* @UVD, align 4
  %226 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %227 = call i32 @SOC15_REG_OFFSET(i32 %225, i32 0, i32 %226)
  %228 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %229 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %230 = xor i32 %229, -1
  %231 = call i32 @WREG32_P(i32 %227, i32 %228, i32 %230)
  %232 = load i32, i32* @UVD, align 4
  %233 = load i32, i32* @mmUVD_STATUS, align 4
  %234 = call i32 @SOC15_REG_OFFSET(i32 %232, i32 0, i32 %233)
  %235 = load i32, i32* @UVD_STATUS__VCPU_REPORT__SHIFT, align 4
  %236 = shl i32 2, %235
  %237 = xor i32 %236, -1
  %238 = call i32 @WREG32_P(i32 %234, i32 0, i32 %237)
  %239 = load i32, i32* @UVD, align 4
  %240 = load i32, i32* @mmUVD_LMI_RBC_RB_VMID, align 4
  %241 = call i32 @WREG32_SOC15(i32 %239, i32 0, i32 %240, i32 0)
  %242 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %243 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @order_base_2(i32 %244)
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %247 = load i32, i32* @RB_BUFSZ, align 4
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @REG_SET_FIELD(i32 0, i32 %246, i32 %247, i32 %248)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %252 = load i32, i32* @RB_BLKSZ, align 4
  %253 = call i32 @REG_SET_FIELD(i32 %250, i32 %251, i32 %252, i32 1)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %256 = load i32, i32* @RB_NO_FETCH, align 4
  %257 = call i32 @REG_SET_FIELD(i32 %254, i32 %255, i32 %256, i32 1)
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %260 = load i32, i32* @RB_NO_UPDATE, align 4
  %261 = call i32 @REG_SET_FIELD(i32 %258, i32 %259, i32 %260, i32 1)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %264 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %265 = call i32 @REG_SET_FIELD(i32 %262, i32 %263, i32 %264, i32 1)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* @UVD, align 4
  %267 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @WREG32_SOC15(i32 %266, i32 0, i32 %267, i32 %268)
  %270 = load i32, i32* @UVD, align 4
  %271 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %272 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %273 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @lower_32_bits(i32 %274)
  %276 = call i32 @WREG32_SOC15(i32 %270, i32 0, i32 %271, i32 %275)
  %277 = load i32, i32* @UVD, align 4
  %278 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %279 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %280 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @upper_32_bits(i32 %281)
  %283 = call i32 @WREG32_SOC15(i32 %277, i32 0, i32 %278, i32 %282)
  %284 = load i32, i32* @UVD, align 4
  %285 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %286 = call i32 @WREG32_SOC15(i32 %284, i32 0, i32 %285, i32 0)
  %287 = load i32, i32* @UVD, align 4
  %288 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %289 = call i32 @RREG32_SOC15(i32 %287, i32 0, i32 %288)
  %290 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %291 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* @UVD, align 4
  %293 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %294 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %295 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @lower_32_bits(i32 %296)
  %298 = call i32 @WREG32_SOC15(i32 %292, i32 0, i32 %293, i32 %297)
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %303, align 8
  %305 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %304, i64 0
  store %struct.amdgpu_ring* %305, %struct.amdgpu_ring** %4, align 8
  %306 = load i32, i32* @UVD, align 4
  %307 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %308 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %309 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @lower_32_bits(i32 %310)
  %312 = call i32 @WREG32_SOC15(i32 %306, i32 0, i32 %307, i32 %311)
  %313 = load i32, i32* @UVD, align 4
  %314 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %315 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %316 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @lower_32_bits(i32 %317)
  %319 = call i32 @WREG32_SOC15(i32 %313, i32 0, i32 %314, i32 %318)
  %320 = load i32, i32* @UVD, align 4
  %321 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %322 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %323 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @WREG32_SOC15(i32 %320, i32 0, i32 %321, i32 %324)
  %326 = load i32, i32* @UVD, align 4
  %327 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %328 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %329 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @upper_32_bits(i32 %330)
  %332 = call i32 @WREG32_SOC15(i32 %326, i32 0, i32 %327, i32 %331)
  %333 = load i32, i32* @UVD, align 4
  %334 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %335 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %336 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = sdiv i32 %337, 4
  %339 = call i32 @WREG32_SOC15(i32 %333, i32 0, i32 %334, i32 %338)
  %340 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %341 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 0
  %345 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %344, align 8
  %346 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %345, i64 1
  store %struct.amdgpu_ring* %346, %struct.amdgpu_ring** %4, align 8
  %347 = load i32, i32* @UVD, align 4
  %348 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %349 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %350 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @lower_32_bits(i32 %351)
  %353 = call i32 @WREG32_SOC15(i32 %347, i32 0, i32 %348, i32 %352)
  %354 = load i32, i32* @UVD, align 4
  %355 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %356 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %357 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @lower_32_bits(i32 %358)
  %360 = call i32 @WREG32_SOC15(i32 %354, i32 0, i32 %355, i32 %359)
  %361 = load i32, i32* @UVD, align 4
  %362 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %363 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %364 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @WREG32_SOC15(i32 %361, i32 0, i32 %362, i32 %365)
  %367 = load i32, i32* @UVD, align 4
  %368 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %369 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %370 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @upper_32_bits(i32 %371)
  %373 = call i32 @WREG32_SOC15(i32 %367, i32 0, i32 %368, i32 %372)
  %374 = load i32, i32* @UVD, align 4
  %375 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %376 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %377 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = sdiv i32 %378, 4
  %380 = call i32 @WREG32_SOC15(i32 %374, i32 0, i32 %375, i32 %379)
  br label %381

381:                                              ; preds = %224, %43
  %382 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %383 = call i32 @jpeg_v2_0_start(%struct.amdgpu_device* %382)
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* %10, align 4
  store i32 %384, i32* %2, align 4
  br label %385

385:                                              ; preds = %381, %221, %41
  %386 = load i32, i32* %2, align 4
  ret i32 %386
}

declare dso_local i32 @amdgpu_dpm_enable_uvd(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @vcn_v2_0_start_dpg_mode(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @vcn_v2_0_disable_static_power_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v2_0_disable_clock_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @vcn_v2_0_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @jpeg_v2_0_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
