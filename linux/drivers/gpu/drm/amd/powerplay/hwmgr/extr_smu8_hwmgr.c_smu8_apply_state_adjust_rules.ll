; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.smu8_hwmgr* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.smu8_hwmgr = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.pp_power_state = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.smu8_power_state = type { i32, i64 }
%struct.PP_Clocks = type { i64, i32, i32, i32, i32 }

@PP_StateUILabel_Battery = common dso_local global i64 0, align 8
@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@SMU8_NUM_NBPMEMORYCLOCK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i64 0, align 8
@FORCE_HIGH = common dso_local global i64 0, align 8
@CANCEL_FORCE_HIGH = common dso_local global i64 0, align 8
@DO_NOTHING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_power_state*, %struct.pp_power_state*)* @smu8_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_apply_state_adjust_rules(%struct.pp_hwmgr* %0, %struct.pp_power_state* %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_power_state*, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca %struct.smu8_power_state*, align 8
  %8 = alloca %struct.smu8_power_state*, align 8
  %9 = alloca %struct.smu8_hwmgr*, align 8
  %10 = alloca %struct.PP_Clocks, align 8
  %11 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_power_state* %1, %struct.pp_power_state** %5, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %12 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %13 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %12, i32 0, i32 1
  %14 = call %struct.smu8_power_state* @cast_smu8_power_state(i32* %13)
  store %struct.smu8_power_state* %14, %struct.smu8_power_state** %7, align 8
  %15 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %16 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %15, i32 0, i32 1
  %17 = call %struct.smu8_power_state* @cast_const_smu8_power_state(i32* %16)
  store %struct.smu8_power_state* %17, %struct.smu8_power_state** %8, align 8
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 4
  %20 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %19, align 8
  store %struct.smu8_hwmgr* %20, %struct.smu8_hwmgr** %9, align 8
  %21 = bitcast %struct.PP_Clocks* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %23 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i64, i64* @PP_StateUILabel_Battery, align 8
  %25 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %26 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %9, align 8
  %32 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %52

45:                                               ; preds = %3
  %46 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %9, align 8
  %47 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  br label %52

52:                                               ; preds = %45, %39
  %53 = phi i64 [ %44, %39 ], [ %51, %45 ]
  %54 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %10, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %60 = call i64 @phm_cap_enabled(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %10, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %52
  %70 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %9, align 8
  %73 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* @SMU8_NUM_NBPMEMORYCLOCK, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %71, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %69
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %84 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 3
  br label %89

89:                                               ; preds = %82, %69
  %90 = phi i1 [ true, %69 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load %struct.smu8_power_state*, %struct.smu8_power_state** %8, align 8
  %93 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %96 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %98 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %104 = call i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr* %103, i32 0, i32 0)
  br label %147

105:                                              ; preds = %89
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %107 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %113 = call i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr* %112, i32 0, i32 1)
  br label %146

114:                                              ; preds = %105
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  %118 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %119 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FORCE_HIGH, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i64, i64* @CANCEL_FORCE_HIGH, align 8
  %125 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %126 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %145

127:                                              ; preds = %117, %114
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %132 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @FORCE_HIGH, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i64, i64* @FORCE_HIGH, align 8
  %138 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %139 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  br label %144

140:                                              ; preds = %130, %127
  %141 = load i64, i64* @DO_NOTHING, align 8
  %142 = load %struct.smu8_power_state*, %struct.smu8_power_state** %7, align 8
  %143 = getelementptr inbounds %struct.smu8_power_state, %struct.smu8_power_state* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145, %111
  br label %147

147:                                              ; preds = %146, %102
  ret i32 0
}

declare dso_local %struct.smu8_power_state* @cast_smu8_power_state(i32*) #1

declare dso_local %struct.smu8_power_state* @cast_const_smu8_power_state(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @smu8_nbdpm_pstate_enable_disable(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
