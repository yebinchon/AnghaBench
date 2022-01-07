; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_init_sclk_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_init_sclk_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { %struct.phm_clock_voltage_dependency_table* }
%struct.phm_clock_voltage_dependency_table = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.smu8_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_init_sclk_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_init_sclk_limit(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu8_hwmgr*, align 8
  %5 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
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
  br label %81

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
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = call i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr* %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %50 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %25
  %54 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %55 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  br label %72

61:                                               ; preds = %25
  %62 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %63 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %5, align 8
  %66 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %61, %53
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %75 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %79 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i64 %77, i64* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @smu8_get_max_sclk_level(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
