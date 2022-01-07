; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_start_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_start_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_MODE_MASK = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_EN_MASK = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__PRB_TIMEOUT_VAL__SHIFT = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__MIF_WR_LOW_THRESHOLD_BP_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__REQ_MODE_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__CRC_RESET_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__MASK_MC_URGENT_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MPC_CNTL = common dso_local global i32 0, align 4
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
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__RE_OFLD_MIF_WR_REQ_NUM__SHIFT = common dso_local global i32 0, align 4
@mmUVD_JPEG_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_JPEG_UV_ADDR_CONFIG = common dso_local global i32 0, align 4
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
@mmUVD_JRBC_RB_WPTR = common dso_local global i32 0, align 4
@amdgpu_sched_hw_submission = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v1_0_start_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v1_0_start_dpg_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = call i32 @vcn_1_0_enable_static_power_gating(%struct.amdgpu_device* %12)
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %16 = call i8* @RREG32_SOC15(i32 %14, i32 0, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_MODE_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_EN_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @UVD, align 4
  %25 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 %26)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = call i32 @vcn_v1_0_clock_gating_dpg_mode(%struct.amdgpu_device* %28, i32 0)
  %30 = load i32, i32* @UVD_VCPU_CNTL__PRB_TIMEOUT_VAL__SHIFT, align 4
  %31 = shl i32 255, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @UVD_VCPU_CNTL__MIF_WR_LOW_THRESHOLD_BP_MASK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @UVD, align 4
  %39 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @WREG32_SOC15_DPG_MODE(i32 %38, i32 0, i32 %39, i32 %40, i32 -1, i32 0)
  %42 = load i32, i32* @UVD, align 4
  %43 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %44 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %45 = call i32 @WREG32_SOC15_DPG_MODE(i32 %42, i32 0, i32 %43, i32 0, i32 %44, i32 0)
  %46 = load i32, i32* @UVD, align 4
  %47 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %48 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT, align 4
  %49 = shl i32 8, %48
  %50 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @UVD_LMI_CTRL__REQ_MODE_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UVD_LMI_CTRL__CRC_RESET_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @UVD_LMI_CTRL__MASK_MC_URGENT_MASK, align 4
  %61 = or i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = or i64 %62, 1048576
  %64 = trunc i64 %63 to i32
  %65 = call i32 @WREG32_SOC15_DPG_MODE(i32 %46, i32 0, i32 %47, i32 %64, i32 -1, i32 0)
  %66 = load i32, i32* @UVD, align 4
  %67 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WREG32_SOC15_DPG_MODE(i32 %66, i32 0, i32 %67, i32 %68, i32 -1, i32 0)
  %70 = load i32, i32* @UVD, align 4
  %71 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %72 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT, align 4
  %73 = shl i32 2, %72
  %74 = call i32 @WREG32_SOC15_DPG_MODE(i32 %70, i32 0, i32 %71, i32 %73, i32 -1, i32 0)
  %75 = load i32, i32* @UVD, align 4
  %76 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %77 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_1__SHIFT, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_2__SHIFT, align 4
  %80 = shl i32 2, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_3__SHIFT, align 4
  %83 = shl i32 3, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_4__SHIFT, align 4
  %86 = shl i32 4, %85
  %87 = or i32 %84, %86
  %88 = call i32 @WREG32_SOC15_DPG_MODE(i32 %75, i32 0, i32 %76, i32 %87, i32 -1, i32 0)
  %89 = load i32, i32* @UVD, align 4
  %90 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %91 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_1__SHIFT, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_2__SHIFT, align 4
  %94 = shl i32 2, %93
  %95 = or i32 %92, %94
  %96 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_3__SHIFT, align 4
  %97 = shl i32 3, %96
  %98 = or i32 %95, %97
  %99 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_4__SHIFT, align 4
  %100 = shl i32 4, %99
  %101 = or i32 %98, %100
  %102 = call i32 @WREG32_SOC15_DPG_MODE(i32 %89, i32 0, i32 %90, i32 %101, i32 -1, i32 0)
  %103 = load i32, i32* @UVD, align 4
  %104 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %105 = load i32, i32* @UVD_MPC_SET_MUX__SET_0__SHIFT, align 4
  %106 = shl i32 0, %105
  %107 = load i32, i32* @UVD_MPC_SET_MUX__SET_1__SHIFT, align 4
  %108 = shl i32 1, %107
  %109 = or i32 %106, %108
  %110 = load i32, i32* @UVD_MPC_SET_MUX__SET_2__SHIFT, align 4
  %111 = shl i32 2, %110
  %112 = or i32 %109, %111
  %113 = call i32 @WREG32_SOC15_DPG_MODE(i32 %103, i32 0, i32 %104, i32 %112, i32 -1, i32 0)
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = call i32 @vcn_v1_0_mc_resume_dpg_mode(%struct.amdgpu_device* %114)
  %116 = load i32, i32* @UVD, align 4
  %117 = load i32, i32* @mmUVD_REG_XX_MASK, align 4
  %118 = call i32 @WREG32_SOC15_DPG_MODE(i32 %116, i32 0, i32 %117, i32 16, i32 -1, i32 0)
  %119 = load i32, i32* @UVD, align 4
  %120 = load i32, i32* @mmUVD_RBC_XX_IB_REG_CHECK, align 4
  %121 = call i32 @WREG32_SOC15_DPG_MODE(i32 %119, i32 0, i32 %120, i32 3, i32 -1, i32 0)
  %122 = load i32, i32* @UVD, align 4
  %123 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %124 = call i32 @WREG32_SOC15_DPG_MODE(i32 %122, i32 0, i32 %123, i32 0, i32 -1, i32 0)
  %125 = load i32, i32* @UVD, align 4
  %126 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %127 = load i32, i32* @UVD_LMI_CTRL2__RE_OFLD_MIF_WR_REQ_NUM__SHIFT, align 4
  %128 = shl i32 31, %127
  %129 = call i32 @WREG32_SOC15_DPG_MODE(i32 %125, i32 0, i32 %126, i32 %128, i32 -1, i32 0)
  %130 = load i32, i32* @UVD, align 4
  %131 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %132 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %133 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %134 = call i32 @WREG32_SOC15_DPG_MODE(i32 %130, i32 0, i32 %131, i32 %132, i32 %133, i32 0)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = call i32 @vcn_v1_0_clock_gating_dpg_mode(%struct.amdgpu_device* %135, i32 1)
  %137 = load i32, i32* @UVD, align 4
  %138 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %139 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT, align 4
  %140 = shl i32 8, %139
  %141 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @UVD_LMI_CTRL__REQ_MODE_MASK, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @UVD_LMI_CTRL__CRC_RESET_MASK, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @UVD_LMI_CTRL__MASK_MC_URGENT_MASK, align 4
  %152 = or i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = or i64 %153, 1048576
  %155 = trunc i64 %154 to i32
  %156 = call i32 @WREG32_SOC15_DPG_MODE(i32 %137, i32 0, i32 %138, i32 %155, i32 -1, i32 1)
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* @UVD, align 4
  %163 = load i32, i32* @mmUVD_JPEG_ADDR_CONFIG, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @WREG32_SOC15_DPG_MODE(i32 %162, i32 0, i32 %163, i32 %164, i32 -1, i32 1)
  %166 = load i32, i32* @UVD, align 4
  %167 = load i32, i32* @mmUVD_JPEG_UV_ADDR_CONFIG, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @WREG32_SOC15_DPG_MODE(i32 %166, i32 0, i32 %167, i32 %168, i32 -1, i32 1)
  %170 = load i32, i32* @UVD, align 4
  %171 = load i32, i32* @mmUVD_SYS_INT_EN, align 4
  %172 = load i32, i32* @UVD_SYS_INT_EN__UVD_JRBC_EN_MASK, align 4
  %173 = call i32 @WREG32_SOC15_DPG_MODE(i32 %170, i32 0, i32 %171, i32 %172, i32 -1, i32 1)
  %174 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %175 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @order_base_2(i32 %176)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %179 = load i32, i32* @RB_BUFSZ, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @REG_SET_FIELD(i32 0, i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %184 = load i32, i32* @RB_BLKSZ, align 4
  %185 = call i32 @REG_SET_FIELD(i32 %182, i32 %183, i32 %184, i32 1)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %188 = load i32, i32* @RB_NO_FETCH, align 4
  %189 = call i32 @REG_SET_FIELD(i32 %186, i32 %187, i32 %188, i32 1)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %192 = load i32, i32* @RB_NO_UPDATE, align 4
  %193 = call i32 @REG_SET_FIELD(i32 %190, i32 %191, i32 %192, i32 1)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %196 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %197 = call i32 @REG_SET_FIELD(i32 %194, i32 %195, i32 %196, i32 1)
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* @UVD, align 4
  %199 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @WREG32_SOC15(i32 %198, i32 0, i32 %199, i32 %200)
  %202 = load i32, i32* @UVD, align 4
  %203 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %204 = call i32 @WREG32_SOC15(i32 %202, i32 0, i32 %203, i32 0)
  %205 = load i32, i32* @UVD, align 4
  %206 = load i32, i32* @mmUVD_RBC_RB_RPTR_ADDR, align 4
  %207 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %208 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @upper_32_bits(i8* %209)
  %211 = ashr i32 %210, 2
  %212 = call i32 @WREG32_SOC15(i32 %205, i32 0, i32 %206, i32 %211)
  %213 = load i32, i32* @UVD, align 4
  %214 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %215 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %216 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %215, i32 0, i32 2
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @lower_32_bits(i8* %217)
  %219 = call i32 @WREG32_SOC15(i32 %213, i32 0, i32 %214, i32 %218)
  %220 = load i32, i32* @UVD, align 4
  %221 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %222 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %223 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @upper_32_bits(i8* %224)
  %226 = call i32 @WREG32_SOC15(i32 %220, i32 0, i32 %221, i32 %225)
  %227 = load i32, i32* @UVD, align 4
  %228 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %229 = call i32 @WREG32_SOC15(i32 %227, i32 0, i32 %228, i32 0)
  %230 = load i32, i32* @UVD, align 4
  %231 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %232 = call i32 @WREG32_SOC15(i32 %230, i32 0, i32 %231, i32 0)
  %233 = load i32, i32* @UVD, align 4
  %234 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %235 = call i8* @RREG32_SOC15(i32 %233, i32 0, i32 %234)
  %236 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %237 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  %238 = load i32, i32* @UVD, align 4
  %239 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %240 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %241 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @lower_32_bits(i8* %242)
  %244 = call i32 @WREG32_SOC15(i32 %238, i32 0, i32 %239, i32 %243)
  %245 = load i32, i32* @UVD, align 4
  %246 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %247 = call i32 @SOC15_REG_OFFSET(i32 %245, i32 0, i32 %246)
  %248 = load i32, i32* @UVD_RBC_RB_CNTL__RB_NO_FETCH_MASK, align 4
  %249 = xor i32 %248, -1
  %250 = call i32 @WREG32_P(i32 %247, i32 0, i32 %249)
  %251 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %252 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  store %struct.amdgpu_ring* %255, %struct.amdgpu_ring** %3, align 8
  %256 = load i32, i32* @UVD, align 4
  %257 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %258 = call i8* @RREG32_SOC15(i32 %256, i32 0, i32 %257)
  %259 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %260 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  %261 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %262 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %263 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %266 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @amdgpu_sched_hw_submission, align 4
  %269 = mul nsw i32 %267, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr i8, i8* %264, i64 %270
  %272 = call i32 @vcn_v1_0_jpeg_ring_set_patch_ring(%struct.amdgpu_ring* %261, i8* %271)
  ret i32 0
}

declare dso_local i32 @vcn_1_0_enable_static_power_gating(%struct.amdgpu_device*) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v1_0_clock_gating_dpg_mode(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32_SOC15_DPG_MODE(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v1_0_mc_resume_dpg_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i8*) #1

declare dso_local i32 @lower_32_bits(i8*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @vcn_v1_0_jpeg_ring_set_patch_ring(%struct.amdgpu_ring*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
