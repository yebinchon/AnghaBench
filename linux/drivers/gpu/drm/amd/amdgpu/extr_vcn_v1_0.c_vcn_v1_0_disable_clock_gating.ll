; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_disable_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_disable_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@VCN = common dso_local global i32 0, align 4
@mmJPEG_CGC_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_VCN_MGCG = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmJPEG_CGC_GATE = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG2_MASK = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
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
@UVD_CGC_GATE__SCPU_MASK = common dso_local global i32 0, align 4
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
@UVD_CGC_CTRL__SCPU_MODE_MASK = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v1_0_disable_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_disable_clock_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @VCN, align 4
  %5 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %6 = call i32 @RREG32_SOC15(i32 %4, i32 0, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %29 = shl i32 4, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @VCN, align 4
  %33 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @WREG32_SOC15(i32 %32, i32 0, i32 %33, i32 %34)
  %36 = load i32, i32* @VCN, align 4
  %37 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %38 = call i32 @RREG32_SOC15(i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @JPEG_CGC_GATE__JPEG_MASK, align 4
  %40 = load i32, i32* @JPEG_CGC_GATE__JPEG2_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @VCN, align 4
  %46 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32_SOC15(i32 %45, i32 0, i32 %46, i32 %47)
  %49 = load i32, i32* @VCN, align 4
  %50 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %51 = call i32 @RREG32_SOC15(i32 %49, i32 0, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %23
  %59 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %23
  %64 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %74 = shl i32 4, %73
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @VCN, align 4
  %78 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @WREG32_SOC15(i32 %77, i32 0, i32 %78, i32 %79)
  %81 = load i32, i32* @VCN, align 4
  %82 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %83 = call i32 @RREG32_SOC15(i32 %81, i32 0, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* @UVD_CGC_GATE__SYS_MASK, align 4
  %85 = load i32, i32* @UVD_CGC_GATE__UDEC_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @UVD_CGC_GATE__MPEG2_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @UVD_CGC_GATE__REGS_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @UVD_CGC_GATE__RBC_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @UVD_CGC_GATE__LMI_MC_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UVD_CGC_GATE__LMI_UMC_MASK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @UVD_CGC_GATE__IDCT_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @UVD_CGC_GATE__MPRD_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @UVD_CGC_GATE__MPC_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @UVD_CGC_GATE__LBSI_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @UVD_CGC_GATE__LRBBM_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @UVD_CGC_GATE__UDEC_RE_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @UVD_CGC_GATE__UDEC_CM_MASK, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @UVD_CGC_GATE__UDEC_IT_MASK, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @UVD_CGC_GATE__UDEC_DB_MASK, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @UVD_CGC_GATE__UDEC_MP_MASK, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @UVD_CGC_GATE__WCB_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @UVD_CGC_GATE__VCPU_MASK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @UVD_CGC_GATE__SCPU_MASK, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %3, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* @VCN, align 4
  %127 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @WREG32_SOC15(i32 %126, i32 0, i32 %127, i32 %128)
  %130 = load i32, i32* @VCN, align 4
  %131 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %132 = call i32 @RREG32_SOC15(i32 %130, i32 0, i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %134 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @UVD_CGC_CTRL__SCPU_MODE_MASK, align 4
  %171 = or i32 %169, %170
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %3, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* @VCN, align 4
  %176 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @WREG32_SOC15(i32 %175, i32 0, i32 %176, i32 %177)
  %179 = load i32, i32* @VCN, align 4
  %180 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %181 = call i32 @RREG32_SOC15(i32 %179, i32 0, i32 %180)
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_MASK, align 4
  %183 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_MASK, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @UVD_SUVD_CGC_GATE__SMP_MASK, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_MASK, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_MASK, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_H264_MASK, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_HEVC_MASK, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_H264_MASK, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_MASK, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_H264_MASK, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_HEVC_MASK, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_H264_MASK, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_HEVC_MASK, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @UVD_SUVD_CGC_GATE__SCLR_MASK, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @UVD_SUVD_CGC_GATE__UVD_SC_MASK, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @UVD_SUVD_CGC_GATE__ENT_MASK, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_DEC_MASK, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_ENC_MASK, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @UVD_SUVD_CGC_GATE__SITE_MASK, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_VP9_MASK, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_VP9_MASK, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_VP9_DEC_MASK, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_VP9_MASK, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @UVD_SUVD_CGC_GATE__IME_HEVC_MASK, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* %3, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %3, align 4
  %231 = load i32, i32* @VCN, align 4
  %232 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %233 = load i32, i32* %3, align 4
  %234 = call i32 @WREG32_SOC15(i32 %231, i32 0, i32 %232, i32 %233)
  %235 = load i32, i32* @VCN, align 4
  %236 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %237 = call i32 @RREG32_SOC15(i32 %235, i32 0, i32 %236)
  store i32 %237, i32* %3, align 4
  %238 = load i32, i32* @UVD_SUVD_CGC_CTRL__SRE_MODE_MASK, align 4
  %239 = load i32, i32* @UVD_SUVD_CGC_CTRL__SIT_MODE_MASK, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @UVD_SUVD_CGC_CTRL__SMP_MODE_MASK, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCM_MODE_MASK, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @UVD_SUVD_CGC_CTRL__SDB_MODE_MASK, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCLR_MODE_MASK, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @UVD_SUVD_CGC_CTRL__UVD_SC_MODE_MASK, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @UVD_SUVD_CGC_CTRL__ENT_MODE_MASK, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @UVD_SUVD_CGC_CTRL__IME_MODE_MASK, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @UVD_SUVD_CGC_CTRL__SITE_MODE_MASK, align 4
  %256 = or i32 %254, %255
  %257 = xor i32 %256, -1
  %258 = load i32, i32* %3, align 4
  %259 = and i32 %258, %257
  store i32 %259, i32* %3, align 4
  %260 = load i32, i32* @VCN, align 4
  %261 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @WREG32_SOC15(i32 %260, i32 0, i32 %261, i32 %262)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
