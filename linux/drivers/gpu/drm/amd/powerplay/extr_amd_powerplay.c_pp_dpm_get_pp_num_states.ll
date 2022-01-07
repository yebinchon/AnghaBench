; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_pp_num_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_pp_num_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_states_info = type { i32, i32* }
%struct.pp_hwmgr = type { i32, i32, i32, i64, i32 }
%struct.pp_power_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BALANCED = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Boot = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_INTERNAL_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pp_states_info*)* @pp_dpm_get_pp_num_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_dpm_get_pp_num_states(i8* %0, %struct.pp_states_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pp_states_info*, align 8
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pp_power_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pp_states_info* %1, %struct.pp_states_info** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %10, %struct.pp_hwmgr** %6, align 8
  %11 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %12 = call i32 @memset(%struct.pp_states_info* %11, i32 0, i32 16)
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %14 = icmp ne %struct.pp_hwmgr* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %116

28:                                               ; preds = %20
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %36 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %109, %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %112

43:                                               ; preds = %37
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %46, %52
  %54 = inttoptr i64 %53 to %struct.pp_power_state*
  store %struct.pp_power_state* %54, %struct.pp_power_state** %8, align 8
  %55 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %56 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %83 [
    i32 129, label %59
    i32 130, label %67
    i32 128, label %75
  ]

59:                                               ; preds = %43
  %60 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  %61 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %62 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %108

67:                                               ; preds = %43
  %68 = load i32, i32* @POWER_STATE_TYPE_BALANCED, align 4
  %69 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %70 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %108

75:                                               ; preds = %43
  %76 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  %77 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %78 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  br label %108

83:                                               ; preds = %43
  %84 = load %struct.pp_power_state*, %struct.pp_power_state** %8, align 8
  %85 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PP_StateClassificationFlag_Boot, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* @POWER_STATE_TYPE_INTERNAL_BOOT, align 4
  %93 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %94 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  br label %107

99:                                               ; preds = %83
  %100 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %101 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %102 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %91
  br label %108

108:                                              ; preds = %107, %75, %67, %59
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %37

112:                                              ; preds = %37
  %113 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %114 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %113, i32 0, i32 2
  %115 = call i32 @mutex_unlock(i32* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %25
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.pp_states_info*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
