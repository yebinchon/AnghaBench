; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kv_power_info = type { i64, i64, %struct.amdgpu_ps, %struct.amdgpu_ps }
%struct.amdgpu_ps = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"amdgpu_kv_smc_bapm_enable failed\0A\00", align 1
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"kv_calculate_ds_divider failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"kv_update_vce_dpm failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kv_dpm_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_dpm_set_power_state(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.kv_power_info*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.amdgpu_ps*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %11)
  store %struct.kv_power_info* %12, %struct.kv_power_info** %5, align 8
  %13 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %14 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %13, i32 0, i32 3
  store %struct.amdgpu_ps* %14, %struct.amdgpu_ps** %6, align 8
  %15 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %16 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %15, i32 0, i32 2
  store %struct.amdgpu_ps* %16, %struct.amdgpu_ps** %7, align 8
  %17 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %18 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @amdgpu_kv_smc_bapm_enable(%struct.amdgpu_device* %22, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %162

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_KABINI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHIP_MULLINS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %109

46:                                               ; preds = %40, %34
  %47 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %48 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %46
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %54 = call i32 @kv_set_valid_clock_range(%struct.amdgpu_device* %52, %struct.amdgpu_ps* %53)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %57 = call i32 @kv_update_dfs_bypass_settings(%struct.amdgpu_device* %55, %struct.amdgpu_ps* %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = call i32 @kv_calculate_ds_divider(%struct.amdgpu_device* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %162

65:                                               ; preds = %51
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %67 = call i32 @kv_calculate_nbps_level_settings(%struct.amdgpu_device* %66)
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = call i32 @kv_calculate_dpm_settings(%struct.amdgpu_device* %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = call i32 @kv_force_lowest_valid(%struct.amdgpu_device* %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = call i32 @kv_enable_new_levels(%struct.amdgpu_device* %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = call i32 @kv_upload_dpm_settings(%struct.amdgpu_device* %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %77 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %78 = call i32 @kv_program_nbps_index_settings(%struct.amdgpu_device* %76, %struct.amdgpu_ps* %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = call i32 @kv_unforce_levels(%struct.amdgpu_device* %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %82 = call i32 @kv_set_enabled_levels(%struct.amdgpu_device* %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = call i32 @kv_force_lowest_valid(%struct.amdgpu_device* %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %86 = call i32 @kv_unforce_levels(%struct.amdgpu_device* %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %88 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %89 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %90 = call i32 @kv_update_vce_dpm(%struct.amdgpu_device* %87, %struct.amdgpu_ps* %88, %struct.amdgpu_ps* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %65
  %94 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %162

96:                                               ; preds = %65
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = call i32 @kv_update_sclk_t(%struct.amdgpu_device* %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CHIP_MULLINS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %106 = call i32 @kv_enable_nb_dpm(%struct.amdgpu_device* %105, i32 1)
  br label %107

107:                                              ; preds = %104, %96
  br label %108

108:                                              ; preds = %107, %46
  br label %161

109:                                              ; preds = %40
  %110 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %111 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %160

114:                                              ; preds = %109
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %116 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %117 = call i32 @kv_set_valid_clock_range(%struct.amdgpu_device* %115, %struct.amdgpu_ps* %116)
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %119 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %120 = call i32 @kv_update_dfs_bypass_settings(%struct.amdgpu_device* %118, %struct.amdgpu_ps* %119)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %122 = call i32 @kv_calculate_ds_divider(%struct.amdgpu_device* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %162

128:                                              ; preds = %114
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %130 = call i32 @kv_calculate_nbps_level_settings(%struct.amdgpu_device* %129)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %132 = call i32 @kv_calculate_dpm_settings(%struct.amdgpu_device* %131)
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %134 = call i32 @kv_freeze_sclk_dpm(%struct.amdgpu_device* %133, i32 1)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %136 = call i32 @kv_upload_dpm_settings(%struct.amdgpu_device* %135)
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %138 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %139 = call i32 @kv_program_nbps_index_settings(%struct.amdgpu_device* %137, %struct.amdgpu_ps* %138)
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %141 = call i32 @kv_freeze_sclk_dpm(%struct.amdgpu_device* %140, i32 0)
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %143 = call i32 @kv_set_enabled_levels(%struct.amdgpu_device* %142)
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %145 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %146 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %147 = call i32 @kv_update_vce_dpm(%struct.amdgpu_device* %144, %struct.amdgpu_ps* %145, %struct.amdgpu_ps* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %128
  %151 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %162

153:                                              ; preds = %128
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %155 = call i32 @kv_update_acp_boot_level(%struct.amdgpu_device* %154)
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %157 = call i32 @kv_update_sclk_t(%struct.amdgpu_device* %156)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %159 = call i32 @kv_enable_nb_dpm(%struct.amdgpu_device* %158, i32 1)
  br label %160

160:                                              ; preds = %153, %109
  br label %161

161:                                              ; preds = %160, %108
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %150, %125, %93, %62, %30
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_kv_smc_bapm_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kv_set_valid_clock_range(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @kv_update_dfs_bypass_settings(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @kv_calculate_ds_divider(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_calculate_nbps_level_settings(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_calculate_dpm_settings(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_force_lowest_valid(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_new_levels(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_upload_dpm_settings(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_program_nbps_index_settings(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @kv_unforce_levels(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_set_enabled_levels(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_update_vce_dpm(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*) #1

declare dso_local i32 @kv_update_sclk_t(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_nb_dpm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_freeze_sclk_dpm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_update_acp_boot_level(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
