; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_0.c_nbio_v7_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v7_0.c_nbio_v7_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@smnNBIF_MGCG_CTRL_LCLK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_BIF_MGCG = common dso_local global i32 0, align 4
@NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK = common dso_local global i32 0, align 4
@ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK = common dso_local global i32 0, align 4
@SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK = common dso_local global i32 0, align 4
@ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK = common dso_local global i32 0, align 4
@SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @nbio_v7_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v7_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @smnNBIF_MGCG_CTRL_LCLK, align 4
  %8 = call i32 @RREG32_PCIE(i32 %7)
  store i32 %8, i32* %6, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AMD_CG_SUPPORT_BIF_MGCG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %11, %2
  %23 = load i32, i32* @NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @smnNBIF_MGCG_CTRL_LCLK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WREG32_PCIE(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = load i32, i32* @ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK, align 4
  %38 = call i32 @nbio_7_0_read_syshub_ind_mmr(%struct.amdgpu_device* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AMD_CG_SUPPORT_BIF_MGCG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %41, %35
  %53 = load i32, i32* @SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = load i32, i32* @ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @nbio_7_0_write_syshub_ind_mmr(%struct.amdgpu_device* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = load i32, i32* @ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK, align 4
  %69 = call i32 @nbio_7_0_read_syshub_ind_mmr(%struct.amdgpu_device* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AMD_CG_SUPPORT_BIF_MGCG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %88

83:                                               ; preds = %72, %66
  %84 = load i32, i32* @SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = load i32, i32* @ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @nbio_7_0_write_syshub_ind_mmr(%struct.amdgpu_device* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  ret void
}

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @nbio_7_0_read_syshub_ind_mmr(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @nbio_7_0_write_syshub_ind_mmr(%struct.amdgpu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
