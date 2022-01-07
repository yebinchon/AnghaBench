; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_vddc_soc_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_vddc_soc_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.phm_ppt_v2_information*, %struct.vega10_hwmgr* }
%struct.phm_ppt_v2_information = type { %struct.phm_ppt_v1_voltage_lookup_table* }
%struct.phm_ppt_v1_voltage_lookup_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vega10_hwmgr = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8** }

@MAX_REGULAR_DPM_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega10_populate_vddc_soc_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_populate_vddc_soc_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.phm_ppt_v2_information*, align 8
  %6 = alloca %struct.phm_ppt_v1_voltage_lookup_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %3, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %17, align 8
  store %struct.phm_ppt_v2_information* %18, %struct.phm_ppt_v2_information** %5, align 8
  store i8* null, i8** %7, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.phm_ppt_v1_voltage_lookup_table*
  store %struct.phm_ppt_v1_voltage_lookup_table* %27, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %5, align 8
  %30 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %29, i32 0, i32 0
  %31 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %30, align 8
  store %struct.phm_ppt_v1_voltage_lookup_table* %31, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  %34 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %56, %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %6, align 8
  %42 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @convert_to_vid(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  store i8* %50, i8** %55, align 8
  br label %56

56:                                               ; preds = %40
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %36

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @MAX_REGULAR_DPM_NUMBER, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %65, i8** %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %60

73:                                               ; preds = %60
  ret void
}

declare dso_local i64 @convert_to_vid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
