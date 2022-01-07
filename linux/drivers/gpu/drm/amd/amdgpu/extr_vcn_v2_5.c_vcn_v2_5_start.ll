; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_MASK = common dso_local global i32 0, align 4
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
@mmUVD_GFX8_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__STALL_ARB_UMC_MASK = common dso_local global i32 0, align 4
@mmUVD_RB_ARB_CTRL = common dso_local global i32 0, align 4
@UVD_RB_ARB_CTRL__VCPU_DIS_MASK = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__BLK_RST_MASK = common dso_local global i32 0, align 4
@amdgpu_emu_mode = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v2_5_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_5_start(%struct.amdgpu_device* %0) #0 {
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
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %48, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %12
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %48

29:                                               ; preds = %19
  %30 = load i32, i32* @UVD, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %33 = call i32 @SOC15_REG_OFFSET(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @WREG32_P(i32 %33, i32 0, i32 %35)
  %37 = load i32, i32* @UVD, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @mmUVD_STATUS, align 4
  %40 = call i32 @RREG32_SOC15(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @UVD_STATUS__UVD_BUSY, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @UVD, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @mmUVD_STATUS, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32_SOC15(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %29, %28
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %12

51:                                               ; preds = %12
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = call i32 @vcn_v2_5_disable_clock_gating(%struct.amdgpu_device* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %166, %51
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %169

61:                                               ; preds = %54
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %166

71:                                               ; preds = %61
  %72 = load i32, i32* @UVD, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %75 = call i32 @SOC15_REG_OFFSET(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %77 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = call i32 @WREG32_P(i32 %75, i32 %76, i32 %78)
  %80 = load i32, i32* @UVD, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %83 = call i32 @SOC15_REG_OFFSET(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = call i32 @WREG32_P(i32 %83, i32 0, i32 %85)
  %87 = load i32, i32* @UVD, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %90 = call i32 @RREG32_SOC15(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, -256
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @UVD, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 8
  %98 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @UVD_LMI_CTRL__MASK_MC_URGENT_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @WREG32_SOC15(i32 %93, i32 %94, i32 %95, i32 %105)
  %107 = load i32, i32* @UVD, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %110 = call i32 @RREG32_SOC15(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT, align 4
  %116 = shl i32 2, %115
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @VCN, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @mmUVD_MPC_CNTL, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @WREG32_SOC15(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @UVD, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @mmUVD_MPC_SET_MUXA0, align 4
  %127 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_1__SHIFT, align 4
  %128 = shl i32 1, %127
  %129 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_2__SHIFT, align 4
  %130 = shl i32 2, %129
  %131 = or i32 %128, %130
  %132 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_3__SHIFT, align 4
  %133 = shl i32 3, %132
  %134 = or i32 %131, %133
  %135 = load i32, i32* @UVD_MPC_SET_MUXA0__VARA_4__SHIFT, align 4
  %136 = shl i32 4, %135
  %137 = or i32 %134, %136
  %138 = call i32 @WREG32_SOC15(i32 %124, i32 %125, i32 %126, i32 %137)
  %139 = load i32, i32* @UVD, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @mmUVD_MPC_SET_MUXB0, align 4
  %142 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_1__SHIFT, align 4
  %143 = shl i32 1, %142
  %144 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_2__SHIFT, align 4
  %145 = shl i32 2, %144
  %146 = or i32 %143, %145
  %147 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_3__SHIFT, align 4
  %148 = shl i32 3, %147
  %149 = or i32 %146, %148
  %150 = load i32, i32* @UVD_MPC_SET_MUXB0__VARB_4__SHIFT, align 4
  %151 = shl i32 4, %150
  %152 = or i32 %149, %151
  %153 = call i32 @WREG32_SOC15(i32 %139, i32 %140, i32 %141, i32 %152)
  %154 = load i32, i32* @UVD, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @mmUVD_MPC_SET_MUX, align 4
  %157 = load i32, i32* @UVD_MPC_SET_MUX__SET_0__SHIFT, align 4
  %158 = shl i32 0, %157
  %159 = load i32, i32* @UVD_MPC_SET_MUX__SET_1__SHIFT, align 4
  %160 = shl i32 1, %159
  %161 = or i32 %158, %160
  %162 = load i32, i32* @UVD_MPC_SET_MUX__SET_2__SHIFT, align 4
  %163 = shl i32 2, %162
  %164 = or i32 %161, %163
  %165 = call i32 @WREG32_SOC15(i32 %154, i32 %155, i32 %156, i32 %164)
  br label %166

166:                                              ; preds = %71, %70
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %54

169:                                              ; preds = %54
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %171 = call i32 @vcn_v2_5_mc_resume(%struct.amdgpu_device* %170)
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %479, %169
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %175 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %482

179:                                              ; preds = %172
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = shl i32 1, %184
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %479

189:                                              ; preds = %179
  %190 = load i32, i32* @UVD, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @mmUVD_GFX8_ADDR_CONFIG, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @WREG32_SOC15(i32 %190, i32 %191, i32 %192, i32 %197)
  %199 = load i32, i32* @UVD, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @mmUVD_GFX8_ADDR_CONFIG, align 4
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @WREG32_SOC15(i32 %199, i32 %200, i32 %201, i32 %206)
  %208 = load i32, i32* @UVD, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %211 = call i32 @SOC15_REG_OFFSET(i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %213 = xor i32 %212, -1
  %214 = call i32 @WREG32_P(i32 %211, i32 0, i32 %213)
  %215 = load i32, i32* @UVD, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @mmUVD_RB_ARB_CTRL, align 4
  %218 = call i32 @SOC15_REG_OFFSET(i32 %215, i32 %216, i32 %217)
  %219 = load i32, i32* @UVD_RB_ARB_CTRL__VCPU_DIS_MASK, align 4
  %220 = xor i32 %219, -1
  %221 = call i32 @WREG32_P(i32 %218, i32 0, i32 %220)
  %222 = load i32, i32* @UVD, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %225 = call i32 @SOC15_REG_OFFSET(i32 %222, i32 %223, i32 %224)
  %226 = load i32, i32* @UVD_VCPU_CNTL__BLK_RST_MASK, align 4
  %227 = xor i32 %226, -1
  %228 = call i32 @WREG32_P(i32 %225, i32 0, i32 %227)
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %280, %189
  %230 = load i32, i32* %9, align 4
  %231 = icmp slt i32 %230, 10
  br i1 %231, label %232, label %283

232:                                              ; preds = %229
  store i32 0, i32* %8, align 4
  br label %233

233:                                              ; preds = %253, %232
  %234 = load i32, i32* %8, align 4
  %235 = icmp slt i32 %234, 100
  br i1 %235, label %236, label %256

236:                                              ; preds = %233
  %237 = load i32, i32* @UVD, align 4
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @mmUVD_STATUS, align 4
  %240 = call i32 @RREG32_SOC15(i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = and i32 %241, 2
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  br label %256

245:                                              ; preds = %236
  %246 = load i32, i32* @amdgpu_emu_mode, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 @msleep(i32 500)
  br label %252

250:                                              ; preds = %245
  %251 = call i32 @mdelay(i32 10)
  br label %252

252:                                              ; preds = %250, %248
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %233

256:                                              ; preds = %244, %233
  store i32 0, i32* %10, align 4
  %257 = load i32, i32* %11, align 4
  %258 = and i32 %257, 2
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %283

261:                                              ; preds = %256
  %262 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %263 = load i32, i32* @UVD, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %266 = call i32 @SOC15_REG_OFFSET(i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* @UVD_VCPU_CNTL__BLK_RST_MASK, align 4
  %268 = load i32, i32* @UVD_VCPU_CNTL__BLK_RST_MASK, align 4
  %269 = xor i32 %268, -1
  %270 = call i32 @WREG32_P(i32 %266, i32 %267, i32 %269)
  %271 = call i32 @mdelay(i32 10)
  %272 = load i32, i32* @UVD, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %275 = call i32 @SOC15_REG_OFFSET(i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* @UVD_VCPU_CNTL__BLK_RST_MASK, align 4
  %277 = xor i32 %276, -1
  %278 = call i32 @WREG32_P(i32 %275, i32 0, i32 %277)
  %279 = call i32 @mdelay(i32 10)
  store i32 -1, i32* %10, align 4
  br label %280

280:                                              ; preds = %261
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %9, align 4
  br label %229

283:                                              ; preds = %260, %229
  %284 = load i32, i32* %10, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %288 = load i32, i32* %10, align 4
  store i32 %288, i32* %2, align 4
  br label %486

289:                                              ; preds = %283
  %290 = load i32, i32* @UVD, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %293 = call i32 @SOC15_REG_OFFSET(i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %295 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %296 = xor i32 %295, -1
  %297 = call i32 @WREG32_P(i32 %293, i32 %294, i32 %296)
  %298 = load i32, i32* @UVD, align 4
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* @mmUVD_STATUS, align 4
  %301 = call i32 @SOC15_REG_OFFSET(i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* @UVD_STATUS__VCPU_REPORT__SHIFT, align 4
  %303 = shl i32 2, %302
  %304 = xor i32 %303, -1
  %305 = call i32 @WREG32_P(i32 %301, i32 0, i32 %304)
  %306 = load i32, i32* @UVD, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* @mmUVD_LMI_RBC_RB_VMID, align 4
  %309 = call i32 @WREG32_SOC15(i32 %306, i32 %307, i32 %308, i32 0)
  %310 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %311 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 1
  store %struct.amdgpu_ring* %317, %struct.amdgpu_ring** %4, align 8
  %318 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %319 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @order_base_2(i32 %320)
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %323 = load i32, i32* @RB_BUFSZ, align 4
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @REG_SET_FIELD(i32 0, i32 %322, i32 %323, i32 %324)
  store i32 %325, i32* %6, align 4
  %326 = load i32, i32* %6, align 4
  %327 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %328 = load i32, i32* @RB_BLKSZ, align 4
  %329 = call i32 @REG_SET_FIELD(i32 %326, i32 %327, i32 %328, i32 1)
  store i32 %329, i32* %6, align 4
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %332 = load i32, i32* @RB_NO_FETCH, align 4
  %333 = call i32 @REG_SET_FIELD(i32 %330, i32 %331, i32 %332, i32 1)
  store i32 %333, i32* %6, align 4
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %336 = load i32, i32* @RB_NO_UPDATE, align 4
  %337 = call i32 @REG_SET_FIELD(i32 %334, i32 %335, i32 %336, i32 1)
  store i32 %337, i32* %6, align 4
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %340 = load i32, i32* @RB_RPTR_WR_EN, align 4
  %341 = call i32 @REG_SET_FIELD(i32 %338, i32 %339, i32 %340, i32 1)
  store i32 %341, i32* %6, align 4
  %342 = load i32, i32* @UVD, align 4
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @WREG32_SOC15(i32 %342, i32 %343, i32 %344, i32 %345)
  %347 = load i32, i32* @UVD, align 4
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_LOW, align 4
  %350 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %351 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @lower_32_bits(i32 %352)
  %354 = call i32 @WREG32_SOC15(i32 %347, i32 %348, i32 %349, i32 %353)
  %355 = load i32, i32* @UVD, align 4
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* @mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH, align 4
  %358 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %359 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @upper_32_bits(i32 %360)
  %362 = call i32 @WREG32_SOC15(i32 %355, i32 %356, i32 %357, i32 %361)
  %363 = load i32, i32* @UVD, align 4
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %366 = call i32 @WREG32_SOC15(i32 %363, i32 %364, i32 %365, i32 0)
  %367 = load i32, i32* @UVD, align 4
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %370 = call i32 @RREG32_SOC15(i32 %367, i32 %368, i32 %369)
  %371 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %372 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %371, i32 0, i32 2
  store i32 %370, i32* %372, align 4
  %373 = load i32, i32* @UVD, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %376 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %377 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @lower_32_bits(i32 %378)
  %380 = call i32 @WREG32_SOC15(i32 %373, i32 %374, i32 %375, i32 %379)
  %381 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %382 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %383, align 8
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 0
  %389 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %388, align 8
  %390 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %389, i64 0
  store %struct.amdgpu_ring* %390, %struct.amdgpu_ring** %4, align 8
  %391 = load i32, i32* @UVD, align 4
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %394 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %395 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @lower_32_bits(i32 %396)
  %398 = call i32 @WREG32_SOC15(i32 %391, i32 %392, i32 %393, i32 %397)
  %399 = load i32, i32* @UVD, align 4
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %402 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %403 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @lower_32_bits(i32 %404)
  %406 = call i32 @WREG32_SOC15(i32 %399, i32 %400, i32 %401, i32 %405)
  %407 = load i32, i32* @UVD, align 4
  %408 = load i32, i32* %7, align 4
  %409 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %410 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %411 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @WREG32_SOC15(i32 %407, i32 %408, i32 %409, i32 %412)
  %414 = load i32, i32* @UVD, align 4
  %415 = load i32, i32* %7, align 4
  %416 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %417 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %418 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @upper_32_bits(i32 %419)
  %421 = call i32 @WREG32_SOC15(i32 %414, i32 %415, i32 %416, i32 %420)
  %422 = load i32, i32* @UVD, align 4
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %425 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %426 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = sdiv i32 %427, 4
  %429 = call i32 @WREG32_SOC15(i32 %422, i32 %423, i32 %424, i32 %428)
  %430 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %431 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 2
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %432, align 8
  %434 = load i32, i32* %7, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 0
  %438 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %437, align 8
  %439 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %438, i64 1
  store %struct.amdgpu_ring* %439, %struct.amdgpu_ring** %4, align 8
  %440 = load i32, i32* @UVD, align 4
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %443 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %444 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @lower_32_bits(i32 %445)
  %447 = call i32 @WREG32_SOC15(i32 %440, i32 %441, i32 %442, i32 %446)
  %448 = load i32, i32* @UVD, align 4
  %449 = load i32, i32* %7, align 4
  %450 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %451 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %452 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @lower_32_bits(i32 %453)
  %455 = call i32 @WREG32_SOC15(i32 %448, i32 %449, i32 %450, i32 %454)
  %456 = load i32, i32* @UVD, align 4
  %457 = load i32, i32* %7, align 4
  %458 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %459 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %460 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @WREG32_SOC15(i32 %456, i32 %457, i32 %458, i32 %461)
  %463 = load i32, i32* @UVD, align 4
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %466 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %467 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @upper_32_bits(i32 %468)
  %470 = call i32 @WREG32_SOC15(i32 %463, i32 %464, i32 %465, i32 %469)
  %471 = load i32, i32* @UVD, align 4
  %472 = load i32, i32* %7, align 4
  %473 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %474 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %475 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = sdiv i32 %476, 4
  %478 = call i32 @WREG32_SOC15(i32 %471, i32 %472, i32 %473, i32 %477)
  br label %479

479:                                              ; preds = %289, %188
  %480 = load i32, i32* %7, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %7, align 4
  br label %172

482:                                              ; preds = %172
  %483 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %484 = call i32 @jpeg_v2_5_start(%struct.amdgpu_device* %483)
  store i32 %484, i32* %10, align 4
  %485 = load i32, i32* %10, align 4
  store i32 %485, i32* %2, align 4
  br label %486

486:                                              ; preds = %482, %286
  %487 = load i32, i32* %2, align 4
  ret i32 %487
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vcn_v2_5_disable_clock_gating(%struct.amdgpu_device*) #1

declare dso_local i32 @vcn_v2_5_mc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @jpeg_v2_5_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
