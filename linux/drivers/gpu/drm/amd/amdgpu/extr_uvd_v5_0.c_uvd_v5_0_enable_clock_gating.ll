; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_enable_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_enable_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmUVD_SUVD_CGC_GATE = common dso_local global i32 0, align 4
@mmUVD_CGC_GATE = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SRE_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SMP_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__SYS_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__MPEG2_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__RBC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__LMI_MC_MASK = common dso_local global i32 0, align 4
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
@UVD_CGC_GATE__JPEG_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__SCPU_MASK = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@UVD_CGC_GATE__VCPU_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__REGS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @uvd_v5_0_enable_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v5_0_enable_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_MASK, align 4
  %13 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @UVD_SUVD_CGC_GATE__SMP_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_MASK, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %2
  %24 = load i32, i32* @UVD_CGC_GATE__SYS_MASK, align 4
  %25 = load i32, i32* @UVD_CGC_GATE__UDEC_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @UVD_CGC_GATE__MPEG2_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @UVD_CGC_GATE__RBC_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UVD_CGC_GATE__LMI_MC_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UVD_CGC_GATE__IDCT_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UVD_CGC_GATE__MPRD_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UVD_CGC_GATE__MPC_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UVD_CGC_GATE__LBSI_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @UVD_CGC_GATE__LRBBM_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @UVD_CGC_GATE__UDEC_RE_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @UVD_CGC_GATE__UDEC_CM_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @UVD_CGC_GATE__UDEC_IT_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @UVD_CGC_GATE__UDEC_DB_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @UVD_CGC_GATE__UDEC_MP_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @UVD_CGC_GATE__WCB_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @UVD_CGC_GATE__JPEG_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @UVD_CGC_GATE__SCPU_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %23
  %68 = load i32, i32* @UVD_CGC_GATE__VCPU_MASK, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* @UVD_CGC_GATE__REGS_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %71
  %81 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  %84 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
