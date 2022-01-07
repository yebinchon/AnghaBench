; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_update_sclk_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_update_sclk_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.smu8_hwmgr* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.phm_clock_voltage_dependency_table* }
%struct.TYPE_9__ = type { i64 }
%struct.phm_clock_voltage_dependency_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.smu8_hwmgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"min_core_set_clock not set\0A\00", align 1
@PPSMC_MSG_SetSclkHardMin = common dso_local global i32 0, align 4
@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSclkSoftMin = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSclkSoftMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_update_sclk_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_update_sclk_limit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_hwmgr*, align 8
  %4 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 3
  %11 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %10, align 8
  store %struct.smu8_hwmgr* %11, %struct.smu8_hwmgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %14, align 8
  store %struct.phm_clock_voltage_dependency_table* %15, %struct.phm_clock_voltage_dependency_table** %4, align 8
  store i64 0, i64* %5, align 8
  %16 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %17 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %23 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = call i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr* %25)
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %31 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %1
  %35 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %36 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  br label %59

45:                                               ; preds = %1
  %46 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %47 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %4, align 8
  %50 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %57 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %45, %34
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %59
  %70 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %79 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i64 %77, i64* %80, align 8
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %82 = load i32, i32* @PPSMC_MSG_SetSclkHardMin, align 4
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %84 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %85 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @PPSMC_MSG_SetSclkHardMin, align 4
  %89 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %83, i64 %87, i32 %88)
  %90 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %81, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %76, %69
  %92 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %93 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %5, align 8
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %97 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %101 = call i64 @phm_cap_enabled(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %91
  store i64 75, i64* %8, align 8
  %104 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %105 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = mul i64 %108, %109
  %111 = udiv i64 %110, 100
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %103
  br label %118

118:                                              ; preds = %117, %91
  %119 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %120 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %128 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %131 = load i32, i32* @PPSMC_MSG_SetSclkSoftMin, align 4
  %132 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %133 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %134 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @PPSMC_MSG_SetSclkSoftMin, align 4
  %138 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %132, i64 %136, i32 %137)
  %139 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %130, i32 %131, i32 %138)
  br label %140

140:                                              ; preds = %125, %118
  %141 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %142 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %146 = call i64 @phm_cap_enabled(i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %140
  %149 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %150 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %5, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %148
  %156 = load i64, i64* %5, align 8
  %157 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %158 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  %160 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %161 = load i32, i32* @PPSMC_MSG_SetSclkSoftMax, align 4
  %162 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %163 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %164 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @PPSMC_MSG_SetSclkSoftMax, align 4
  %168 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %162, i64 %166, i32 %167)
  %169 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %160, i32 %161, i32 %168)
  br label %170

170:                                              ; preds = %155, %148, %140
  ret i32 0
}

declare dso_local i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_get_sclk_level(%struct.pp_hwmgr*, i64, i32) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
