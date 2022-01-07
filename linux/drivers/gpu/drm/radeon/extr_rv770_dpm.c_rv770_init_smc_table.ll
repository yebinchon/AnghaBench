; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_init_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_init_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32, i32, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.rv7xx_ps = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@PPSMC_THERMAL_PROTECT_TYPE_INTERNAL = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_NONE = common dso_local global i32 0, align 4
@PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_HARDWAREDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_GPIO_DC = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_DONT_WAIT_FOR_VBLANK_ON_ALERT = common dso_local global i32 0, align 4
@PPSMC_EXTRAFLAGS_AC2DC_DONT_WAIT_FOR_VBLANK = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_GOTO_BOOT_ON_ALERT = common dso_local global i32 0, align 4
@PPSMC_EXTRAFLAGS_AC2DC_ACTION_GOTOINITIALSTATE = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_STEPVDDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_STEPVDDC = common dso_local global i32 0, align 4
@PPSMC_SYSTEMFLAG_GDDR5 = common dso_local global i32 0, align 4
@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@CHIP_RV740 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @rv770_init_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_init_smc_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca %struct.rv7xx_ps*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %10)
  store %struct.rv7xx_power_info* %11, %struct.rv7xx_power_info** %6, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %13 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %12)
  store %struct.rv7xx_ps* %13, %struct.rv7xx_ps** %7, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 4
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = call i32 @memset(%struct.TYPE_16__* %16, i32 0, i32 20)
  %18 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %19 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = call i32 @rv770_populate_smc_vddc_table(%struct.radeon_device* %24, %struct.TYPE_16__* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = call i32 @rv770_populate_smc_mvdd_table(%struct.radeon_device* %27, %struct.TYPE_16__* %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %43 [
    i32 128, label %34
    i32 131, label %34
    i32 129, label %38
    i32 130, label %42
  ]

34:                                               ; preds = %2, %2
  %35 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_INTERNAL, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  br label %47

38:                                               ; preds = %2
  %39 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_NONE, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  br label %47

42:                                               ; preds = %2
  br label %43

43:                                               ; preds = %2, %42
  %44 = load i32, i32* @PPSMC_THERMAL_PROTECT_TYPE_EXTERNAL, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %38, %34
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ATOM_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %47
  %57 = load i32, i32* @PPSMC_SYSTEMFLAG_GPIO_DC, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ATOM_PP_PLATFORM_CAP_DONT_WAIT_FOR_VBLANK_ON_ALERT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %56
  %71 = load i32, i32* @PPSMC_EXTRAFLAGS_AC2DC_DONT_WAIT_FOR_VBLANK, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %56
  %77 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATOM_PP_PLATFORM_CAP_GOTO_BOOT_ON_ALERT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load i32, i32* @PPSMC_EXTRAFLAGS_AC2DC_ACTION_GOTOINITIALSTATE, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %76
  br label %92

92:                                               ; preds = %91, %47
  %93 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ATOM_PP_PLATFORM_CAP_STEPVDDC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i32, i32* @PPSMC_SYSTEMFLAG_STEPVDDC, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %92
  %108 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %109 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* @PPSMC_SYSTEMFLAG_GDDR5, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CHIP_RV730, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CHIP_RV710, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124, %118
  %131 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %132 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = call i32 @rv730_populate_smc_initial_state(%struct.radeon_device* %131, %struct.radeon_ps* %132, %struct.TYPE_16__* %133)
  store i32 %134, i32* %9, align 4
  br label %140

135:                                              ; preds = %124
  %136 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %137 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = call i32 @rv770_populate_smc_initial_state(%struct.radeon_device* %136, %struct.radeon_ps* %137, %struct.TYPE_16__* %138)
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %197

145:                                              ; preds = %140
  %146 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CHIP_RV740, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %154 = call i32 @rv740_populate_smc_acpi_state(%struct.radeon_device* %152, %struct.TYPE_16__* %153)
  store i32 %154, i32* %9, align 4
  br label %176

155:                                              ; preds = %145
  %156 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CHIP_RV730, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_RV710, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161, %155
  %168 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = call i32 @rv730_populate_smc_acpi_state(%struct.radeon_device* %168, %struct.TYPE_16__* %169)
  store i32 %170, i32* %9, align 4
  br label %175

171:                                              ; preds = %161
  %172 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %174 = call i32 @rv770_populate_smc_acpi_state(%struct.radeon_device* %172, %struct.TYPE_16__* %173)
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %171, %167
  br label %176

176:                                              ; preds = %175, %151
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %3, align 4
  br label %197

181:                                              ; preds = %176
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %188 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %189 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %192 = bitcast %struct.TYPE_16__* %191 to i32*
  %193 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %194 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %187, i32 %190, i32* %192, i32 20, i32 %195)
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %181, %179, %143
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @rv770_populate_smc_vddc_table(%struct.radeon_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv770_populate_smc_mvdd_table(%struct.radeon_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv730_populate_smc_initial_state(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv770_populate_smc_initial_state(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv740_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv730_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv770_populate_smc_acpi_state(%struct.radeon_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
