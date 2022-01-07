; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_enable_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_enable_clock_gating.c"
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
@UVD_SUVD_CGC_GATE__SRE_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SRE_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SIT_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SCM_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_H264_MASK = common dso_local global i32 0, align 4
@UVD_SUVD_CGC_GATE__SDB_HEVC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__SYS_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__UDEC_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__MPEG2_MASK = common dso_local global i32 0, align 4
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
@UVD_CGC_GATE__JPEG_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__SCPU_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__JPEG2_MASK = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@UVD_CGC_GATE__VCPU_MASK = common dso_local global i32 0, align 4
@UVD_CGC_GATE__REGS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @uvd_v6_0_enable_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v6_0_enable_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_MASK, align 4
  %12 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @UVD_SUVD_CGC_GATE__SMP_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_H264_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UVD_SUVD_CGC_GATE__SRE_HEVC_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_H264_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UVD_SUVD_CGC_GATE__SIT_HEVC_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_H264_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @UVD_SUVD_CGC_GATE__SCM_HEVC_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_H264_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UVD_SUVD_CGC_GATE__SDB_HEVC_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %2
  %41 = load i32, i32* @UVD_CGC_GATE__SYS_MASK, align 4
  %42 = load i32, i32* @UVD_CGC_GATE__UDEC_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @UVD_CGC_GATE__MPEG2_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UVD_CGC_GATE__RBC_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UVD_CGC_GATE__LMI_MC_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @UVD_CGC_GATE__LMI_UMC_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UVD_CGC_GATE__IDCT_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UVD_CGC_GATE__MPRD_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @UVD_CGC_GATE__MPC_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UVD_CGC_GATE__LBSI_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @UVD_CGC_GATE__LRBBM_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @UVD_CGC_GATE__UDEC_RE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @UVD_CGC_GATE__UDEC_CM_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UVD_CGC_GATE__UDEC_IT_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @UVD_CGC_GATE__UDEC_DB_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @UVD_CGC_GATE__UDEC_MP_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @UVD_CGC_GATE__WCB_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @UVD_CGC_GATE__JPEG_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @UVD_CGC_GATE__SCPU_MASK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @UVD_CGC_GATE__JPEG2_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %40
  %89 = load i32, i32* @UVD_CGC_GATE__VCPU_MASK, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %40
  %93 = load i32, i32* @UVD_CGC_GATE__REGS_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %98

97:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* @mmUVD_SUVD_CGC_GATE, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  %102 = load i32, i32* @mmUVD_CGC_GATE, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @WREG32(i32 %102, i32 %103)
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
