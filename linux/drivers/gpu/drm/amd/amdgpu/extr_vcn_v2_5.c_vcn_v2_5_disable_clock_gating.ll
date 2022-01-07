; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_disable_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_disable_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VCN = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_VCN_MGCG = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmUVD_CGC_GATE = common dso_local global i32 0, align 4
@UVD_CGC_GATE__SYS_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__MPEG2_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__REGS_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__RBC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__LMI_MC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__LMI_UMC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__IDCT_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__MPRD_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__MPC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__LBSI_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__LRBBM_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_RE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_CM_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_IT_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_DB_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_MP_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__WCB_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__VCPU_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__MMSCH_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__UDEC_RE_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__UDEC_CM_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__UDEC_IT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__UDEC_DB_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__UDEC_MP_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__SYS_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__UDEC_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__MPEG2_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__REGS_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__RBC_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__LMI_MC_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__LMI_UMC_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__IDCT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__MPRD_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__MPC_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__LBSI_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__LRBBM_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__WCB_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__VCPU_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__MMSCH_MODE_MASK = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_GATE = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SRE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SMP_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SRE_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SRE_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCLR_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__UVD_SC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__ENT_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_HEVC_DEC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_HEVC_ENC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SITE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SRE_VP9_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_VP9_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_VP9_DEC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_VP9_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__IME_HEVC_MASK = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SRE_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SIT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SMP_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SCM_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SDB_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SCLR_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__UVD_SC_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__ENT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__IME_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SITE_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v2_5_disable_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_5_disable_clock_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %254, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %257

13:                                               ; preds = %6
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %254

23:                                               ; preds = %13
  %24 = load i32, i32* @VCN, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %27 = call i32 @RREG32_SOC15(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %23
  %40 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %50 = shl i32 4, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @VCN, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @WREG32_SOC15(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @VCN, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %61 = call i32 @RREG32_SOC15(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @UVD_CGC_GATE__SYS_MASK, align 4
  %63 = load i32, i32* @UVD_CGC_GATE__UDEC_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @UVD_CGC_GATE__MPEG2_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @UVD_CGC_GATE__REGS_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @UVD_CGC_GATE__RBC_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @UVD_CGC_GATE__LMI_MC_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @UVD_CGC_GATE__LMI_UMC_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @UVD_CGC_GATE__IDCT_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @UVD_CGC_GATE__MPRD_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @UVD_CGC_GATE__MPC_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @UVD_CGC_GATE__LBSI_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @UVD_CGC_GATE__LRBBM_MASK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @UVD_CGC_GATE__UDEC_RE_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @UVD_CGC_GATE__UDEC_CM_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @UVD_CGC_GATE__UDEC_IT_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @UVD_CGC_GATE__UDEC_DB_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @UVD_CGC_GATE__UDEC_MP_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UVD_CGC_GATE__WCB_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @UVD_CGC_GATE__VCPU_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @UVD_CGC_GATE__MMSCH_MASK, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %3, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* @VCN, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @WREG32_SOC15(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @VCN, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @SOC15_WAIT_ON_RREG(i32 %109, i32 %110, i32 %111, i32 0, i32 -1, i32 %112)
  %114 = load i32, i32* @VCN, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %117 = call i32 @RREG32_SOC15(i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %119 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @UVD_CGC_CTRL__MMSCH_MODE_MASK, align 4
  %156 = or i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %3, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %3, align 4
  %160 = load i32, i32* @VCN, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @WREG32_SOC15(i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* @VCN, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %168 = call i32 @RREG32_SOC15(i32 %165, i32 %166, i32 %167)
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_MASK, align 4
  %170 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_MASK, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @UVD_SUVD_CGC_GATE__SMP_MASK, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_MASK, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_MASK, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_H264_MASK, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_HEVC_MASK, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_H264_MASK, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_MASK, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_H264_MASK, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_HEVC_MASK, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_H264_MASK, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_HEVC_MASK, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @UVD_SUVD_CGC_GATE__SCLR_MASK, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @UVD_SUVD_CGC_GATE__UVD_SC_MASK, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @UVD_SUVD_CGC_GATE__ENT_MASK, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_DEC_MASK, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_ENC_MASK, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @UVD_SUVD_CGC_GATE__SITE_MASK, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_VP9_MASK, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_VP9_MASK, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_VP9_DEC_MASK, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_VP9_MASK, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @UVD_SUVD_CGC_GATE__IME_HEVC_MASK, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %3, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* @VCN, align 4
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @WREG32_SOC15(i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* @VCN, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %226 = call i32 @RREG32_SOC15(i32 %223, i32 %224, i32 %225)
  store i32 %226, i32* %3, align 4
  %227 = load i32, i32* @UVD_SUVD_CGC_CTRL__SRE_MODE_MASK, align 4
  %228 = load i32, i32* @UVD_SUVD_CGC_CTRL__SIT_MODE_MASK, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @UVD_SUVD_CGC_CTRL__SMP_MODE_MASK, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCM_MODE_MASK, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @UVD_SUVD_CGC_CTRL__SDB_MODE_MASK, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCLR_MODE_MASK, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @UVD_SUVD_CGC_CTRL__UVD_SC_MODE_MASK, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @UVD_SUVD_CGC_CTRL__ENT_MODE_MASK, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @UVD_SUVD_CGC_CTRL__IME_MODE_MASK, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @UVD_SUVD_CGC_CTRL__SITE_MODE_MASK, align 4
  %245 = or i32 %243, %244
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %3, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %3, align 4
  %249 = load i32, i32* @VCN, align 4
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @WREG32_SOC15(i32 %249, i32 %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %44, %22
  %255 = load i32, i32* %5, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %5, align 4
  br label %6

257:                                              ; preds = %6
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
