; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_pause_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_pause_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.dpg_pause_state = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"dpg pause state changed %d:%d -> %d:%d\00", align 1
@UVD = common dso_local global i32 0, align 4
@mmUVD_DPG_PAUSE = common dso_local global i32 0, align 4
@UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK = common dso_local global i32 0, align 4
@VCN_DPG_STATE__PAUSE = common dso_local global i64 0, align 8
@UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO2 = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI2 = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE2 = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR2 = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_SCRATCH2 = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__JRBC_SNOOP_DIS_MASK = common dso_local global i32 0, align 4
@UVD_DPG_PAUSE__JPEG_PAUSE_DPG_REQ_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_VMID = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_CNTL = common dso_local global i32 0, align 4
@UVD_JRBC_RB_CNTL__RB_NO_FETCH_MASK = common dso_local global i32 0, align 4
@UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.dpg_pause_state*)* @vcn_v1_0_pause_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v1_0_pause_dpg_mode(%struct.amdgpu_device* %0, %struct.dpg_pause_state* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.dpg_pause_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.dpg_pause_state* %1, %struct.dpg_pause_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %15 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %194

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %30 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %33 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %28, i64 %31, i64 %34)
  %36 = load i32, i32* @UVD, align 4
  %37 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %38 = call i32 @RREG32_SOC15(i32 %36, i32 0, i32 %37)
  %39 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %43 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VCN_DPG_STATE__PAUSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %177

47:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @UVD, align 4
  %54 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %55 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF, align 4
  %56 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @SOC15_WAIT_ON_RREG(i32 %53, i32 0, i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %176, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @UVD, align 4
  %67 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WREG32_SOC15(i32 %66, i32 0, i32 %67, i32 %68)
  %70 = load i32, i32* @UVD, align 4
  %71 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %72 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %73 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @SOC15_WAIT_ON_RREG(i32 %70, i32 0, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %80, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %81, i64 0
  store %struct.amdgpu_ring* %82, %struct.amdgpu_ring** %8, align 8
  %83 = load i32, i32* @UVD, align 4
  %84 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @WREG32_SOC15(i32 %83, i32 0, i32 %84, i32 %87)
  %89 = load i32, i32* @UVD, align 4
  %90 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %92 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @upper_32_bits(i32 %93)
  %95 = call i32 @WREG32_SOC15(i32 %89, i32 0, i32 %90, i32 %94)
  %96 = load i32, i32* @UVD, align 4
  %97 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %99 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 4
  %102 = call i32 @WREG32_SOC15(i32 %96, i32 0, i32 %97, i32 %101)
  %103 = load i32, i32* @UVD, align 4
  %104 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %105 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %106 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @lower_32_bits(i32 %107)
  %109 = call i32 @WREG32_SOC15(i32 %103, i32 0, i32 %104, i32 %108)
  %110 = load i32, i32* @UVD, align 4
  %111 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %112 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %113 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lower_32_bits(i32 %114)
  %116 = call i32 @WREG32_SOC15(i32 %110, i32 0, i32 %111, i32 %115)
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %121, align 8
  %123 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %122, i64 1
  store %struct.amdgpu_ring* %123, %struct.amdgpu_ring** %8, align 8
  %124 = load i32, i32* @UVD, align 4
  %125 = load i32, i32* @mmUVD_RB_BASE_LO2, align 4
  %126 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %127 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @WREG32_SOC15(i32 %124, i32 0, i32 %125, i32 %128)
  %130 = load i32, i32* @UVD, align 4
  %131 = load i32, i32* @mmUVD_RB_BASE_HI2, align 4
  %132 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %133 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @upper_32_bits(i32 %134)
  %136 = call i32 @WREG32_SOC15(i32 %130, i32 0, i32 %131, i32 %135)
  %137 = load i32, i32* @UVD, align 4
  %138 = load i32, i32* @mmUVD_RB_SIZE2, align 4
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %140 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 4
  %143 = call i32 @WREG32_SOC15(i32 %137, i32 0, i32 %138, i32 %142)
  %144 = load i32, i32* @UVD, align 4
  %145 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %146 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %147 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @lower_32_bits(i32 %148)
  %150 = call i32 @WREG32_SOC15(i32 %144, i32 0, i32 %145, i32 %149)
  %151 = load i32, i32* @UVD, align 4
  %152 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %154 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @lower_32_bits(i32 %155)
  %157 = call i32 @WREG32_SOC15(i32 %151, i32 0, i32 %152, i32 %156)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store %struct.amdgpu_ring* %162, %struct.amdgpu_ring** %8, align 8
  %163 = load i32, i32* @UVD, align 4
  %164 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %165 = load i32, i32* @UVD, align 4
  %166 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %167 = call i32 @RREG32_SOC15(i32 %165, i32 0, i32 %166)
  %168 = and i32 %167, 2147483647
  %169 = call i32 @WREG32_SOC15(i32 %163, i32 0, i32 %164, i32 %168)
  %170 = load i32, i32* @UVD, align 4
  %171 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %172 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON, align 4
  %173 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @SOC15_WAIT_ON_RREG(i32 %170, i32 0, i32 %171, i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %62, %59
  br label %186

177:                                              ; preds = %18
  %178 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %6, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* @UVD, align 4
  %183 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @WREG32_SOC15(i32 %182, i32 0, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %177, %176
  %187 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %188 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i64 %189, i64* %193, align 8
  br label %194

194:                                              ; preds = %186, %2
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %201 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %199, %202
  br i1 %203, label %204, label %352

204:                                              ; preds = %194
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %216 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %219 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %209, i64 %214, i64 %217, i64 %220)
  %222 = load i32, i32* @UVD, align 4
  %223 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %224 = call i32 @RREG32_SOC15(i32 %222, i32 0, i32 %223)
  %225 = load i32, i32* @UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK, align 4
  %226 = xor i32 %225, -1
  %227 = and i32 %224, %226
  store i32 %227, i32* %6, align 4
  %228 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %229 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @VCN_DPG_STATE__PAUSE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %335

233:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @UVD, align 4
  %240 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %241 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF, align 4
  %242 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @SOC15_WAIT_ON_RREG(i32 %239, i32 0, i32 %240, i32 %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %238, %233
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %334, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* @UVD, align 4
  %250 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %251 = call i32 @RREG32_SOC15(i32 %249, i32 0, i32 %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* @UVD_POWER_STATUS__JRBC_SNOOP_DIS_MASK, align 4
  %253 = load i32, i32* %7, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* @UVD, align 4
  %256 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @WREG32_SOC15(i32 %255, i32 0, i32 %256, i32 %257)
  %259 = load i32, i32* @UVD_DPG_PAUSE__JPEG_PAUSE_DPG_REQ_MASK, align 4
  %260 = load i32, i32* %6, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* @UVD, align 4
  %263 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %264 = load i32, i32* %6, align 4
  %265 = call i32 @WREG32_SOC15(i32 %262, i32 0, i32 %263, i32 %264)
  %266 = load i32, i32* @UVD, align 4
  %267 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %268 = load i32, i32* @UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK, align 4
  %269 = load i32, i32* @UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK, align 4
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @SOC15_WAIT_ON_RREG(i32 %266, i32 0, i32 %267, i32 %268, i32 %269, i32 %270)
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %273 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  store %struct.amdgpu_ring* %276, %struct.amdgpu_ring** %8, align 8
  %277 = load i32, i32* @UVD, align 4
  %278 = load i32, i32* @mmUVD_LMI_JRBC_RB_VMID, align 4
  %279 = call i32 @WREG32_SOC15(i32 %277, i32 0, i32 %278, i32 0)
  %280 = load i32, i32* @UVD, align 4
  %281 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %282 = load i32, i32* @UVD_JRBC_RB_CNTL__RB_NO_FETCH_MASK, align 4
  %283 = load i32, i32* @UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @WREG32_SOC15(i32 %280, i32 0, i32 %281, i32 %284)
  %286 = load i32, i32* @UVD, align 4
  %287 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW, align 4
  %288 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %289 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @lower_32_bits(i32 %290)
  %292 = call i32 @WREG32_SOC15(i32 %286, i32 0, i32 %287, i32 %291)
  %293 = load i32, i32* @UVD, align 4
  %294 = load i32, i32* @mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH, align 4
  %295 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %296 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @upper_32_bits(i32 %297)
  %299 = call i32 @WREG32_SOC15(i32 %293, i32 0, i32 %294, i32 %298)
  %300 = load i32, i32* @UVD, align 4
  %301 = load i32, i32* @mmUVD_JRBC_RB_RPTR, align 4
  %302 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %303 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @WREG32_SOC15(i32 %300, i32 0, i32 %301, i32 %304)
  %306 = load i32, i32* @UVD, align 4
  %307 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %308 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %309 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @WREG32_SOC15(i32 %306, i32 0, i32 %307, i32 %310)
  %312 = load i32, i32* @UVD, align 4
  %313 = load i32, i32* @mmUVD_JRBC_RB_CNTL, align 4
  %314 = load i32, i32* @UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK, align 4
  %315 = call i32 @WREG32_SOC15(i32 %312, i32 0, i32 %313, i32 %314)
  %316 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %317 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  store %struct.amdgpu_ring* %320, %struct.amdgpu_ring** %8, align 8
  %321 = load i32, i32* @UVD, align 4
  %322 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %323 = load i32, i32* @UVD, align 4
  %324 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %325 = call i32 @RREG32_SOC15(i32 %323, i32 0, i32 %324)
  %326 = and i32 %325, 2147483647
  %327 = call i32 @WREG32_SOC15(i32 %321, i32 0, i32 %322, i32 %326)
  %328 = load i32, i32* @UVD, align 4
  %329 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %330 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON, align 4
  %331 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %332 = load i32, i32* %5, align 4
  %333 = call i32 @SOC15_WAIT_ON_RREG(i32 %328, i32 0, i32 %329, i32 %330, i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %248, %245
  br label %344

335:                                              ; preds = %204
  %336 = load i32, i32* @UVD_DPG_PAUSE__JPEG_PAUSE_DPG_REQ_MASK, align 4
  %337 = xor i32 %336, -1
  %338 = load i32, i32* %6, align 4
  %339 = and i32 %338, %337
  store i32 %339, i32* %6, align 4
  %340 = load i32, i32* @UVD, align 4
  %341 = load i32, i32* @mmUVD_DPG_PAUSE, align 4
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @WREG32_SOC15(i32 %340, i32 0, i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %335, %334
  %345 = load %struct.dpg_pause_state*, %struct.dpg_pause_state** %4, align 8
  %346 = getelementptr inbounds %struct.dpg_pause_state, %struct.dpg_pause_state* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %349 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 1
  store i64 %347, i64* %351, align 8
  br label %352

352:                                              ; preds = %344, %194
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
