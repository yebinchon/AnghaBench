; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_set_sw_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_set_sw_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@mmUVD_SUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__CLK_GATE_DLY_TIMER_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL = common dso_local global i32 0, align 4
@CLK_GATE_DLY_TIMER = common dso_local global i32 0, align 4
@CLK_OFF_DELAY = common dso_local global i32 0, align 4
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
@UVD_CGC_CTRL__JPEG_MODE_MASK = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__SCPU_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SRE_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SIT_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SMP_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SCM_MODE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_CTRL__SDB_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @uvd_v5_0_set_sw_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v5_0_set_sw_clock_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @UVD_CGC_CTRL__CLK_OFF_DELAY_MASK, align 4
  %10 = load i32, i32* @UVD_CGC_CTRL__CLK_GATE_DLY_TIMER_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %16 = load i32, i32* @UVD_CGC_CTRL, align 4
  %17 = load i32, i32* @CLK_GATE_DLY_TIMER, align 4
  %18 = call i32 @REG_FIELD_SHIFT(i32 %16, i32 %17)
  %19 = shl i32 1, %18
  %20 = or i32 %15, %19
  %21 = load i32, i32* @UVD_CGC_CTRL, align 4
  %22 = load i32, i32* @CLK_OFF_DELAY, align 4
  %23 = call i32 @REG_FIELD_SHIFT(i32 %21, i32 %22)
  %24 = shl i32 4, %23
  %25 = or i32 %20, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @UVD_CGC_CTRL__UDEC_RE_MODE_MASK, align 4
  %29 = load i32, i32* @UVD_CGC_CTRL__UDEC_CM_MODE_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UVD_CGC_CTRL__UDEC_IT_MODE_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UVD_CGC_CTRL__UDEC_DB_MODE_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UVD_CGC_CTRL__UDEC_MP_MODE_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UVD_CGC_CTRL__SYS_MODE_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UVD_CGC_CTRL__UDEC_MODE_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UVD_CGC_CTRL__MPEG2_MODE_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @UVD_CGC_CTRL__REGS_MODE_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @UVD_CGC_CTRL__RBC_MODE_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @UVD_CGC_CTRL__LMI_MC_MODE_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @UVD_CGC_CTRL__LMI_UMC_MODE_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @UVD_CGC_CTRL__IDCT_MODE_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @UVD_CGC_CTRL__MPRD_MODE_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @UVD_CGC_CTRL__MPC_MODE_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @UVD_CGC_CTRL__LBSI_MODE_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @UVD_CGC_CTRL__LRBBM_MODE_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @UVD_CGC_CTRL__WCB_MODE_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @UVD_CGC_CTRL__VCPU_MODE_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @UVD_CGC_CTRL__JPEG_MODE_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @UVD_CGC_CTRL__SCPU_MODE_MASK, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @UVD_SUVD_CGC_CTRL__SRE_MODE_MASK, align 4
  %73 = load i32, i32* @UVD_SUVD_CGC_CTRL__SIT_MODE_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @UVD_SUVD_CGC_CTRL__SMP_MODE_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @UVD_SUVD_CGC_CTRL__SCM_MODE_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @UVD_SUVD_CGC_CTRL__SDB_MODE_MASK, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load i32, i32* @mmUVD_SUVD_CGC_CTRL, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @WREG32(i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_FIELD_SHIFT(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
