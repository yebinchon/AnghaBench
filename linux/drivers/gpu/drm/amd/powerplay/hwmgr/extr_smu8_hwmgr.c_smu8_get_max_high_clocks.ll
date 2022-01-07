; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_max_high_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_max_high_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.phm_clock_and_voltage_limits, %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_and_voltage_limits = type { i32 }
%struct.phm_clock_voltage_dependency_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.amd_pp_simple_clock_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.amd_pp_simple_clock_info*)* @smu8_get_max_high_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_get_max_high_clocks(%struct.pp_hwmgr* %0, %struct.amd_pp_simple_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.amd_pp_simple_clock_info*, align 8
  %6 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.phm_clock_and_voltage_limits*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.amd_pp_simple_clock_info* %1, %struct.amd_pp_simple_clock_info** %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %11, align 8
  store %struct.phm_clock_voltage_dependency_table* %12, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.phm_clock_and_voltage_limits* %15, %struct.phm_clock_and_voltage_limits** %8, align 8
  %16 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %17 = icmp eq %struct.phm_clock_voltage_dependency_table* null, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %20 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %25 = icmp eq %struct.amd_pp_simple_clock_info* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %18, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %31 = call i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %36 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %41 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %48 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %62

49:                                               ; preds = %29
  %50 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %51 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %6, align 8
  %54 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %61 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %49, %39
  %63 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %8, align 8
  %64 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %67 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
