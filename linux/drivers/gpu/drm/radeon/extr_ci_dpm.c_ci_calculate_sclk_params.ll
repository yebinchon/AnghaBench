; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_calculate_sclk_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_calculate_sclk_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64 }
%struct.ci_power_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i32, i32, i64 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_GPUCLK_INPUT_FLAG_SCLK = common dso_local global i32 0, align 4
@SPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_DITHEN = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@CLK_S_MASK = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@CLK_V_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, %struct.TYPE_9__*)* @ci_calculate_sclk_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_calculate_sclk_params(%struct.radeon_device* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.ci_power_info*, align 8
  %9 = alloca %struct.atom_clock_dividers, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.radeon_atom_ss, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %22)
  store %struct.ci_power_info* %23, %struct.ci_power_info** %8, align 8
  %24 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %25 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %29 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %33 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %37 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %46 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_SCLK, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %45, i32 %46, i32 %47, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %4, align 4
  br label %141

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 1, %55
  store i32 %56, i32* %15, align 4
  %57 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 67108863
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @SPLL_FB_DIV_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @SPLL_FB_DIV(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @SPLL_DITHEN, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ci_power_info*, %struct.ci_power_info** %8, align 8
  %72 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %53
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %76, %78
  store i32 %79, i32* %19, align 4
  %80 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %81 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %80, %struct.radeon_atom_ss* %18, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 %86, 5
  %88 = load i32, i32* %15, align 4
  %89 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %18, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %88, %90
  %92 = sdiv i32 %87, %91
  store i32 %92, i32* %20, align 4
  %93 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %18, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 4, %94
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %20, align 4
  %99 = mul nsw i32 %98, 10000
  %100 = sdiv i32 %97, %99
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* @CLK_S_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %20, align 4
  %106 = call i32 @CLK_S(i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* @SSEN, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* @CLK_V_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %21, align 4
  %117 = call i32 @CLK_V(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %85, %75
  br label %121

121:                                              ; preds = %120, %53
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %121, %51
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @SPLL_FB_DIV(i32) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @CLK_S(i32) #1

declare dso_local i32 @CLK_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
