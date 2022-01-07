; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_init_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_init_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i64 }
%struct.ni_power_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@PPSMC_THERMAL_PROTECT_TYPE_INTERNAL = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_NONE = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_HARDWAREDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_GPIO_DC = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_REGULATOR_HOT = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_REGULATOR_HOT = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_STEPVDDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_STEPVDDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_GDDR5 = common dso_local global i32 0, align 4
@NISLANDS_INITIAL_STATE_ARB_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ni_init_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_init_smc_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.ni_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %11)
  store %struct.ni_power_info* %12, %struct.ni_power_info** %5, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %16, align 8
  store %struct.radeon_ps* %17, %struct.radeon_ps** %7, align 8
  %18 = load %struct.ni_power_info*, %struct.ni_power_info** %5, align 8
  %19 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %18, i32 0, i32 0
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_10__* %20, i32 0, i32 20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = call i32 @ni_populate_smc_voltage_tables(%struct.radeon_device* %22, %struct.TYPE_10__* %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 130, label %29
    i32 128, label %33
  ]

29:                                               ; preds = %1, %1
  %30 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_INTERNAL, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_NONE, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %29
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATOM_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @PPSMC_SYSTEMFLAG_GPIO_DC, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REGULATOR_HOT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %56
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load i32, i32* @PPSMC_SYSTEMFLAG_STEPVDDC, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %71
  %87 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %88 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @PPSMC_SYSTEMFLAG_GDDR5, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = call i32 @ni_populate_smc_initial_state(%struct.radeon_device* %98, %struct.radeon_ps* %99, %struct.TYPE_10__* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %144

106:                                              ; preds = %97
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = call i32 @ni_populate_smc_acpi_state(%struct.radeon_device* %107, %struct.TYPE_10__* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %144

114:                                              ; preds = %106
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %127 = load i32, i32* @NISLANDS_INITIAL_STATE_ARB_INDEX, align 4
  %128 = call i32 @ni_do_program_memory_timing_parameters(%struct.radeon_device* %125, %struct.radeon_ps* %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %114
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %144

133:                                              ; preds = %114
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %136 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = bitcast %struct.TYPE_10__* %138 to i32*
  %140 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %141 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %134, i32 %137, i32* %139, i32 20, i32 %142)
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %133, %131, %112, %104
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ni_populate_smc_voltage_tables(%struct.radeon_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @ni_populate_smc_initial_state(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_10__*) #1

declare dso_local i32 @ni_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @ni_do_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
