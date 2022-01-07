; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32 }

@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_MODE_MASK = common dso_local global i32 0, align 4
@UVD_MASTINT_EN = common dso_local global i32 0, align 4
@VCPU_EN = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@STALL_ARB_UMC = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__RBC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CSM_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CXW_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__TAP_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__REQ_MODE_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DISABLE_ON_FWV_FAIL_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MP_SWAP_CNTL = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA0 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXA1 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB0 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUXB1 = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_ALU = common dso_local global i32 0, align 4
@mmUVD_MPC_SET_MUX = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", align 1
@UVD_SOFT_RESET = common dso_local global i32 0, align 4
@VCPU_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"UVD not responding, giving up!!!\0A\00", align 1
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__SYS_EN_MASK = common dso_local global i32 0, align 4
@UVD_STATUS__VCPU_REPORT__SHIFT = common dso_local global i32 0, align 4
@UVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@RB_NO_FETCH = common dso_local global i32 0, align 4
@RB_WPTR_POLL_EN = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@RB_RPTR_WR_EN = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR_CNTL = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR_ADDR = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @uvd_v6_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_start(%struct.amdgpu_device* %0) #0 {
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
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.amdgpu_ring* %17, %struct.amdgpu_ring** %4, align 8
  %18 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %19 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_MODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @WREG32_P(i32 %18, i32 0, i32 %20)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @uvd_v6_0_mc_resume(%struct.amdgpu_device* %22)
  %24 = load i32, i32* @UVD_MASTINT_EN, align 4
  %25 = load i32, i32* @VCPU_EN, align 4
  %26 = call i32 @WREG32_FIELD(i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @UVD_LMI_CTRL2, align 4
  %28 = load i32, i32* @STALL_ARB_UMC, align 4
  %29 = call i32 @WREG32_FIELD(i32 %27, i32 %28, i32 1)
  %30 = call i32 @mdelay(i32 1)
  %31 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %32 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %33 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UVD_SOFT_RESET__RBC_SOFT_RESET_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UVD_SOFT_RESET__CSM_SOFT_RESET_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UVD_SOFT_RESET__CXW_SOFT_RESET_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @UVD_SOFT_RESET__TAP_SOFT_RESET_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @WREG32(i32 %31, i32 %46)
  %48 = call i32 @mdelay(i32 5)
  %49 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %50 = load i32, i32* @SOFT_RESET_UVD, align 4
  %51 = call i32 @WREG32_FIELD(i32 %49, i32 %50, i32 0)
  %52 = call i32 @mdelay(i32 5)
  %53 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %54 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT, align 4
  %55 = shl i32 64, %54
  %56 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @UVD_LMI_CTRL__REQ_MODE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @UVD_LMI_CTRL__DISABLE_ON_FWV_FAIL_MASK, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @WREG32(i32 %53, i32 %65)
  %67 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  %70 = load i32, i32* @mmUVD_MP_SWAP_CNTL, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @WREG32(i32 %70, i32 %71)
  %73 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %74 = call i32 @WREG32(i32 %73, i32 67903552)
  %75 = load i32, i32* @mmUVD_MPC_SET_MUXA1, align 4
  %76 = call i32 @WREG32(i32 %75, i32 0)
  %77 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %78 = call i32 @WREG32(i32 %77, i32 67903552)
  %79 = load i32, i32* @mmUVD_MPC_SET_MUXB1, align 4
  %80 = call i32 @WREG32(i32 %79, i32 0)
  %81 = load i32, i32* @mmUVD_MPC_SET_ALU, align 4
  %82 = call i32 @WREG32(i32 %81, i32 0)
  %83 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %84 = call i32 @WREG32(i32 %83, i32 136)
  %85 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %86 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  %88 = call i32 @mdelay(i32 5)
  %89 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %90 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load i32, i32* @UVD_LMI_CTRL2, align 4
  %93 = load i32, i32* @STALL_ARB_UMC, align 4
  %94 = call i32 @WREG32_FIELD(i32 %92, i32 %93, i32 0)
  %95 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %96 = call i32 @WREG32(i32 %95, i32 0)
  %97 = call i32 @mdelay(i32 10)
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %133, %1
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 10
  br i1 %100, label %101, label %136

101:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 100
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i32, i32* @mmUVD_STATUS, align 4
  %107 = call i8* @RREG32(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %118

113:                                              ; preds = %105
  %114 = call i32 @mdelay(i32 10)
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %102

118:                                              ; preds = %112, %102
  store i32 0, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = and i32 %119, 2
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %136

123:                                              ; preds = %118
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @UVD_SOFT_RESET, align 4
  %126 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %127 = call i32 @WREG32_FIELD(i32 %125, i32 %126, i32 1)
  %128 = call i32 @mdelay(i32 10)
  %129 = load i32, i32* @UVD_SOFT_RESET, align 4
  %130 = load i32, i32* @VCPU_SOFT_RESET, align 4
  %131 = call i32 @WREG32_FIELD(i32 %129, i32 %130, i32 0)
  %132 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %11, align 4
  br label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %98

136:                                              ; preds = %122, %98
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %302

142:                                              ; preds = %136
  %143 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %144 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %145 = load i32, i32* @UVD_MASTINT_EN__SYS_EN_MASK, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %148 = load i32, i32* @UVD_MASTINT_EN__SYS_EN_MASK, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = call i32 @WREG32_P(i32 %143, i32 %146, i32 %150)
  %152 = load i32, i32* @mmUVD_STATUS, align 4
  %153 = load i32, i32* @UVD_STATUS__VCPU_REPORT__SHIFT, align 4
  %154 = shl i32 2, %153
  %155 = xor i32 %154, -1
  %156 = call i32 @WREG32_P(i32 %152, i32 0, i32 %155)
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %158 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @order_base_2(i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %162 = load i32, i32* @RB_BUFSZ, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @REG_SET_FIELD(i32 0, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %167 = load i32, i32* @RB_BLKSZ, align 4
  %168 = call i32 @REG_SET_FIELD(i32 %165, i32 %166, i32 %167, i32 1)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %171 = load i32, i32* @RB_NO_FETCH, align 4
  %172 = call i32 @REG_SET_FIELD(i32 %169, i32 %170, i32 %171, i32 1)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %175 = load i32, i32* @RB_WPTR_POLL_EN, align 4
  %176 = call i32 @REG_SET_FIELD(i32 %173, i32 %174, i32 %175, i32 0)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %179 = load i32, i32* @RB_NO_UPDATE, align 4
  %180 = call i32 @REG_SET_FIELD(i32 %177, i32 %178, i32 %179, i32 1)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %183 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %184 = call i32 @REG_SET_FIELD(i32 %181, i32 %182, i32 %183, i32 1)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @WREG32(i32 %185, i32 %186)
  %188 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %189 = call i32 @WREG32(i32 %188, i32 0)
  %190 = load i32, i32* @mmUVD_RBC_RB_RPTR_ADDR, align 4
  %191 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %192 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @upper_32_bits(i32 %193)
  %195 = ashr i32 %194, 2
  %196 = call i32 @WREG32(i32 %190, i32 %195)
  %197 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %198 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %199 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @lower_32_bits(i32 %200)
  %202 = call i32 @WREG32(i32 %197, i32 %201)
  %203 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %204 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %205 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @upper_32_bits(i32 %206)
  %208 = call i32 @WREG32(i32 %203, i32 %207)
  %209 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %210 = call i32 @WREG32(i32 %209, i32 0)
  %211 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %212 = call i8* @RREG32(i32 %211)
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %215 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %217 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %218 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @lower_32_bits(i32 %219)
  %221 = call i32 @WREG32(i32 %216, i32 %220)
  %222 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %223 = load i32, i32* @RB_NO_FETCH, align 4
  %224 = call i32 @WREG32_FIELD(i32 %222, i32 %223, i32 0)
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %226 = call i64 @uvd_v6_0_enc_support(%struct.amdgpu_device* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %301

228:                                              ; preds = %142
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %233, align 8
  %235 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %234, i64 0
  store %struct.amdgpu_ring* %235, %struct.amdgpu_ring** %4, align 8
  %236 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %237 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %238 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @lower_32_bits(i32 %239)
  %241 = call i32 @WREG32(i32 %236, i32 %240)
  %242 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %243 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %244 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @lower_32_bits(i32 %245)
  %247 = call i32 @WREG32(i32 %242, i32 %246)
  %248 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %249 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %250 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @WREG32(i32 %248, i32 %251)
  %253 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %254 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %255 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @upper_32_bits(i32 %256)
  %258 = call i32 @WREG32(i32 %253, i32 %257)
  %259 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %260 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %261 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sdiv i32 %262, 4
  %264 = call i32 @WREG32(i32 %259, i32 %263)
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %266 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %269, align 8
  %271 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %270, i64 1
  store %struct.amdgpu_ring* %271, %struct.amdgpu_ring** %4, align 8
  %272 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %273 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %274 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @lower_32_bits(i32 %275)
  %277 = call i32 @WREG32(i32 %272, i32 %276)
  %278 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %279 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %280 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @lower_32_bits(i32 %281)
  %283 = call i32 @WREG32(i32 %278, i32 %282)
  %284 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %285 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %286 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @WREG32(i32 %284, i32 %287)
  %289 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %290 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %291 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @upper_32_bits(i32 %292)
  %294 = call i32 @WREG32(i32 %289, i32 %293)
  %295 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %296 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %297 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = sdiv i32 %298, 4
  %300 = call i32 @WREG32(i32 %295, i32 %299)
  br label %301

301:                                              ; preds = %228, %142
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %301, %139
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @uvd_v6_0_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @uvd_v6_0_enc_support(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
