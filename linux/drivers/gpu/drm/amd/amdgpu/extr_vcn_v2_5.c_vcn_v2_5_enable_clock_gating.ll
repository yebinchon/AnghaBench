; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_enable_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_enable_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VCN = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_VCN_MGCG = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v2_5_enable_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_5_enable_clock_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %135, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %138

12:                                               ; preds = %5
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %135

22:                                               ; preds = %12
  %23 = load i32, i32* @VCN, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %26 = call i32 @RREG32_SOC15(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %40 = shl i32 0, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %49 = shl i32 4, %48
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @VCN, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @WREG32_SOC15(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @VCN, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %60 = call i32 @RREG32_SOC15(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %62 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* @VCN, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @WREG32_SOC15(i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* @VCN, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %108 = call i32 @RREG32_SOC15(i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* @UVD_SUVD_CGC_CTRL__SRE_MODE_MASK, align 4
  %110 = load i32, i32* @UVD_SUVD_CGC_CTRL__SIT_MODE_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @UVD_SUVD_CGC_CTRL__SMP_MODE_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCM_MODE_MASK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @UVD_SUVD_CGC_CTRL__SDB_MODE_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCLR_MODE_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @UVD_SUVD_CGC_CTRL__UVD_SC_MODE_MASK, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @UVD_SUVD_CGC_CTRL__ENT_MODE_MASK, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @UVD_SUVD_CGC_CTRL__IME_MODE_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @UVD_SUVD_CGC_CTRL__SITE_MODE_MASK, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @VCN, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @WREG32_SOC15(i32 %130, i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %43, %21
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %5

138:                                              ; preds = %5
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
