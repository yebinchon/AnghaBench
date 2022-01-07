; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v6_1.c_nbio_v6_1_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nbio_v6_1.c_nbio_v6_1_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@smnCPM_CONTROL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_BIF_MGCG = common dso_local global i32 0, align 4
@CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@CPM_CONTROL__TXCLK_PERM_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @nbio_v6_1_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbio_v6_1_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @smnCPM_CONTROL, align 4
  %8 = call i32 @RREG32_PCIE(i32 %7)
  store i32 %8, i32* %6, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AMD_CG_SUPPORT_BIF_MGCG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32, i32* @CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK, align 4
  %20 = load i32, i32* @CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CPM_CONTROL__TXCLK_PERM_GATE_ENABLE_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %51

34:                                               ; preds = %11, %2
  %35 = load i32, i32* @CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK, align 4
  %36 = load i32, i32* @CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CPM_CONTROL__TXCLK_PERM_GATE_ENABLE_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %34, %18
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @smnCPM_CONTROL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @WREG32_PCIE(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  ret void
}

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
