; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_clock_gating_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_clock_gating_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_VCN_MGCG = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT = common dso_local global i32 0, align 4
@JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmJPEG_CGC_CTRL = common dso_local global i32 0, align 4
@mmJPEG_CGC_GATE = common dso_local global i32 0, align 4
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
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@mmUVD_CGC_GATE = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_GATE = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @vcn_v1_0_clock_gating_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_clock_gating_dpg_mode(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %17 = shl i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %24 = shl i32 4, %23
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @UVD, align 4
  %28 = load i32, i32* @mmJPEG_CGC_CTRL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WREG32_SOC15_DPG_MODE(i32 %27, i32 0, i32 %28, i32 %29, i32 -1, i32 %30)
  %32 = load i32, i32* @UVD, align 4
  %33 = load i32, i32* @mmJPEG_CGC_GATE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @WREG32_SOC15_DPG_MODE(i32 %32, i32 0, i32 %33, i32 0, i32 -1, i32 %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %44 = shl i32 1, %43
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %18
  %46 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %47 = shl i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %54 = shl i32 4, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %58 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @UVD_CGC_CTRL__SCPU_MODE_MASK, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @UVD, align 4
  %100 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @WREG32_SOC15_DPG_MODE(i32 %99, i32 0, i32 %100, i32 %101, i32 -1, i32 %102)
  %104 = load i32, i32* @UVD, align 4
  %105 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @WREG32_SOC15_DPG_MODE(i32 %104, i32 0, i32 %105, i32 0, i32 -1, i32 %106)
  %108 = load i32, i32* @UVD, align 4
  %109 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @WREG32_SOC15_DPG_MODE(i32 %108, i32 0, i32 %109, i32 1, i32 -1, i32 %110)
  %112 = load i32, i32* @UVD, align 4
  %113 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @WREG32_SOC15_DPG_MODE(i32 %112, i32 0, i32 %113, i32 0, i32 -1, i32 %114)
  ret void
}

declare dso_local i32 @WREG32_SOC15_DPG_MODE(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
