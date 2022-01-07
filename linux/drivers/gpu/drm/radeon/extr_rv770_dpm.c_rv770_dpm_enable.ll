; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"rv770_construct_vddc_table failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"rv770_get_mvdd_configuration failed\0A\00", align 1
@ATOM_PP_PLATFORM_CAP_BACKBIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rv770_upload_firmware failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rv770_init_smc_table failed\0A\00", align 1
@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %7)
  store %struct.rv7xx_power_info* %8, %struct.rv7xx_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %12, align 8
  store %struct.radeon_ps* %13, %struct.radeon_ps** %5, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @rv770_restore_cgcg(%struct.radeon_device* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i64 @rv770_dpm_enabled(%struct.radeon_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %173

28:                                               ; preds = %21
  %29 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %30 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @rv770_enable_voltage_control(%struct.radeon_device* %34, i32 1)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @rv770_construct_vddc_table(%struct.radeon_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %173

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %46 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = call i32 @rv770_retrieve_odt_values(%struct.radeon_device* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = call i32 @rv770_get_mvdd_configuration(%struct.radeon_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %173

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATOM_PP_PLATFORM_CAP_BACKBIAS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = call i32 @rv770_enable_backbias(%struct.radeon_device* %76, i32 1)
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = call i32 @rv770_enable_spread_spectrum(%struct.radeon_device* %79, i32 1)
  %81 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %86, i32 1)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = call i32 @rv770_program_mpll_timing_parameters(%struct.radeon_device* %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = call i32 @rv770_setup_bsp(%struct.radeon_device* %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = call i32 @rv770_program_git(%struct.radeon_device* %93)
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = call i32 @rv770_program_tp(%struct.radeon_device* %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = call i32 @rv770_program_tpp(%struct.radeon_device* %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @rv770_program_sstp(%struct.radeon_device* %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = call i32 @rv770_program_engine_speed_parameters(%struct.radeon_device* %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @rv770_enable_display_gap(%struct.radeon_device* %103)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = call i32 @rv770_program_vc(%struct.radeon_device* %105)
  %107 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %88
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = call i32 @rv770_enable_dynamic_pcie_gen2(%struct.radeon_device* %112, i32 1)
  br label %114

114:                                              ; preds = %111, %88
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = call i32 @rv770_upload_firmware(%struct.radeon_device* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %173

122:                                              ; preds = %114
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %125 = call i32 @rv770_init_smc_table(%struct.radeon_device* %123, %struct.radeon_ps* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %173

131:                                              ; preds = %122
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = call i32 @rv770_program_response_times(%struct.radeon_device* %132)
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = call i32 @r7xx_start_smc(%struct.radeon_device* %134)
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CHIP_RV730, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %131
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CHIP_RV710, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141, %131
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = call i32 @rv730_start_dpm(%struct.radeon_device* %148)
  br label %153

150:                                              ; preds = %141
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = call i32 @rv770_start_dpm(%struct.radeon_device* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %155 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = call i32 @rv770_gfx_clock_gating_enable(%struct.radeon_device* %159, i32 1)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %163 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %168 = call i32 @rv770_mg_clock_gating_enable(%struct.radeon_device* %167, i32 1)
  br label %169

169:                                              ; preds = %166, %161
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = load i32, i32* @RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, align 4
  %172 = call i32 @rv770_enable_auto_throttle_source(%struct.radeon_device* %170, i32 %171, i32 1)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %169, %128, %119, %62, %40, %25
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_restore_cgcg(%struct.radeon_device*) #1

declare dso_local i64 @rv770_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_voltage_control(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_construct_vddc_table(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @rv770_retrieve_odt_values(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_mvdd_configuration(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_backbias(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_program_mpll_timing_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rv770_setup_bsp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_git(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_tp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_tpp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_sstp(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_engine_speed_parameters(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_display_gap(%struct.radeon_device*) #1

declare dso_local i32 @rv770_program_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_upload_firmware(%struct.radeon_device*) #1

declare dso_local i32 @rv770_init_smc_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_program_response_times(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_start_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv730_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @rv770_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @rv770_gfx_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_mg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_auto_throttle_source(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
