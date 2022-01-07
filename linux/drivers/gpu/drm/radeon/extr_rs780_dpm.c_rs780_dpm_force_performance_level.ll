; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.igp_power_info = type { i64, i32, i32 }
%struct.igp_ps = type { i64, i64 }
%struct.atom_clock_dividers = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@FVTHROT_FBDIV_REG1 = common dso_local global i32 0, align 4
@FORCE_FEEDBACK_DIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs780_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.igp_power_info*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.igp_ps*, align 8
  %9 = alloca %struct.atom_clock_dividers, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %11)
  store %struct.igp_power_info* %12, %struct.igp_power_info** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %16, align 8
  store %struct.radeon_ps* %17, %struct.radeon_ps** %7, align 8
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %19 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %18)
  store %struct.igp_ps* %19, %struct.igp_ps** %8, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = call i32 @rs780_clk_scaling_enable(%struct.radeon_device* %20, i32 0)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = call i32 @rs780_voltage_scaling_enable(%struct.radeon_device* %22, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %29 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %35 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @rs780_force_voltage(%struct.radeon_device* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %41 = load %struct.igp_ps*, %struct.igp_ps** %8, align 8
  %42 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %39, i32 %40, i64 %43, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %130

49:                                               ; preds = %38
  %50 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %51 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rs780_force_fbdiv(%struct.radeon_device* %50, i32 %52)
  br label %124

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %60 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %61 = load %struct.igp_ps*, %struct.igp_ps** %8, align 8
  %62 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %59, i32 %60, i64 %63, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %130

69:                                               ; preds = %58
  %70 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %71 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @rs780_force_fbdiv(%struct.radeon_device* %70, i32 %72)
  %74 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %75 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %81 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rs780_force_voltage(%struct.radeon_device* %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %69
  br label %123

85:                                               ; preds = %54
  %86 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %87 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %92 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %93 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @rs780_force_voltage(%struct.radeon_device* %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.igp_ps*, %struct.igp_ps** %8, align 8
  %98 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.igp_ps*, %struct.igp_ps** %8, align 8
  %101 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load i32, i32* @FVTHROT_FBDIV_REG1, align 4
  %106 = load i32, i32* @FORCE_FEEDBACK_DIV, align 4
  %107 = xor i32 %106, -1
  %108 = call i32 @WREG32_P(i32 %105, i32 0, i32 %107)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %110 = call i32 @rs780_clk_scaling_enable(%struct.radeon_device* %109, i32 1)
  br label %111

111:                                              ; preds = %104, %96
  %112 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %113 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %118 = call i32 @rs780_voltage_scaling_enable(%struct.radeon_device* %117, i32 1)
  %119 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %120 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %121 = call i32 @rs780_enable_voltage_scaling(%struct.radeon_device* %119, %struct.radeon_ps* %120)
  br label %122

122:                                              ; preds = %116, %111
  br label %123

123:                                              ; preds = %122, %84
  br label %124

124:                                              ; preds = %123, %49
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 8
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %67, %47
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @rs780_clk_scaling_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rs780_voltage_scaling_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rs780_force_voltage(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i64, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @rs780_force_fbdiv(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @rs780_enable_voltage_scaling(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
