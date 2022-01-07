; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_start_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_start_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i8*, i8*, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_MODE_MASK = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_EN_MASK = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__PRB_TIMEOUT_VAL__SHIFT = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__MIF_WR_LOW_THRESHOLD_BP_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__REQ_MODE_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__CRC_RESET_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__MASK_MC_URGENT_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
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
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @vcn_v2_0_start_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_start_dpg_mode(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.amdgpu_ring* %12, %struct.amdgpu_ring** %5, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i32 @vcn_v2_0_enable_static_power_gating(%struct.amdgpu_device* %13)
  %15 = load i32, i32* @UVD, align 4
  %16 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %17 = call i8* @RREG32_SOC15(i32 %15, i32 0, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_MODE_MASK, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_EN_MASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @UVD, align 4
  %26 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @WREG32_SOC15(i32 %25, i32 0, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %2
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @vcn_v2_0_clock_gating_dpg_mode(%struct.amdgpu_device* %41, i32 0, i32 %42)
  %44 = load i32, i32* @UVD_VCPU_CNTL__PRB_TIMEOUT_VAL__SHIFT, align 4
  %45 = shl i32 255, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @UVD_VCPU_CNTL__MIF_WR_LOW_THRESHOLD_BP_MASK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @UVD, align 4
  %53 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %54 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %52, i32 0, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %54, i32 %55, i32 0, i32 %56)
  %58 = load i32, i32* @UVD, align 4
  %59 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %60 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %60, i32 0, i32 0, i32 %61)
  %63 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %64 = load i32, i32* @UVD_LMI_CTRL__REQ_MODE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UVD_LMI_CTRL__CRC_RESET_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @UVD_LMI_CTRL__MASK_MC_URGENT_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT, align 4
  %75 = shl i32 8, %74
  %76 = or i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = or i64 %77, 1048576
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @UVD, align 4
  %81 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %82 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %80, i32 0, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %82, i32 %83, i32 0, i32 %84)
  %86 = load i32, i32* @UVD, align 4
  %87 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %88 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %86, i32 0, i32 %87)
  %89 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT, align 4
  %90 = shl i32 2, %89
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %88, i32 %90, i32 0, i32 %91)
  %93 = load i32, i32* @UVD, align 4
  %94 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %95 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %93, i32 0, i32 %94)
  %96 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_1__SHIFT, align 4
  %97 = shl i32 1, %96
  %98 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_2__SHIFT, align 4
  %99 = shl i32 2, %98
  %100 = or i32 %97, %99
  %101 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_3__SHIFT, align 4
  %102 = shl i32 3, %101
  %103 = or i32 %100, %102
  %104 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_4__SHIFT, align 4
  %105 = shl i32 4, %104
  %106 = or i32 %103, %105
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %95, i32 %106, i32 0, i32 %107)
  %109 = load i32, i32* @UVD, align 4
  %110 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %111 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %109, i32 0, i32 %110)
  %112 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_1__SHIFT, align 4
  %113 = shl i32 1, %112
  %114 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_2__SHIFT, align 4
  %115 = shl i32 2, %114
  %116 = or i32 %113, %115
  %117 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_3__SHIFT, align 4
  %118 = shl i32 3, %117
  %119 = or i32 %116, %118
  %120 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_4__SHIFT, align 4
  %121 = shl i32 4, %120
  %122 = or i32 %119, %121
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %111, i32 %122, i32 0, i32 %123)
  %125 = load i32, i32* @UVD, align 4
  %126 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %127 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %125, i32 0, i32 %126)
  %128 = load i32, i32* @UVD_MPC_SET_MUX__SET_0__SHIFT, align 4
  %129 = shl i32 0, %128
  %130 = load i32, i32* @UVD_MPC_SET_MUX__SET_1__SHIFT, align 4
  %131 = shl i32 1, %130
  %132 = or i32 %129, %131
  %133 = load i32, i32* @UVD_MPC_SET_MUX__SET_2__SHIFT, align 4
  %134 = shl i32 2, %133
  %135 = or i32 %132, %134
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %127, i32 %135, i32 0, i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @vcn_v2_0_mc_resume_dpg_mode(%struct.amdgpu_device* %138, i32 %139)
  %141 = load i32, i32* @UVD, align 4
  %142 = load i32, i32* @mmUVD_REG_XX_MASK, align 4
  %143 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %141, i32 0, i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %143, i32 16, i32 0, i32 %144)
  %146 = load i32, i32* @UVD, align 4
  %147 = load i32, i32* @mmUVD_RBC_XX_IB_REG_CHECK, align 4
  %148 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %146, i32 0, i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %148, i32 3, i32 0, i32 %149)
  %151 = load i32, i32* @UVD, align 4
  %152 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %153 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %151, i32 0, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %153, i32 0, i32 0, i32 %154)
  %156 = load i32, i32* @UVD, align 4
  %157 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %158 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %156, i32 0, i32 %157)
  %159 = load i32, i32* @UVD_LMI_CTRL2__RE_OFLD_MIF_WR_REQ_NUM__SHIFT, align 4
  %160 = shl i32 31, %159
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %158, i32 %160, i32 0, i32 %161)
  %163 = load i32, i32* @UVD, align 4
  %164 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %165 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %163, i32 0, i32 %164)
  %166 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %165, i32 %166, i32 0, i32 %167)
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %40
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %178 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = ptrtoint i32* %180 to i64
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = sub i64 %181, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @psp_update_vcn_sram(%struct.amdgpu_device* %172, i32 0, i32 %176, i32 %187)
  br label %189

189:                                              ; preds = %171, %40
  %190 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %191 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @order_base_2(i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %195 = load i32, i32* @RB_BUFSZ, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @REG_SET_FIELD(i32 0, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %200 = load i32, i32* @RB_BLKSZ, align 4
  %201 = call i32 @REG_SET_FIELD(i32 %198, i32 %199, i32 %200, i32 1)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %204 = load i32, i32* @RB_NO_FETCH, align 4
  %205 = call i32 @REG_SET_FIELD(i32 %202, i32 %203, i32 %204, i32 1)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %208 = load i32, i32* @RB_NO_UPDATE, align 4
  %209 = call i32 @REG_SET_FIELD(i32 %206, i32 %207, i32 %208, i32 1)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %212 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %213 = call i32 @REG_SET_FIELD(i32 %210, i32 %211, i32 %212, i32 1)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* @UVD, align 4
  %215 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @WREG32_SOC15(i32 %214, i32 0, i32 %215, i32 %216)
  %218 = load i32, i32* @UVD, align 4
  %219 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %220 = call i32 @WREG32_SOC15(i32 %218, i32 0, i32 %219, i32 0)
  %221 = load i32, i32* @UVD, align 4
  %222 = load i32, i32* @mmUVD_RBC_RB_RPTR_ADDR, align 4
  %223 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %224 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @upper_32_bits(i8* %225)
  %227 = ashr i32 %226, 2
  %228 = call i32 @WREG32_SOC15(i32 %221, i32 0, i32 %222, i32 %227)
  %229 = load i32, i32* @UVD, align 4
  %230 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %231 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %232 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @lower_32_bits(i8* %233)
  %235 = call i32 @WREG32_SOC15(i32 %229, i32 0, i32 %230, i32 %234)
  %236 = load i32, i32* @UVD, align 4
  %237 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %238 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %239 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @upper_32_bits(i8* %240)
  %242 = call i32 @WREG32_SOC15(i32 %236, i32 0, i32 %237, i32 %241)
  %243 = load i32, i32* @UVD, align 4
  %244 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %245 = call i32 @WREG32_SOC15(i32 %243, i32 0, i32 %244, i32 0)
  %246 = load i32, i32* @UVD, align 4
  %247 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %248 = call i32 @WREG32_SOC15(i32 %246, i32 0, i32 %247, i32 0)
  %249 = load i32, i32* @UVD, align 4
  %250 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %251 = call i8* @RREG32_SOC15(i32 %249, i32 0, i32 %250)
  %252 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %253 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %252, i32 0, i32 0
  store i8* %251, i8** %253, align 8
  %254 = load i32, i32* @UVD, align 4
  %255 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %256 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %257 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @lower_32_bits(i8* %258)
  %260 = call i32 @WREG32_SOC15(i32 %254, i32 0, i32 %255, i32 %259)
  ret i32 0
}

declare dso_local i32 @vcn_v2_0_enable_static_power_gating(%struct.amdgpu_device*) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v2_0_clock_gating_dpg_mode(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_DPG_MODE_2_0(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_DPG_MODE_OFFSET_2_0(i32, i32, i32) #1

declare dso_local i32 @vcn_v2_0_mc_resume_dpg_mode(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @psp_update_vcn_sram(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i8*) #1

declare dso_local i32 @lower_32_bits(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
