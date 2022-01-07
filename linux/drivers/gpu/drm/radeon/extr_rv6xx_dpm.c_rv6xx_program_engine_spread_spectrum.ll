; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_engine_spread_spectrum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_engine_spread_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rv6xx_power_info = type { i32, i64 }
%struct.atom_clock_dividers = type { i32 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @rv6xx_program_engine_spread_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_engine_spread_spectrum(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rv6xx_power_info*, align 8
  %9 = alloca %struct.atom_clock_dividers, align 4
  %10 = alloca %struct.radeon_atom_ss, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %19)
  store %struct.rv6xx_power_info* %20, %struct.rv6xx_power_info** %8, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rv6xx_enable_engine_spread_spectrum(%struct.radeon_device* %21, i32 %22, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %3
  %27 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %8, align 8
  %28 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %26
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @radeon_atom_get_clock_dividers(%struct.radeon_device* %32, i32 %33, i32 %34, i32 0, %struct.atom_clock_dividers* %9)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %8, align 8
  %40 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rv6xx_calculate_vco_frequency(i32 %38, %struct.atom_clock_dividers* %9, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %44 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %43, %struct.radeon_atom_ss* %10, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %50, %53
  %55 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %8, align 8
  %60 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rv6xx_calculate_spread_spectrum_clk_v(i32 %49, i32 %54, i32 %56, i32 %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = sdiv i32 %65, %68
  %70 = call i32 @rv6xx_calculate_spread_spectrum_clk_s(i32 %64, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @rv6xx_set_engine_spread_spectrum_clk_v(%struct.radeon_device* %71, i32 %72, i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @rv6xx_set_engine_spread_spectrum_clk_s(%struct.radeon_device* %75, i32 %76, i32 %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @rv6xx_enable_engine_spread_spectrum(%struct.radeon_device* %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %48, %37
  br label %83

83:                                               ; preds = %82, %31
  br label %84

84:                                               ; preds = %83, %26, %3
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_engine_spread_spectrum(%struct.radeon_device*, i32, i32) #1

declare dso_local i64 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @rv6xx_calculate_vco_frequency(i32, %struct.atom_clock_dividers*, i32) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @rv6xx_calculate_spread_spectrum_clk_v(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rv6xx_calculate_spread_spectrum_clk_s(i32, i32) #1

declare dso_local i32 @rv6xx_set_engine_spread_spectrum_clk_v(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv6xx_set_engine_spread_spectrum_clk_s(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
