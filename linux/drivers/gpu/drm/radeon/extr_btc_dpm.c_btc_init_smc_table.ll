; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_init_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_init_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.evergreen_power_info = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }

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
@SCLK_PSKIP_CNTL = common dso_local global i32 0, align 4
@PSKIP_ON_ALLOW_STOP_HI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @btc_init_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_init_smc_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca %struct.evergreen_power_info*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %10)
  store %struct.rv7xx_power_info* %11, %struct.rv7xx_power_info** %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %12)
  store %struct.evergreen_power_info* %13, %struct.evergreen_power_info** %7, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 3
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = call i32 @memset(%struct.TYPE_13__* %16, i32 0, i32 16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = call i32 @cypress_populate_smc_voltage_tables(%struct.radeon_device* %18, %struct.TYPE_13__* %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 129, label %25
    i32 130, label %25
    i32 128, label %29
  ]

25:                                               ; preds = %2, %2
  %26 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_INTERNAL, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_NONE, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29, %25
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATOM_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @PPSMC_SYSTEMFLAG_GPIO_DC, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATOM_PP_PLATFORM_CAP_REGULATOR_HOT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @PPSMC_SYSTEMFLAG_REGULATOR_HOT, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %52
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i32, i32* @PPSMC_SYSTEMFLAG_STEPVDDC, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %67
  %83 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %84 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @PPSMC_SYSTEMFLAG_GDDR5, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %95 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = call i32 @cypress_populate_smc_initial_state(%struct.radeon_device* %94, %struct.radeon_ps* %95, %struct.TYPE_13__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %154

102:                                              ; preds = %93
  %103 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %104 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @SCLK_PSKIP_CNTL, align 4
  %109 = call i32 @PSKIP_ON_ALLOW_STOP_HI(i32 32)
  %110 = load i32, i32* @PSKIP_ON_ALLOW_STOP_HI_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = call i32 @WREG32_P(i32 %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = call i32 @btc_populate_smc_acpi_state(%struct.radeon_device* %114, %struct.TYPE_13__* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %154

121:                                              ; preds = %113
  %122 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %123 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %130 = call i32 @btc_populate_ulv_state(%struct.radeon_device* %128, %struct.TYPE_13__* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %135 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %127
  br label %138

138:                                              ; preds = %137, %121
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %145 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %146 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = bitcast %struct.TYPE_13__* %148 to i32*
  %150 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %151 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %144, i32 %147, i32* %149, i32 16, i32 %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %138, %119, %100
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @cypress_populate_smc_voltage_tables(%struct.radeon_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @cypress_populate_smc_initial_state(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_13__*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @PSKIP_ON_ALLOW_STOP_HI(i32) #1

declare dso_local i32 @btc_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @btc_populate_ulv_state(%struct.radeon_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
