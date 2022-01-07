; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_check_dpm_table_updated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_check_dpm_table_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.phm_ppt_v2_information*, %struct.vega10_hwmgr* }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vega10_hwmgr = type { i32, %struct.vega10_odn_dpm_table }
%struct.vega10_odn_dpm_table = type { i32, i32 }

@DPMTABLE_OD_UPDATE_VDDC = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega10_check_dpm_table_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_check_dpm_table_updated(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.vega10_odn_dpm_table*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %8 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %10, align 8
  store %struct.vega10_hwmgr* %11, %struct.vega10_hwmgr** %3, align 8
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %12, i32 0, i32 1
  store %struct.vega10_odn_dpm_table* %13, %struct.vega10_odn_dpm_table** %4, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %15, align 8
  store %struct.phm_ppt_v2_information* %16, %struct.phm_ppt_v2_information** %5, align 8
  %17 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %18 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %17, i32 0, i32 1
  %19 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %18, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %19, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %20 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %4, align 8
  %21 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %22, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %54, %1
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %26 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %31 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %38 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %36, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %29
  %46 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %47 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %50 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %98

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %23

57:                                               ; preds = %23
  %58 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %59 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %58, i32 0, i32 0
  %60 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %59, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %60, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %61 = load %struct.vega10_odn_dpm_table*, %struct.vega10_odn_dpm_table** %4, align 8
  %62 = getelementptr inbounds %struct.vega10_odn_dpm_table, %struct.vega10_odn_dpm_table* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to %struct.phm_ppt_v1_clock_voltage_dependency_table*
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %63, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %95, %57
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %67 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %64
  %71 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %6, align 8
  %72 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %79 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %77, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %70
  %87 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %88 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %91 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %98

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %64

98:                                               ; preds = %45, %86, %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
