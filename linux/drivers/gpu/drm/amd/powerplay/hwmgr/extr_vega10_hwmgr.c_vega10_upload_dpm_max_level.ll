; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_upload_dpm_max_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_upload_dpm_max_level.c"
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

@PPSMC_MSG_SetSoftMaxGfxclkByIndex = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxUclkByIndex = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxSocclkByIndex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_upload_dpm_max_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_upload_dpm_max_level(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  store %struct.vega10_hwmgr* %6, %struct.vega10_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = call i32 @vega10_apply_dal_minimum_voltage_request(%struct.pp_hwmgr* %7)
  %9 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %1
  %15 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %14
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxclkByIndex, align 4
  %29 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %27, i32 %28, i64 %32)
  %34 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %35 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %26, %14
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %44
  %51 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %56 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %54, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %50
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %64 = load i32, i32* @PPSMC_MSG_SetSoftMaxUclkByIndex, align 4
  %65 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %63, i32 %64, i64 %68)
  %70 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %75 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i64 %73, i64* %78, align 8
  br label %79

79:                                               ; preds = %62, %50
  br label %80

80:                                               ; preds = %79, %44
  %81 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %82 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %80
  %87 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %88 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %92 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %90, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %86
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %100 = load i32, i32* @PPSMC_MSG_SetSoftMaxSocclkByIndex, align 4
  %101 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %102 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %99, i32 %100, i64 %104)
  %106 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %107 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %111 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  br label %115

115:                                              ; preds = %98, %86
  br label %116

116:                                              ; preds = %115, %80
  ret i32 0
}

declare dso_local i32 @vega10_apply_dal_minimum_voltage_request(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
