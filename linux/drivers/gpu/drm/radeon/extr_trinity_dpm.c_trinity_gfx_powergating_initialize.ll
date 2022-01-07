; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_gfx_powergating_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_gfx_powergating_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_power_info = type { i64 }
%struct.atom_clock_dividers = type { i32 }

@HW_REV = common dso_local global i32 0, align 4
@ATI_REV_ID_MASK = common dso_local global i64 0, align 8
@ATI_REV_ID_SHIFT = common dso_local global i64 0, align 8
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@GFX_POWER_GATING_CNTL = common dso_local global i32 0, align 4
@SSSD_MASK = common dso_local global i64 0, align 8
@PDS_DIV_MASK = common dso_local global i64 0, align 8
@CG_PG_CTRL = common dso_local global i32 0, align 4
@CG_GIPOTS = common dso_local global i32 0, align 4
@CG_GIPOT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @trinity_gfx_powergating_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_gfx_powergating_initialize(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.trinity_power_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atom_clock_dividers, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %12)
  store %struct.trinity_power_info* %13, %struct.trinity_power_info** %3, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i64 @radeon_get_xclk(%struct.radeon_device* %14)
  store i64 %15, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %16 = load i32, i32* @HW_REV, align 4
  %17 = call i64 @RREG32(i32 %16)
  %18 = load i64, i64* @ATI_REV_ID_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @ATI_REV_ID_SHIFT, align 8
  %21 = ashr i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %24 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %22, i32 %23, i32 25000, i32 0, %struct.atom_clock_dividers* %7)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %77

28:                                               ; preds = %1
  %29 = load i32, i32* @GFX_POWER_GATING_CNTL, align 4
  %30 = call i64 @RREG32_SMC(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* @SSSD_MASK, align 8
  %32 = load i64, i64* @PDS_DIV_MASK, align 8
  %33 = or i64 %31, %32
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = call i64 @SSSD(i32 1)
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %39, %28
  %44 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @PDS_DIV(i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* @GFX_POWER_GATING_CNTL, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @WREG32_SMC(i32 %49, i64 %50)
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @r600_calculate_u_and_p(i32 500, i64 %52, i32 16, i64* %4, i64* %5)
  %54 = load i32, i32* @CG_PG_CTRL, align 4
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @SP(i64 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @SU(i64 %57)
  %59 = or i32 %56, %58
  %60 = call i32 @WREG32(i32 %54, i32 %59)
  %61 = load i32, i32* @CG_GIPOTS, align 4
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @CG_GIPOT(i64 %62)
  %64 = load i32, i32* @CG_GIPOT_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = call i32 @WREG32_P(i32 %61, i32 %63, i32 %65)
  %67 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %68 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %43
  %72 = load i64, i64* %11, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = call i32 @trinity_override_dynamic_mg_powergating(%struct.radeon_device* %75)
  br label %77

77:                                               ; preds = %27, %74, %71, %43
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i64 @RREG32_SMC(i32) #1

declare dso_local i64 @SSSD(i32) #1

declare dso_local i64 @PDS_DIV(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i64) #1

declare dso_local i32 @r600_calculate_u_and_p(i32, i64, i32, i64*, i64*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SP(i64) #1

declare dso_local i32 @SU(i64) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @CG_GIPOT(i64) #1

declare dso_local i32 @trinity_override_dynamic_mg_powergating(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
