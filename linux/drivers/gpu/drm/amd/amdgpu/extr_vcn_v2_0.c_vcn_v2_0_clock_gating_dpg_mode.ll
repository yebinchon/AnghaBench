; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_clock_gating_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_clock_gating_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

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
@UVD_CGC_CTRL__SCPU_MODE_MASK = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@mmUVD_CGC_GATE = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_GATE = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @vcn_v2_0_clock_gating_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_0_clock_gating_dpg_mode(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AMD_CG_SUPPORT_VCN_MGCG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %7, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE__SHIFT, align 4
  %19 = shl i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY__SHIFT, align 4
  %26 = shl i32 4, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %30 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UVD_CGC_CTRL__SCPU_MODE_MASK, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @UVD, align 4
  %72 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %73 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %71, i32 0, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* @UVD, align 4
  %79 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %80 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %78, i32 0, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %80, i32 0, i32 %81, i32 %82)
  %84 = load i32, i32* @UVD, align 4
  %85 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %86 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %84, i32 0, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %86, i32 1, i32 %87, i32 %88)
  %90 = load i32, i32* @UVD, align 4
  %91 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %92 = call i32 @SOC15_DPG_MODE_OFFSET_2_0(i32 %90, i32 0, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @WREG32_SOC15_DPG_MODE_2_0(i32 %92, i32 0, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @WREG32_SOC15_DPG_MODE_2_0(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_DPG_MODE_OFFSET_2_0(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
