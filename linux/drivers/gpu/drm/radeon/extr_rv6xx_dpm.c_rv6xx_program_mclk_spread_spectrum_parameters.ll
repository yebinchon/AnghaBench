; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_mclk_spread_spectrum_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_mclk_spread_spectrum_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rv6xx_power_info = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32* }
%struct.atom_clock_dividers = type { i32 }
%struct.radeon_atom_ss = type { i32, i32 }

@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_mclk_spread_spectrum_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_mclk_spread_spectrum_parameters(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv6xx_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_clock_dividers, align 4
  %6 = alloca %struct.radeon_atom_ss, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %10)
  store %struct.rv6xx_power_info* %11, %struct.rv6xx_power_info** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @rv6xx_enable_memory_spread_spectrum(%struct.radeon_device* %17, i32 0)
  %19 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %1
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %30 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @rv6xx_find_memory_clock_with_highest_vco(%struct.radeon_device* %24, i32 %34, i32 %35, %struct.atom_clock_dividers* %5, i32* %7)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %39 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %43 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @rv6xx_find_memory_clock_with_highest_vco(%struct.radeon_device* %37, i32 %47, i32 %48, %struct.atom_clock_dividers* %5, i32* %7)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %52 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %56 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @rv6xx_find_memory_clock_with_highest_vco(%struct.radeon_device* %50, i32 %60, i32 %61, %struct.atom_clock_dividers* %5, i32* %7)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %103

65:                                               ; preds = %23
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %66, %struct.radeon_atom_ss* %6, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = sdiv i32 %73, %76
  %78 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %3, align 8
  %83 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @rv6xx_calculate_spread_spectrum_clk_v(i32 %72, i32 %77, i32 %79, i32 %81, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = sdiv i32 %88, %91
  %93 = call i32 @rv6xx_calculate_spread_spectrum_clk_s(i32 %87, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @rv6xx_set_memory_spread_spectrum_clk_v(%struct.radeon_device* %94, i32 %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @rv6xx_set_memory_spread_spectrum_clk_s(%struct.radeon_device* %97, i32 %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = call i32 @rv6xx_enable_memory_spread_spectrum(%struct.radeon_device* %100, i32 1)
  br label %102

102:                                              ; preds = %71, %65
  br label %103

103:                                              ; preds = %102, %23
  br label %104

104:                                              ; preds = %103, %1
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_enable_memory_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_find_memory_clock_with_highest_vco(%struct.radeon_device*, i32, i32, %struct.atom_clock_dividers*, i32*) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @rv6xx_calculate_spread_spectrum_clk_v(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rv6xx_calculate_spread_spectrum_clk_s(i32, i32) #1

declare dso_local i32 @rv6xx_set_memory_spread_spectrum_clk_v(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv6xx_set_memory_spread_spectrum_clk_s(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
