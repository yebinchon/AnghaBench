; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_phm_unforce_dpm_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_phm_unforce_dpm_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64, %struct.TYPE_4__, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.smu8_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSclkSoftMin = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSclkSoftMax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_phm_unforce_dpm_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_phm_unforce_dpm_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu8_hwmgr*, align 8
  %5 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 3
  %10 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %9, align 8
  store %struct.smu8_hwmgr* %10, %struct.smu8_hwmgr** %4, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %13, align 8
  store %struct.phm_clock_voltage_dependency_table* %14, %struct.phm_clock_voltage_dependency_table** %5, align 8
  store i64 0, i64* %6, align 8
  %15 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %16 = icmp eq %struct.phm_clock_voltage_dependency_table* null, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %19 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %111

25:                                               ; preds = %17
  %26 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %27 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %33 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %36 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %42 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %45 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %55 = call i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr* %54)
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %60 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %25
  %64 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %65 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %6, align 8
  br label %82

71:                                               ; preds = %25
  %72 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %73 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %76 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %71, %63
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %85 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %89 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i64 %87, i64* %90, align 8
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %92 = load i32, i32* @PPSMC_MSG_SetSclkSoftMin, align 4
  %93 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %94 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %95 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @PPSMC_MSG_SetSclkSoftMin, align 4
  %99 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %93, i64 %97, i32 %98)
  %100 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %91, i32 %92, i32 %99)
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = load i32, i32* @PPSMC_MSG_SetSclkSoftMax, align 4
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %104 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %105 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @PPSMC_MSG_SetSclkSoftMax, align 4
  %109 = call i32 @smu8_get_sclk_level(%struct.pp_hwmgr* %103, i64 %107, i32 %108)
  %110 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %101, i32 %102, i32 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %82, %22
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_get_sclk_level(%struct.pp_hwmgr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
