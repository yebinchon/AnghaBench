; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_notify_smc_display_config_after_ps_adjustment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_notify_smc_display_config_after_ps_adjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__*, i64, %struct.vega10_hwmgr* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32 }
%struct.vega10_hwmgr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.vega10_single_dpm_table }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32 }
%struct.PP_Clocks = type { i32, i32, i64, i32 }
%struct.pp_display_clock_request = type { i32, i32 }

@amd_pp_dcef_clock = common dso_local global i32 0, align 4
@PPSMC_MSG_SetMinDeepSleepDcefclk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempt to set Hard Min for DCEFCLK Failed!\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot find requested DCEFCLK!\00", align 1
@PPSMC_MSG_SetSoftMinUclkByIndex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_notify_smc_display_config_after_ps_adjustment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_notify_smc_display_config_after_ps_adjustment(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.vega10_single_dpm_table*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.PP_Clocks, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pp_display_clock_request, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 2
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %12, align 8
  store %struct.vega10_hwmgr* %13, %struct.vega10_hwmgr** %3, align 8
  %14 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %16, %struct.vega10_single_dpm_table** %4, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %20, %struct.phm_ppt_v2_information** %5, align 8
  %21 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %21, i32 0, i32 0
  %23 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %22, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %23, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %24 = bitcast %struct.PP_Clocks* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %48

31:                                               ; preds = %1
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %47 = call i32 @vega10_notify_smc_display_change(%struct.pp_hwmgr* %46, i32 0)
  br label %51

48:                                               ; preds = %38, %31, %1
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = call i32 @vega10_notify_smc_display_change(%struct.pp_hwmgr* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 2
  store i64 %68, i64* %69, align 8
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %89, %51
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %4, align 8
  %73 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %4, align 8
  %78 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %92

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %70

92:                                               ; preds = %87, %70
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %4, align 8
  %95 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %92
  %99 = load i32, i32* @amd_pp_dcef_clock, align 4
  %100 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %10, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %4, align 8
  %102 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 10
  %109 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %10, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %111 = call i32 @vega10_display_clock_voltage_request(%struct.pp_hwmgr* %110, %struct.pp_display_clock_request* %10)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %98
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %115 = load i32, i32* @PPSMC_MSG_SetMinDeepSleepDcefclk, align 4
  %116 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 100
  %119 = sext i32 %118 to i64
  %120 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %114, i32 %115, i64 %119)
  br label %123

121:                                              ; preds = %98
  %122 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %113
  br label %126

124:                                              ; preds = %92
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %123
  %127 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %132 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %133 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %8, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @vega10_get_uclk_index(%struct.pp_hwmgr* %131, %struct.phm_ppt_v1_clock_voltage_dependency_table* %132, i64 %134)
  store i64 %135, i64* %7, align 8
  %136 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %137 = load i32, i32* @PPSMC_MSG_SetSoftMinUclkByIndex, align 4
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %136, i32 %137, i64 %138)
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %142 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i64 %140, i64* %145, align 8
  br label %146

146:                                              ; preds = %130, %126
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vega10_notify_smc_display_change(%struct.pp_hwmgr*, i32) #2

declare dso_local i32 @vega10_display_clock_voltage_request(%struct.pp_hwmgr*, %struct.pp_display_clock_request*) #2

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i64 @vega10_get_uclk_index(%struct.pp_hwmgr*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
