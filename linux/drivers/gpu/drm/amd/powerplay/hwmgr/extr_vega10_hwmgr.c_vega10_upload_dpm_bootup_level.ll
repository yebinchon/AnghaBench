; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_upload_dpm_bootup_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_upload_dpm_bootup_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@PPSMC_MSG_SetSoftMinGfxclkByIndex = common dso_local global i32 0, align 4
@NUM_UCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMinSocclkByIndex = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMinUclkByIndex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_upload_dpm_bootup_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_upload_dpm_bootup_level(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %6, align 8
  store %struct.vega10_hwmgr* %7, %struct.vega10_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = call i32 @vega10_apply_dal_minimum_voltage_request(%struct.pp_hwmgr* %8)
  %10 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %1
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %19, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %15
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = load i32, i32* @PPSMC_MSG_SetSoftMinGfxclkByIndex, align 4
  %30 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %28, i32 %29, i64 %33)
  %35 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i64 %38, i64* %43, align 8
  br label %44

44:                                               ; preds = %27, %15
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %45
  %52 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %57 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %55, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %51
  %64 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %65 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @NUM_UCLK_DPM_LEVELS, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %74 = call i64 @vega10_get_soc_index_for_max_uclk(%struct.pp_hwmgr* %73)
  store i64 %74, i64* %4, align 8
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %76 = load i32, i32* @PPSMC_MSG_SetSoftMinSocclkByIndex, align 4
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %75, i32 %76, i64 %77)
  br label %87

79:                                               ; preds = %63
  %80 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %81 = load i32, i32* @PPSMC_MSG_SetSoftMinUclkByIndex, align 4
  %82 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %83 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %80, i32 %81, i64 %85)
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %89 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %93 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %87, %51
  br label %98

98:                                               ; preds = %97, %45
  %99 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %100 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %98
  %105 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %110 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %108, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %104
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %118 = load i32, i32* @PPSMC_MSG_SetSoftMinSocclkByIndex, align 4
  %119 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %120 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %117, i32 %118, i64 %122)
  %124 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %125 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %129 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i64 %127, i64* %132, align 8
  br label %133

133:                                              ; preds = %116, %104
  br label %134

134:                                              ; preds = %133, %98
  ret i32 0
}

declare dso_local i32 @vega10_apply_dal_minimum_voltage_request(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

declare dso_local i64 @vega10_get_soc_index_for_max_uclk(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
