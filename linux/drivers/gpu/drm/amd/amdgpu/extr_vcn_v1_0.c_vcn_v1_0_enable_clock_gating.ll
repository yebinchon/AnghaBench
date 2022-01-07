; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_enable_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_enable_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@VCN = common dso_local global i32 0, align 4
@mmJPEG_CGC_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_VCN_MGCG = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmJPEG_CGC_GATE = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG_MASK = common dso_local global i32 0, align 4
@JPEG_CGC_GATE__JPEG2_MASK = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v1_0_enable_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_enable_clock_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
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
  %19 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %20 = shl i32 0, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
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
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @VCN, align 4
  %45 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @WREG32_SOC15(i32 %44, i32 0, i32 %45, i32 %46)
  %48 = load i32, i32* @VCN, align 4
  %49 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %50 = call i32 @RREG32_SOC15(i32 %48, i32 0, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %23
  %58 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %67

62:                                               ; preds = %23
  %63 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %64 = shl i32 0, %63
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %73 = shl i32 4, %72
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @VCN, align 4
  %77 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @WREG32_SOC15(i32 %76, i32 0, i32 %77, i32 %78)
  %80 = load i32, i32* @VCN, align 4
  %81 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %82 = call i32 @RREG32_SOC15(i32 %80, i32 0, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %84 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @UVD_CGC_CTRL__SCPU_MODE_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* @VCN, align 4
  %125 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @WREG32_SOC15(i32 %124, i32 0, i32 %125, i32 %126)
  %128 = load i32, i32* @VCN, align 4
  %129 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %130 = call i32 @RREG32_SOC15(i32 %128, i32 0, i32 %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* @UVD_SUVD_CGC_CTRL__SRE_MODE_MASK, align 4
  %132 = load i32, i32* @UVD_SUVD_CGC_CTRL__SIT_MODE_MASK, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @UVD_SUVD_CGC_CTRL__SMP_MODE_MASK, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCM_MODE_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @UVD_SUVD_CGC_CTRL__SDB_MODE_MASK, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCLR_MODE_MASK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @UVD_SUVD_CGC_CTRL__UVD_SC_MODE_MASK, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @UVD_SUVD_CGC_CTRL__ENT_MODE_MASK, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @UVD_SUVD_CGC_CTRL__IME_MODE_MASK, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @UVD_SUVD_CGC_CTRL__SITE_MODE_MASK, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* @VCN, align 4
  %153 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @WREG32_SOC15(i32 %152, i32 0, i32 %153, i32 %154)
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
