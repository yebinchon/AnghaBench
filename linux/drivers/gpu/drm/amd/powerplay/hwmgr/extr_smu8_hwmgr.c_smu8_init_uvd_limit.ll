; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_init_uvd_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_init_uvd_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { %struct.phm_uvd_clock_voltage_dependency_table* }
%struct.phm_uvd_clock_voltage_dependency_table = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.smu8_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_GetMaxUvdLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_init_uvd_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_init_uvd_limit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu8_hwmgr*, align 8
  %5 = alloca %struct.phm_uvd_clock_voltage_dependency_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %9, align 8
  store %struct.smu8_hwmgr* %10, %struct.smu8_hwmgr** %4, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %13, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table* %14, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  store i64 0, i64* %6, align 8
  %15 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  %16 = icmp eq %struct.phm_uvd_clock_voltage_dependency_table* null, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  %19 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %17
  %26 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %30 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = load i32, i32* @PPSMC_MSG_GetMaxUvdLevel, align 4
  %34 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %32, i32 %33)
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = call i64 @smum_get_argument(%struct.pp_hwmgr* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  %39 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %25
  %43 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  %44 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  br label %61

50:                                               ; preds = %25
  %51 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  %52 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %5, align 8
  %55 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %50, %42
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %64 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %68 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %61, %22
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i64 @smum_get_argument(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
