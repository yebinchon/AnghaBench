; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_MODE_MASK = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__STALL_ARB_UMC_MASK = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__RBC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CSM_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CXW_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__TAP_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__REQ_MODE_MASK = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [53 x i8] c"UVD(%d) not responding, trying to reset the VCPU!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"UVD(%d) not responding, giving up!!!\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @uvd_v7_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_start(%struct.amdgpu_device* %0) #0 {
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
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %39, %1
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @UVD, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %35 = call i32 @SOC15_REG_OFFSET(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_MODE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @WREG32_P(i32 %35, i32 0, i32 %37)
  br label %39

39:                                               ; preds = %31, %30
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %14

42:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = call i32 @uvd_v7_0_mc_resume(%struct.amdgpu_device* %43)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %452, %42
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %455

52:                                               ; preds = %45
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %452

62:                                               ; preds = %52
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store %struct.amdgpu_ring* %70, %struct.amdgpu_ring** %4, align 8
  %71 = load i32, i32* @UVD, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %74 = call i32 @SOC15_REG_OFFSET(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_P(i32 %74, i32 0, i32 %76)
  %78 = load i32, i32* @UVD, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %81 = call i32 @SOC15_REG_OFFSET(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = call i32 @WREG32_P(i32 %81, i32 0, i32 %83)
  %85 = load i32, i32* @UVD, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %88 = call i32 @SOC15_REG_OFFSET(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %90 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = call i32 @WREG32_P(i32 %88, i32 %89, i32 %91)
  %93 = call i32 @mdelay(i32 1)
  %94 = load i32, i32* @UVD, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %97 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %98 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UVD_SOFT_RESET__RBC_SOFT_RESET_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UVD_SOFT_RESET__CSM_SOFT_RESET_MASK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @UVD_SOFT_RESET__CXW_SOFT_RESET_MASK, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @UVD_SOFT_RESET__TAP_SOFT_RESET_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @WREG32_SOC15(i32 %94, i32 %95, i32 %96, i32 %111)
  %113 = call i32 @mdelay(i32 5)
  %114 = load i32, i32* @UVD, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %117 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT, align 4
  %118 = shl i32 64, %117
  %119 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @UVD_LMI_CTRL__REQ_MODE_MASK, align 4
  %126 = or i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = or i64 %127, 1048576
  %129 = trunc i64 %128 to i32
  %130 = call i32 @WREG32_SOC15(i32 %114, i32 %115, i32 %116, i32 %129)
  %131 = load i32, i32* @UVD, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @mmUVD_LMI_SWAP_CNTL, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @WREG32_SOC15(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @UVD, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @mmUVD_MP_SWAP_CNTL, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @WREG32_SOC15(i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @UVD, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %144 = call i32 @WREG32_SOC15(i32 %141, i32 %142, i32 %143, i32 67903552)
  %145 = load i32, i32* @UVD, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @mmUVD_MPC_SET_MUXA1, align 4
  %148 = call i32 @WREG32_SOC15(i32 %145, i32 %146, i32 %147, i32 0)
  %149 = load i32, i32* @UVD, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %152 = call i32 @WREG32_SOC15(i32 %149, i32 %150, i32 %151, i32 67903552)
  %153 = load i32, i32* @UVD, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @mmUVD_MPC_SET_MUXB1, align 4
  %156 = call i32 @WREG32_SOC15(i32 %153, i32 %154, i32 %155, i32 0)
  %157 = load i32, i32* @UVD, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @mmUVD_MPC_SET_ALU, align 4
  %160 = call i32 @WREG32_SOC15(i32 %157, i32 %158, i32 %159, i32 0)
  %161 = load i32, i32* @UVD, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %164 = call i32 @WREG32_SOC15(i32 %161, i32 %162, i32 %163, i32 136)
  %165 = load i32, i32* @UVD, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %168 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %169 = call i32 @WREG32_SOC15(i32 %165, i32 %166, i32 %167, i32 %168)
  %170 = call i32 @mdelay(i32 5)
  %171 = load i32, i32* @UVD, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %174 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %175 = call i32 @WREG32_SOC15(i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* @UVD, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %179 = call i32 @SOC15_REG_OFFSET(i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %181 = xor i32 %180, -1
  %182 = call i32 @WREG32_P(i32 %179, i32 0, i32 %181)
  %183 = load i32, i32* @UVD, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %186 = call i32 @WREG32_SOC15(i32 %183, i32 %184, i32 %185, i32 0)
  %187 = call i32 @mdelay(i32 10)
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %235, %62
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 10
  br i1 %190, label %191, label %238

191:                                              ; preds = %188
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %207, %191
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %193, 100
  br i1 %194, label %195, label %210

195:                                              ; preds = %192
  %196 = load i32, i32* @UVD, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @mmUVD_STATUS, align 4
  %199 = call i8* @RREG32_SOC15(i32 %196, i32 %197, i32 %198)
  %200 = ptrtoint i8* %199 to i32
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = and i32 %201, 2
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %210

205:                                              ; preds = %195
  %206 = call i32 @mdelay(i32 10)
  br label %207

207:                                              ; preds = %205
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %192

210:                                              ; preds = %204, %192
  store i32 0, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, 2
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %238

215:                                              ; preds = %210
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @UVD, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %221 = call i32 @SOC15_REG_OFFSET(i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %223 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %224 = xor i32 %223, -1
  %225 = call i32 @WREG32_P(i32 %221, i32 %222, i32 %224)
  %226 = call i32 @mdelay(i32 10)
  %227 = load i32, i32* @UVD, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %230 = call i32 @SOC15_REG_OFFSET(i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %232 = xor i32 %231, -1
  %233 = call i32 @WREG32_P(i32 %230, i32 0, i32 %232)
  %234 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %12, align 4
  br label %235

235:                                              ; preds = %215
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %188

238:                                              ; preds = %214, %188
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* %11, align 4
  %243 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %2, align 4
  br label %456

245:                                              ; preds = %238
  %246 = load i32, i32* @UVD, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %249 = call i32 @SOC15_REG_OFFSET(i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %251 = load i32, i32* @UVD_MASTINT_EN__SYS_EN_MASK, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %254 = load i32, i32* @UVD_MASTINT_EN__SYS_EN_MASK, align 4
  %255 = or i32 %253, %254
  %256 = xor i32 %255, -1
  %257 = call i32 @WREG32_P(i32 %249, i32 %252, i32 %256)
  %258 = load i32, i32* @UVD, align 4
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* @mmUVD_STATUS, align 4
  %261 = call i32 @SOC15_REG_OFFSET(i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* @UVD_STATUS__VCPU_REPORT__SHIFT, align 4
  %263 = shl i32 2, %262
  %264 = xor i32 %263, -1
  %265 = call i32 @WREG32_P(i32 %261, i32 0, i32 %264)
  %266 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %267 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @order_base_2(i32 %268)
  store i32 %269, i32* %5, align 4
  %270 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %271 = load i32, i32* @RB_BUFSZ, align 4
  %272 = load i32, i32* %5, align 4
  %273 = call i32 @REG_SET_FIELD(i32 0, i32 %270, i32 %271, i32 %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %276 = load i32, i32* @RB_BLKSZ, align 4
  %277 = call i32 @REG_SET_FIELD(i32 %274, i32 %275, i32 %276, i32 1)
  store i32 %277, i32* %6, align 4
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %280 = load i32, i32* @RB_NO_FETCH, align 4
  %281 = call i32 @REG_SET_FIELD(i32 %278, i32 %279, i32 %280, i32 1)
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %284 = load i32, i32* @RB_WPTR_POLL_EN, align 4
  %285 = call i32 @REG_SET_FIELD(i32 %282, i32 %283, i32 %284, i32 0)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %288 = load i32, i32* @RB_NO_UPDATE, align 4
  %289 = call i32 @REG_SET_FIELD(i32 %286, i32 %287, i32 %288, i32 1)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %292 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %293 = call i32 @REG_SET_FIELD(i32 %290, i32 %291, i32 %292, i32 1)
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* @UVD, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i32 @WREG32_SOC15(i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i32, i32* @UVD, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @mmUVD_RBC_RB_WPTR_CNTL, align 4
  %302 = call i32 @WREG32_SOC15(i32 %299, i32 %300, i32 %301, i32 0)
  %303 = load i32, i32* @UVD, align 4
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* @mmUVD_RBC_RB_RPTR_ADDR, align 4
  %306 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %307 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @upper_32_bits(i32 %308)
  %310 = ashr i32 %309, 2
  %311 = call i32 @WREG32_SOC15(i32 %303, i32 %304, i32 %305, i32 %310)
  %312 = load i32, i32* @UVD, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %315 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %316 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @lower_32_bits(i32 %317)
  %319 = call i32 @WREG32_SOC15(i32 %312, i32 %313, i32 %314, i32 %318)
  %320 = load i32, i32* @UVD, align 4
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %323 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %324 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @upper_32_bits(i32 %325)
  %327 = call i32 @WREG32_SOC15(i32 %320, i32 %321, i32 %322, i32 %326)
  %328 = load i32, i32* @UVD, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %331 = call i32 @WREG32_SOC15(i32 %328, i32 %329, i32 %330, i32 0)
  %332 = load i32, i32* @UVD, align 4
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %335 = call i8* @RREG32_SOC15(i32 %332, i32 %333, i32 %334)
  %336 = ptrtoint i8* %335 to i32
  %337 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %338 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %337, i32 0, i32 2
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* @UVD, align 4
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %342 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %343 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @lower_32_bits(i32 %344)
  %346 = call i32 @WREG32_SOC15(i32 %339, i32 %340, i32 %341, i32 %345)
  %347 = load i32, i32* @UVD, align 4
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %350 = call i32 @SOC15_REG_OFFSET(i32 %347, i32 %348, i32 %349)
  %351 = load i32, i32* @UVD_RBC_RB_CNTL__RB_NO_FETCH_MASK, align 4
  %352 = xor i32 %351, -1
  %353 = call i32 @WREG32_P(i32 %350, i32 0, i32 %352)
  %354 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %355 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 0
  %362 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %361, align 8
  %363 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %362, i64 0
  store %struct.amdgpu_ring* %363, %struct.amdgpu_ring** %4, align 8
  %364 = load i32, i32* @UVD, align 4
  %365 = load i32, i32* %11, align 4
  %366 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %367 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %368 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @lower_32_bits(i32 %369)
  %371 = call i32 @WREG32_SOC15(i32 %364, i32 %365, i32 %366, i32 %370)
  %372 = load i32, i32* @UVD, align 4
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %375 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %376 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @lower_32_bits(i32 %377)
  %379 = call i32 @WREG32_SOC15(i32 %372, i32 %373, i32 %374, i32 %378)
  %380 = load i32, i32* @UVD, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %383 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %384 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @WREG32_SOC15(i32 %380, i32 %381, i32 %382, i32 %385)
  %387 = load i32, i32* @UVD, align 4
  %388 = load i32, i32* %11, align 4
  %389 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %390 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %391 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @upper_32_bits(i32 %392)
  %394 = call i32 @WREG32_SOC15(i32 %387, i32 %388, i32 %389, i32 %393)
  %395 = load i32, i32* @UVD, align 4
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %398 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %399 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = sdiv i32 %400, 4
  %402 = call i32 @WREG32_SOC15(i32 %395, i32 %396, i32 %397, i32 %401)
  %403 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %404 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %405, align 8
  %407 = load i32, i32* %11, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %410, align 8
  %412 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %411, i64 1
  store %struct.amdgpu_ring* %412, %struct.amdgpu_ring** %4, align 8
  %413 = load i32, i32* @UVD, align 4
  %414 = load i32, i32* %11, align 4
  %415 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %416 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %417 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @lower_32_bits(i32 %418)
  %420 = call i32 @WREG32_SOC15(i32 %413, i32 %414, i32 %415, i32 %419)
  %421 = load i32, i32* @UVD, align 4
  %422 = load i32, i32* %11, align 4
  %423 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %424 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %425 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @lower_32_bits(i32 %426)
  %428 = call i32 @WREG32_SOC15(i32 %421, i32 %422, i32 %423, i32 %427)
  %429 = load i32, i32* @UVD, align 4
  %430 = load i32, i32* %11, align 4
  %431 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %432 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %433 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @WREG32_SOC15(i32 %429, i32 %430, i32 %431, i32 %434)
  %436 = load i32, i32* @UVD, align 4
  %437 = load i32, i32* %11, align 4
  %438 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %439 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %440 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @upper_32_bits(i32 %441)
  %443 = call i32 @WREG32_SOC15(i32 %436, i32 %437, i32 %438, i32 %442)
  %444 = load i32, i32* @UVD, align 4
  %445 = load i32, i32* %11, align 4
  %446 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %447 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %448 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = sdiv i32 %449, 4
  %451 = call i32 @WREG32_SOC15(i32 %444, i32 %445, i32 %446, i32 %450)
  br label %452

452:                                              ; preds = %245, %61
  %453 = load i32, i32* %11, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %11, align 4
  br label %45

455:                                              ; preds = %45
  store i32 0, i32* %2, align 4
  br label %456

456:                                              ; preds = %455, %241
  %457 = load i32, i32* %2, align 4
  ret i32 %457
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @uvd_v7_0_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
