; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kv_power_info = type { i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"kv_smc_bapm_enable failed\0A\00", align 1
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"kv_calculate_ds_divider failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"kv_update_vce_dpm failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kv_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %8)
  store %struct.kv_power_info* %9, %struct.kv_power_info** %4, align 8
  %10 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %11 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %10, i32 0, i32 3
  store %struct.radeon_ps* %11, %struct.radeon_ps** %5, align 8
  %12 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %13 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %12, i32 0, i32 2
  store %struct.radeon_ps* %13, %struct.radeon_ps** %6, align 8
  %14 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %15 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kv_smc_bapm_enable(%struct.radeon_device* %19, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %160

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_KABINI, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_MULLINS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %38, %32
  %45 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %46 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %106

49:                                               ; preds = %44
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %52 = call i32 @kv_set_valid_clock_range(%struct.radeon_device* %50, %struct.radeon_ps* %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %55 = call i32 @kv_update_dfs_bypass_settings(%struct.radeon_device* %53, %struct.radeon_ps* %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = call i32 @kv_calculate_ds_divider(%struct.radeon_device* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %160

63:                                               ; preds = %49
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @kv_calculate_nbps_level_settings(%struct.radeon_device* %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = call i32 @kv_calculate_dpm_settings(%struct.radeon_device* %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = call i32 @kv_force_lowest_valid(%struct.radeon_device* %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @kv_enable_new_levels(%struct.radeon_device* %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @kv_upload_dpm_settings(%struct.radeon_device* %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %76 = call i32 @kv_program_nbps_index_settings(%struct.radeon_device* %74, %struct.radeon_ps* %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = call i32 @kv_unforce_levels(%struct.radeon_device* %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = call i32 @kv_set_enabled_levels(%struct.radeon_device* %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = call i32 @kv_force_lowest_valid(%struct.radeon_device* %81)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @kv_unforce_levels(%struct.radeon_device* %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %87 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %88 = call i32 @kv_update_vce_dpm(%struct.radeon_device* %85, %struct.radeon_ps* %86, %struct.radeon_ps* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %63
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %160

94:                                               ; preds = %63
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = call i32 @kv_update_sclk_t(%struct.radeon_device* %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CHIP_MULLINS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = call i32 @kv_enable_nb_dpm(%struct.radeon_device* %103, i32 1)
  br label %105

105:                                              ; preds = %102, %94
  br label %106

106:                                              ; preds = %105, %44
  br label %159

107:                                              ; preds = %38
  %108 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %158

112:                                              ; preds = %107
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %115 = call i32 @kv_set_valid_clock_range(%struct.radeon_device* %113, %struct.radeon_ps* %114)
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %118 = call i32 @kv_update_dfs_bypass_settings(%struct.radeon_device* %116, %struct.radeon_ps* %117)
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = call i32 @kv_calculate_ds_divider(%struct.radeon_device* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %160

126:                                              ; preds = %112
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = call i32 @kv_calculate_nbps_level_settings(%struct.radeon_device* %127)
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = call i32 @kv_calculate_dpm_settings(%struct.radeon_device* %129)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = call i32 @kv_freeze_sclk_dpm(%struct.radeon_device* %131, i32 1)
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @kv_upload_dpm_settings(%struct.radeon_device* %133)
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %137 = call i32 @kv_program_nbps_index_settings(%struct.radeon_device* %135, %struct.radeon_ps* %136)
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = call i32 @kv_freeze_sclk_dpm(%struct.radeon_device* %138, i32 0)
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = call i32 @kv_set_enabled_levels(%struct.radeon_device* %140)
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %144 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %145 = call i32 @kv_update_vce_dpm(%struct.radeon_device* %142, %struct.radeon_ps* %143, %struct.radeon_ps* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %126
  %149 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %160

151:                                              ; preds = %126
  %152 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %153 = call i32 @kv_update_acp_boot_level(%struct.radeon_device* %152)
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = call i32 @kv_update_sclk_t(%struct.radeon_device* %154)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = call i32 @kv_enable_nb_dpm(%struct.radeon_device* %156, i32 1)
  br label %158

158:                                              ; preds = %151, %107
  br label %159

159:                                              ; preds = %158, %106
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %148, %123, %91, %60, %28
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_smc_bapm_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kv_set_valid_clock_range(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @kv_update_dfs_bypass_settings(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @kv_calculate_ds_divider(%struct.radeon_device*) #1

declare dso_local i32 @kv_calculate_nbps_level_settings(%struct.radeon_device*) #1

declare dso_local i32 @kv_calculate_dpm_settings(%struct.radeon_device*) #1

declare dso_local i32 @kv_force_lowest_valid(%struct.radeon_device*) #1

declare dso_local i32 @kv_enable_new_levels(%struct.radeon_device*) #1

declare dso_local i32 @kv_upload_dpm_settings(%struct.radeon_device*) #1

declare dso_local i32 @kv_program_nbps_index_settings(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @kv_unforce_levels(%struct.radeon_device*) #1

declare dso_local i32 @kv_set_enabled_levels(%struct.radeon_device*) #1

declare dso_local i32 @kv_update_vce_dpm(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @kv_update_sclk_t(%struct.radeon_device*) #1

declare dso_local i32 @kv_enable_nb_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_freeze_sclk_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_update_acp_boot_level(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
