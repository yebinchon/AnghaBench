; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_smc_table_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_smc_table_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"dpm has been enabled\0A\00", align 1
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"dpm has been disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_smc_table_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_smc_table_hw_init(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %6, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %12 = call i64 @smu_is_dpm_running(%struct.smu_context* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %200

21:                                               ; preds = %14, %2
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHIP_ARCTURUS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %29 = call i32 @smu_init_display_count(%struct.smu_context* %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %200

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %40 = call i32 @smu_get_vbios_bootup_values(%struct.smu_context* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %200

45:                                               ; preds = %38
  %46 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %47 = call i32 @smu_setup_pptable(%struct.smu_context* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %200

52:                                               ; preds = %45
  %53 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %54 = call i32 @smu_get_clk_info_from_vbios(%struct.smu_context* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %200

59:                                               ; preds = %52
  %60 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %61 = call i32 @smu_check_pptable(%struct.smu_context* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %200

66:                                               ; preds = %59
  %67 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %68 = call i32 @smu_init_fb_allocations(%struct.smu_context* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %200

73:                                               ; preds = %66
  %74 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %75 = call i32 @smu_parse_pptable(%struct.smu_context* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %200

80:                                               ; preds = %73
  %81 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %82 = call i32 @smu_check_fw_version(%struct.smu_context* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %200

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %35
  %89 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %90 = call i32 @smu_write_pptable(%struct.smu_context* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %200

95:                                               ; preds = %88
  %96 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %97 = call i32 @smu_run_afll_btc(%struct.smu_context* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %200

102:                                              ; preds = %95
  %103 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %104 = call i32 @smu_feature_set_allowed_mask(%struct.smu_context* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %200

109:                                              ; preds = %102
  %110 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %111 = call i32 @smu_system_features_control(%struct.smu_context* %110, i32 1)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %200

116:                                              ; preds = %109
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CHIP_ARCTURUS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %124 = call i32 @smu_override_pcie_parameters(%struct.smu_context* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %200

129:                                              ; preds = %122
  %130 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %131 = call i32 @smu_notify_display_change(%struct.smu_context* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %200

136:                                              ; preds = %129
  %137 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %138 = call i32 @smu_set_min_dcef_deep_sleep(%struct.smu_context* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %200

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %149 = call i32 @smu_populate_smc_tables(%struct.smu_context* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %200

154:                                              ; preds = %147
  %155 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %156 = call i32 @smu_init_max_sustainable_clocks(%struct.smu_context* %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %200

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %144
  %163 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @smu_set_default_od_settings(%struct.smu_context* %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %200

170:                                              ; preds = %162
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %175 = call i32 @smu_populate_umd_state_clk(%struct.smu_context* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %3, align 4
  br label %200

180:                                              ; preds = %173
  %181 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %182 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %183 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %182, i32 0, i32 0
  %184 = call i32 @smu_get_power_limit(%struct.smu_context* %181, i32* %183, i32 1)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %3, align 4
  br label %200

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %170
  %191 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %192 = call i32 @smu_set_tool_table_location(%struct.smu_context* %191)
  store i32 %192, i32* %7, align 4
  %193 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %194 = call i64 @smu_is_dpm_running(%struct.smu_context* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %190
  %197 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %190
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %187, %178, %168, %159, %152, %141, %134, %127, %114, %107, %100, %93, %85, %78, %71, %64, %57, %50, %43, %32, %19
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @smu_is_dpm_running(%struct.smu_context*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @smu_init_display_count(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_get_vbios_bootup_values(%struct.smu_context*) #1

declare dso_local i32 @smu_setup_pptable(%struct.smu_context*) #1

declare dso_local i32 @smu_get_clk_info_from_vbios(%struct.smu_context*) #1

declare dso_local i32 @smu_check_pptable(%struct.smu_context*) #1

declare dso_local i32 @smu_init_fb_allocations(%struct.smu_context*) #1

declare dso_local i32 @smu_parse_pptable(%struct.smu_context*) #1

declare dso_local i32 @smu_check_fw_version(%struct.smu_context*) #1

declare dso_local i32 @smu_write_pptable(%struct.smu_context*) #1

declare dso_local i32 @smu_run_afll_btc(%struct.smu_context*) #1

declare dso_local i32 @smu_feature_set_allowed_mask(%struct.smu_context*) #1

declare dso_local i32 @smu_system_features_control(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_override_pcie_parameters(%struct.smu_context*) #1

declare dso_local i32 @smu_notify_display_change(%struct.smu_context*) #1

declare dso_local i32 @smu_set_min_dcef_deep_sleep(%struct.smu_context*) #1

declare dso_local i32 @smu_populate_smc_tables(%struct.smu_context*) #1

declare dso_local i32 @smu_init_max_sustainable_clocks(%struct.smu_context*) #1

declare dso_local i32 @smu_set_default_od_settings(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_populate_umd_state_clk(%struct.smu_context*) #1

declare dso_local i32 @smu_get_power_limit(%struct.smu_context*, i32*, i32) #1

declare dso_local i32 @smu_set_tool_table_location(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
