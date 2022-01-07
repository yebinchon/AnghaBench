; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_init_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_init_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @cypress_init_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_init_smc_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %6, align 8
  %11 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %12 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %11, i32 0, i32 3
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = call i32 @memset(%struct.TYPE_10__* %13, i32 0, i32 16)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i32 @cypress_populate_smc_voltage_tables(%struct.radeon_device* %15, %struct.TYPE_10__* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 129, label %22
    i32 130, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_INTERNAL, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_NONE, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26, %22
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATOM_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @PPSMC_SYSTEMFLAG_GPIO_DC, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REGULATOR_HOT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %49
  %65 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* @PPSMC_SYSTEMFLAG_STEPVDDC, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %64
  %80 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %81 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @PPSMC_SYSTEMFLAG_GDDR5, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %92 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = call i32 @cypress_populate_smc_initial_state(%struct.radeon_device* %91, %struct.radeon_ps* %92, %struct.TYPE_10__* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %123

99:                                               ; preds = %90
  %100 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = call i32 @cypress_populate_smc_acpi_state(%struct.radeon_device* %100, %struct.TYPE_10__* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %123

107:                                              ; preds = %99
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %114 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %115 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = bitcast %struct.TYPE_10__* %117 to i32*
  %119 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %120 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %113, i32 %116, i32* %118, i32 16, i32 %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %107, %105, %97
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @cypress_populate_smc_voltage_tables(%struct.radeon_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @cypress_populate_smc_initial_state(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_10__*) #1

declare dso_local i32 @cypress_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
