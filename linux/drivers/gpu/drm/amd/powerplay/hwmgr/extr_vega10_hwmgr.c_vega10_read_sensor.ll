; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr*, %struct.amdgpu_device* }
%struct.vega10_hwmgr = type { i32, i32, %struct.vega10_dpm_table }
%struct.vega10_dpm_table = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@PPSMC_MSG_GetAverageGfxclkActualFrequency = common dso_local global i32 0, align 4
@PPSMC_MSG_GetCurrentUclkIndex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_GetAverageGfxActivity = common dso_local global i32 0, align 4
@PPSMC_MSG_GetTemperatureHotspot = common dso_local global i32 0, align 4
@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@PPSMC_MSG_GetTemperatureHBM = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmSMUSVI0_PLANE0_CURRENTVID = common dso_local global i32 0, align 4
@SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID_MASK = common dso_local global i32 0, align 4
@SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* @vega10_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_read_sensor(%struct.pp_hwmgr* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vega10_hwmgr*, align 8
  %15 = alloca %struct.vega10_dpm_table*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %22, align 8
  store %struct.vega10_hwmgr* %23, %struct.vega10_hwmgr** %14, align 8
  %24 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  %25 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %24, i32 0, i32 2
  store %struct.vega10_dpm_table* %25, %struct.vega10_dpm_table** %15, align 8
  store i32 0, i32* %16, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %157 [
    i32 136, label %27
    i32 137, label %37
    i32 135, label %66
    i32 133, label %82
    i32 132, label %88
    i32 131, label %99
    i32 130, label %110
    i32 129, label %120
    i32 134, label %130
    i32 128, label %135
    i32 138, label %147
  ]

27:                                               ; preds = %4
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %29 = load i32, i32* @PPSMC_MSG_GetAverageGfxclkActualFrequency, align 4
  %30 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %28, i32 %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %32 = call i32 @smum_get_argument(%struct.pp_hwmgr* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 100
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %160

37:                                               ; preds = %4
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %39 = load i32, i32* @PPSMC_MSG_GetCurrentUclkIndex, align 4
  %40 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %38, i32 %39)
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %42 = call i32 @smum_get_argument(%struct.pp_hwmgr* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vega10_dpm_table*, %struct.vega10_dpm_table** %15, align 8
  %45 = getelementptr inbounds %struct.vega10_dpm_table, %struct.vega10_dpm_table* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load %struct.vega10_dpm_table*, %struct.vega10_dpm_table** %15, align 8
  %51 = getelementptr inbounds %struct.vega10_dpm_table, %struct.vega10_dpm_table* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = bitcast i8* %59 to i32*
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 4, i32* %61, align 4
  br label %65

62:                                               ; preds = %37
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %62, %49
  br label %160

66:                                               ; preds = %4
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %68 = load i32, i32* @PPSMC_MSG_GetAverageGfxActivity, align 4
  %69 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %67, i32 %68, i32 0)
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %71 = call i32 @smum_get_argument(%struct.pp_hwmgr* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 100
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ 100, %74 ], [ %76, %75 ]
  %79 = load i8*, i8** %8, align 8
  %80 = bitcast i8* %79 to i32*
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 4, i32* %81, align 4
  br label %160

82:                                               ; preds = %4
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %84 = call i32 @vega10_thermal_get_temperature(%struct.pp_hwmgr* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = bitcast i8* %85 to i32*
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 4, i32* %87, align 4
  br label %160

88:                                               ; preds = %4
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %90 = load i32, i32* @PPSMC_MSG_GetTemperatureHotspot, align 4
  %91 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %89, i32 %90)
  %92 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %93 = call i32 @smum_get_argument(%struct.pp_hwmgr* %92)
  %94 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i8*, i8** %8, align 8
  %97 = bitcast i8* %96 to i32*
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 4, i32* %98, align 4
  br label %160

99:                                               ; preds = %4
  %100 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %101 = load i32, i32* @PPSMC_MSG_GetTemperatureHBM, align 4
  %102 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %100, i32 %101)
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %104 = call i32 @smum_get_argument(%struct.pp_hwmgr* %103)
  %105 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to i32*
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 4, i32* %109, align 4
  br label %160

110:                                              ; preds = %4
  %111 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  %112 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 0, i32 1
  %117 = load i8*, i8** %8, align 8
  %118 = bitcast i8* %117 to i32*
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 4, i32* %119, align 4
  br label %160

120:                                              ; preds = %4
  %121 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %14, align 8
  %122 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 0, i32 1
  %127 = load i8*, i8** %8, align 8
  %128 = bitcast i8* %127 to i32*
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %9, align 8
  store i32 4, i32* %129, align 4
  br label %160

130:                                              ; preds = %4
  %131 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = call i32 @vega10_get_gpu_power(%struct.pp_hwmgr* %131, i32* %133)
  store i32 %134, i32* %16, align 4
  br label %160

135:                                              ; preds = %4
  %136 = load i32, i32* @SMUIO, align 4
  %137 = load i32, i32* @mmSMUSVI0_PLANE0_CURRENTVID, align 4
  %138 = call i32 @RREG32_SOC15(i32 %136, i32 0, i32 %137)
  %139 = load i32, i32* @SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @SMUSVI0_PLANE0_CURRENTVID__CURRENT_SVI0_PLANE0_VID__SHIFT, align 4
  %142 = ashr i32 %140, %141
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @convert_to_vddc(i32 %143)
  %145 = load i8*, i8** %8, align 8
  %146 = bitcast i8* %145 to i32*
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %5, align 4
  br label %162

147:                                              ; preds = %4
  %148 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = call i32 @vega10_get_enabled_smc_features(%struct.pp_hwmgr* %148, i32* %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %147
  %155 = load i32*, i32** %9, align 8
  store i32 8, i32* %155, align 4
  br label %156

156:                                              ; preds = %154, %147
  br label %160

157:                                              ; preds = %4
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %157, %156, %130, %120, %110, %99, %88, %82, %77, %65, %27
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %135
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @vega10_thermal_get_temperature(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_get_gpu_power(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @convert_to_vddc(i32) #1

declare dso_local i32 @vega10_get_enabled_smc_features(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
