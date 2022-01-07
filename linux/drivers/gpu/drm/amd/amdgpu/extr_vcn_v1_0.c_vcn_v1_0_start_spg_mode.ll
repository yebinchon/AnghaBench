; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_start_spg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_start_spg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@UVD_STATUS__UVD_BUSY = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__MASK_MC_URGENT_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MPC_CNTL = common dso_local global i32 0, align 4
@UVD_MPC_CNTL__REPLACEMENT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT = common dso_local global i32 0, align 4
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
@mmUVD_REG_XX_MASK = common dso_local global i32 0, align 4
@mmUVD_RBC_XX_IB_REG_CHECK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__STALL_ARB_UMC_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_STATUS__IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"VCN decode not responding, trying to reset the VCPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"VCN decode not responding, giving up!!!\0A\00", align 1
@mmUVD_SYS_INT_EN = common dso_local global i32 0, align 4
@UVD_SYS_INT_EN__UVD_JRBC_EN_MASK = common dso_local global i32 0, align 4
@UVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@RB_NO_FETCH = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@RB_RPTR_WR_EN = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR_ADDR = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_SCRATCH2 = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@UVD_RBC_RB_CNTL__RB_NO_FETCH_MASK = common dso_local global i32 0, align 4
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
@mmUVD_LMI_JRBC_RB_VMID = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_CNTL = common dso_local global i32 0, align 4
@UVD_JRBC_RB_CNTL__RB_NO_FETCH_MASK = common dso_local global i32 0, align 4
@UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_WPTR = common dso_local global i32 0, align 4
@amdgpu_sched_hw_submission = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v1_0_start_spg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v1_0_start_spg_mode(%struct.amdgpu_device* %0) #0 {
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
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store %struct.amdgpu_ring* %16, %struct.amdgpu_ring** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = call i32 @vcn_1_0_disable_static_power_gating(%struct.amdgpu_device* %17)
  %19 = load i32, i32* @UVD, align 4
  %20 = load i32, i32* @mmUVD_STATUS, align 4
  %21 = call i32 @RREG32_SOC15(i32 %19, i32 0, i32 %20)
  %22 = load i32, i32* @UVD_STATUS__UVD_BUSY, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @UVD, align 4
  %25 = load i32, i32* @mmUVD_STATUS, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = call i32 @vcn_v1_0_disable_clock_gating(%struct.amdgpu_device* %28)
  %30 = load i32, i32* @UVD, align 4
  %31 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %32 = call i32 @SOC15_REG_OFFSET(i32 %30, i32 0, i32 %31)
  %33 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @WREG32_P(i32 %32, i32 0, i32 %34)
  %36 = load i32, i32* @UVD, align 4
  %37 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %38 = call i32 @RREG32_SOC15(i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @UVD, align 4
  %40 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @UVD_LMI_CTRL__MASK_MC_URGENT_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @WREG32_SOC15(i32 %39, i32 0, i32 %40, i32 %49)
  %51 = load i32, i32* @UVD, align 4
  %52 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @WREG32_SOC15(i32 %51, i32 0, i32 %52, i32 %53)
  %55 = load i32, i32* @UVD, align 4
  %56 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %57 = call i32 @RREG32_SOC15(i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT, align 4
  %63 = shl i32 2, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @UVD, align 4
  %67 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WREG32_SOC15(i32 %66, i32 0, i32 %67, i32 %68)
  %70 = load i32, i32* @UVD, align 4
  %71 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %72 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_1__SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_2__SHIFT, align 4
  %75 = shl i32 2, %74
  %76 = or i32 %73, %75
  %77 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_3__SHIFT, align 4
  %78 = shl i32 3, %77
  %79 = or i32 %76, %78
  %80 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_4__SHIFT, align 4
  %81 = shl i32 4, %80
  %82 = or i32 %79, %81
  %83 = call i32 @WREG32_SOC15(i32 %70, i32 0, i32 %71, i32 %82)
  %84 = load i32, i32* @UVD, align 4
  %85 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %86 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_1__SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_2__SHIFT, align 4
  %89 = shl i32 2, %88
  %90 = or i32 %87, %89
  %91 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_3__SHIFT, align 4
  %92 = shl i32 3, %91
  %93 = or i32 %90, %92
  %94 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_4__SHIFT, align 4
  %95 = shl i32 4, %94
  %96 = or i32 %93, %95
  %97 = call i32 @WREG32_SOC15(i32 %84, i32 0, i32 %85, i32 %96)
  %98 = load i32, i32* @UVD, align 4
  %99 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %100 = load i32, i32* @UVD_MPC_SET_MUX__SET_0__SHIFT, align 4
  %101 = shl i32 0, %100
  %102 = load i32, i32* @UVD_MPC_SET_MUX__SET_1__SHIFT, align 4
  %103 = shl i32 1, %102
  %104 = or i32 %101, %103
  %105 = load i32, i32* @UVD_MPC_SET_MUX__SET_2__SHIFT, align 4
  %106 = shl i32 2, %105
  %107 = or i32 %104, %106
  %108 = call i32 @WREG32_SOC15(i32 %98, i32 0, i32 %99, i32 %107)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = call i32 @vcn_v1_0_mc_resume_spg_mode(%struct.amdgpu_device* %109)
  %111 = load i32, i32* @UVD, align 4
  %112 = load i32, i32* @mmUVD_REG_XX_MASK, align 4
  %113 = call i32 @WREG32_SOC15(i32 %111, i32 0, i32 %112, i32 16)
  %114 = load i32, i32* @UVD, align 4
  %115 = load i32, i32* @mmUVD_RBC_XX_IB_REG_CHECK, align 4
  %116 = load i32, i32* @UVD, align 4
  %117 = load i32, i32* @mmUVD_RBC_XX_IB_REG_CHECK, align 4
  %118 = call i32 @RREG32_SOC15(i32 %116, i32 0, i32 %117)
  %119 = or i32 %118, 3
  %120 = call i32 @WREG32_SOC15(i32 %114, i32 0, i32 %115, i32 %119)
  %121 = load i32, i32* @UVD, align 4
  %122 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %123 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %124 = call i32 @WREG32_SOC15(i32 %121, i32 0, i32 %122, i32 %123)
  %125 = load i32, i32* @UVD, align 4
  %126 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %127 = call i32 @SOC15_REG_OFFSET(i32 %125, i32 0, i32 %126)
  %128 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = call i32 @WREG32_P(i32 %127, i32 0, i32 %129)
  %131 = load i32, i32* @UVD, align 4
  %132 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %133 = call i32 @SOC15_REG_OFFSET(i32 %131, i32 0, i32 %132)
  %134 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %135 = xor i32 %134, -1
  %136 = call i32 @WREG32_P(i32 %133, i32 0, i32 %135)
  %137 = load i32, i32* @UVD, align 4
  %138 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %139 = call i32 @RREG32_SOC15(i32 %137, i32 0, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %6, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* @UVD, align 4
  %149 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @WREG32_SOC15(i32 %148, i32 0, i32 %149, i32 %150)
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %196, %1
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 10
  br i1 %154, label %155, label %199

155:                                              ; preds = %152
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %170, %155
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 100
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load i32, i32* @UVD, align 4
  %161 = load i32, i32* @mmUVD_STATUS, align 4
  %162 = call i32 @RREG32_SOC15(i32 %160, i32 0, i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @UVD_STATUS__IDLE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %173

168:                                              ; preds = %159
  %169 = call i32 @mdelay(i32 10)
  br label %170

170:                                              ; preds = %168
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %156

173:                                              ; preds = %167, %156
  store i32 0, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @UVD_STATUS__IDLE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %199

179:                                              ; preds = %173
  %180 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %181 = load i32, i32* @UVD, align 4
  %182 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %183 = call i32 @SOC15_REG_OFFSET(i32 %181, i32 0, i32 %182)
  %184 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %185 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %186 = xor i32 %185, -1
  %187 = call i32 @WREG32_P(i32 %183, i32 %184, i32 %186)
  %188 = call i32 @mdelay(i32 10)
  %189 = load i32, i32* @UVD, align 4
  %190 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %191 = call i32 @SOC15_REG_OFFSET(i32 %189, i32 0, i32 %190)
  %192 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %193 = xor i32 %192, -1
  %194 = call i32 @WREG32_P(i32 %191, i32 0, i32 %193)
  %195 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %10, align 4
  br label %196

196:                                              ; preds = %179
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %152

199:                                              ; preds = %178, %152
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %2, align 4
  br label %443

205:                                              ; preds = %199
  %206 = load i32, i32* @UVD, align 4
  %207 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %208 = call i32 @SOC15_REG_OFFSET(i32 %206, i32 0, i32 %207)
  %209 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %210 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %211 = xor i32 %210, -1
  %212 = call i32 @WREG32_P(i32 %208, i32 %209, i32 %211)
  %213 = load i32, i32* @UVD, align 4
  %214 = load i32, i32* @mmUVD_SYS_INT_EN, align 4
  %215 = call i32 @SOC15_REG_OFFSET(i32 %213, i32 0, i32 %214)
  %216 = load i32, i32* @UVD_SYS_INT_EN__UVD_JRBC_EN_MASK, align 4
  %217 = load i32, i32* @UVD_SYS_INT_EN__UVD_JRBC_EN_MASK, align 4
  %218 = xor i32 %217, -1
  %219 = call i32 @WREG32_P(i32 %215, i32 %216, i32 %218)
  %220 = load i32, i32* @UVD, align 4
  %221 = load i32, i32* @mmUVD_STATUS, align 4
  %222 = call i32 @RREG32_SOC15(i32 %220, i32 0, i32 %221)
  %223 = load i32, i32* @UVD_STATUS__UVD_BUSY, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* @UVD, align 4
  %227 = load i32, i32* @mmUVD_STATUS, align 4
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @WREG32_SOC15(i32 %226, i32 0, i32 %227, i32 %228)
  %230 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %231 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @order_base_2(i32 %232)
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %235 = load i32, i32* @RB_BUFSZ, align 4
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @REG_SET_FIELD(i32 0, i32 %234, i32 %235, i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %240 = load i32, i32* @RB_BLKSZ, align 4
  %241 = call i32 @REG_SET_FIELD(i32 %238, i32 %239, i32 %240, i32 1)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %244 = load i32, i32* @RB_NO_FETCH, align 4
  %245 = call i32 @REG_SET_FIELD(i32 %242, i32 %243, i32 %244, i32 1)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %248 = load i32, i32* @RB_NO_UPDATE, align 4
  %249 = call i32 @REG_SET_FIELD(i32 %246, i32 %247, i32 %248, i32 1)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %252 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %253 = call i32 @REG_SET_FIELD(i32 %250, i32 %251, i32 %252, i32 1)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* @UVD, align 4
  %255 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @WREG32_SOC15(i32 %254, i32 0, i32 %255, i32 %256)
  %258 = load i32, i32* @UVD, align 4
  %259 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %260 = call i32 @WREG32_SOC15(i32 %258, i32 0, i32 %259, i32 0)
  %261 = load i32, i32* @UVD, align 4
  %262 = load i32, i32* @mmUVD_RBC_RB_RPTR_ADDR, align 4
  %263 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %264 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @upper_32_bits(i32 %265)
  %267 = ashr i32 %266, 2
  %268 = call i32 @WREG32_SOC15(i32 %261, i32 0, i32 %262, i32 %267)
  %269 = load i32, i32* @UVD, align 4
  %270 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %271 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %272 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @lower_32_bits(i32 %273)
  %275 = call i32 @WREG32_SOC15(i32 %269, i32 0, i32 %270, i32 %274)
  %276 = load i32, i32* @UVD, align 4
  %277 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %278 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %279 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @upper_32_bits(i32 %280)
  %282 = call i32 @WREG32_SOC15(i32 %276, i32 0, i32 %277, i32 %281)
  %283 = load i32, i32* @UVD, align 4
  %284 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %285 = call i32 @WREG32_SOC15(i32 %283, i32 0, i32 %284, i32 0)
  %286 = load i32, i32* @UVD, align 4
  %287 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %288 = call i32 @WREG32_SOC15(i32 %286, i32 0, i32 %287, i32 0)
  %289 = load i32, i32* @UVD, align 4
  %290 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %291 = call i32 @RREG32_SOC15(i32 %289, i32 0, i32 %290)
  %292 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %293 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @UVD, align 4
  %295 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %296 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %297 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @lower_32_bits(i32 %298)
  %300 = call i32 @WREG32_SOC15(i32 %294, i32 0, i32 %295, i32 %299)
  %301 = load i32, i32* @UVD, align 4
  %302 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %303 = call i32 @SOC15_REG_OFFSET(i32 %301, i32 0, i32 %302)
  %304 = load i32, i32* @UVD_RBC_RB_CNTL__RB_NO_FETCH_MASK, align 4
  %305 = xor i32 %304, -1
  %306 = call i32 @WREG32_P(i32 %303, i32 0, i32 %305)
  %307 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %308 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 1
  %312 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %311, align 8
  %313 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %312, i64 0
  store %struct.amdgpu_ring* %313, %struct.amdgpu_ring** %4, align 8
  %314 = load i32, i32* @UVD, align 4
  %315 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %316 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %317 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @lower_32_bits(i32 %318)
  %320 = call i32 @WREG32_SOC15(i32 %314, i32 0, i32 %315, i32 %319)
  %321 = load i32, i32* @UVD, align 4
  %322 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %323 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %324 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @lower_32_bits(i32 %325)
  %327 = call i32 @WREG32_SOC15(i32 %321, i32 0, i32 %322, i32 %326)
  %328 = load i32, i32* @UVD, align 4
  %329 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %330 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %331 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @WREG32_SOC15(i32 %328, i32 0, i32 %329, i32 %332)
  %334 = load i32, i32* @UVD, align 4
  %335 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %336 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %337 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @upper_32_bits(i32 %338)
  %340 = call i32 @WREG32_SOC15(i32 %334, i32 0, i32 %335, i32 %339)
  %341 = load i32, i32* @UVD, align 4
  %342 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %343 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %344 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = sdiv i32 %345, 4
  %347 = call i32 @WREG32_SOC15(i32 %341, i32 0, i32 %342, i32 %346)
  %348 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %349 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 1
  %353 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %352, align 8
  %354 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %353, i64 1
  store %struct.amdgpu_ring* %354, %struct.amdgpu_ring** %4, align 8
  %355 = load i32, i32* @UVD, align 4
  %356 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %357 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %358 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @lower_32_bits(i32 %359)
  %361 = call i32 @WREG32_SOC15(i32 %355, i32 0, i32 %356, i32 %360)
  %362 = load i32, i32* @UVD, align 4
  %363 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %364 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %365 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @lower_32_bits(i32 %366)
  %368 = call i32 @WREG32_SOC15(i32 %362, i32 0, i32 %363, i32 %367)
  %369 = load i32, i32* @UVD, align 4
  %370 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %371 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %372 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @WREG32_SOC15(i32 %369, i32 0, i32 %370, i32 %373)
  %375 = load i32, i32* @UVD, align 4
  %376 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %377 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %378 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @upper_32_bits(i32 %379)
  %381 = call i32 @WREG32_SOC15(i32 %375, i32 0, i32 %376, i32 %380)
  %382 = load i32, i32* @UVD, align 4
  %383 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %384 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %385 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = sdiv i32 %386, 4
  %388 = call i32 @WREG32_SOC15(i32 %382, i32 0, i32 %383, i32 %387)
  %389 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %390 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 0
  store %struct.amdgpu_ring* %393, %struct.amdgpu_ring** %4, align 8
  %394 = load i32, i32* @UVD, align 4
  %395 = load i32, i32* @mmUVD_LMI_JRBC_RB_VMID, align 4
  %396 = call i32 @WREG32_SOC15(i32 %394, i32 0, i32 %395, i32 0)
  %397 = load i32, i32* @UVD, align 4
  %398 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %399 = load i32, i32* @UVD_JRBC_RB_CNTL__RB_NO_FETCH_MASK, align 4
  %400 = load i32, i32* @UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK, align 4
  %401 = or i32 %399, %400
  %402 = call i32 @WREG32_SOC15(i32 %397, i32 0, i32 %398, i32 %401)
  %403 = load i32, i32* @UVD, align 4
  %404 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW, align 4
  %405 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %406 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @lower_32_bits(i32 %407)
  %409 = call i32 @WREG32_SOC15(i32 %403, i32 0, i32 %404, i32 %408)
  %410 = load i32, i32* @UVD, align 4
  %411 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH, align 4
  %412 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %413 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @upper_32_bits(i32 %414)
  %416 = call i32 @WREG32_SOC15(i32 %410, i32 0, i32 %411, i32 %415)
  %417 = load i32, i32* @UVD, align 4
  %418 = load i32, i32* @mmUVD_JRBC_RB_RPTR, align 4
  %419 = call i32 @WREG32_SOC15(i32 %417, i32 0, i32 %418, i32 0)
  %420 = load i32, i32* @UVD, align 4
  %421 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %422 = call i32 @WREG32_SOC15(i32 %420, i32 0, i32 %421, i32 0)
  %423 = load i32, i32* @UVD, align 4
  %424 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %425 = load i32, i32* @UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK, align 4
  %426 = call i32 @WREG32_SOC15(i32 %423, i32 0, i32 %424, i32 %425)
  %427 = load i32, i32* @UVD, align 4
  %428 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %429 = call i32 @RREG32_SOC15(i32 %427, i32 0, i32 %428)
  %430 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %431 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %430, i32 0, i32 2
  store i32 %429, i32* %431, align 4
  %432 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %433 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %434 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %437 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @amdgpu_sched_hw_submission, align 4
  %440 = mul nsw i32 %438, %439
  %441 = add nsw i32 %435, %440
  %442 = call i32 @vcn_v1_0_jpeg_ring_set_patch_ring(%struct.amdgpu_ring* %432, i32 %441)
  store i32 0, i32* %2, align 4
  br label %443

443:                                              ; preds = %205, %202
  %444 = load i32, i32* %2, align 4
  ret i32 %444
}

declare dso_local i32 @vcn_1_0_disable_static_power_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v1_0_disable_clock_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @vcn_v1_0_mc_resume_spg_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @vcn_v1_0_jpeg_ring_set_patch_ring(%struct.amdgpu_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
