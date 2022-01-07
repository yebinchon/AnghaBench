; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_cac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_cac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.SMU75_Discrete_DpmTable = type { i8**, i8**, i8** }
%struct.smu7_hwmgr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppt_v1_voltage_lookup_table* }
%struct.phm_ppt_v1_voltage_lookup_table = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.SMU75_Discrete_DpmTable*)* @vegam_populate_cac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_populate_cac_table(%struct.pp_hwmgr* %0, %struct.SMU75_Discrete_DpmTable* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.SMU75_Discrete_DpmTable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  %8 = alloca %struct.phm_ppt_v1_information*, align 8
  %9 = alloca %struct.phm_ppt_v1_voltage_lookup_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.SMU75_Discrete_DpmTable* %1, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %13, %struct.smu7_hwmgr** %7, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %17, %struct.phm_ppt_v1_information** %8, align 8
  %18 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %8, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %18, i32 0, i32 0
  %20 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %19, align 8
  store %struct.phm_ppt_v1_voltage_lookup_table* %20, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %77, %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %24 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %21
  %28 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %30 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @phm_get_voltage_index(%struct.phm_ppt_v1_voltage_lookup_table* %28, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %39 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @convert_to_vid(i32 %44)
  %46 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %47 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %52 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @convert_to_vid(i32 %57)
  %59 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %60 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* %58, i8** %63, align 8
  %64 = load %struct.phm_ppt_v1_voltage_lookup_table*, %struct.phm_ppt_v1_voltage_lookup_table** %9, align 8
  %65 = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, %struct.phm_ppt_v1_voltage_lookup_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @convert_to_vid(i32 %70)
  %72 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %73 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8* %71, i8** %76, align 8
  br label %77

77:                                               ; preds = %27
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %21

80:                                               ; preds = %21
  ret i32 0
}

declare dso_local i64 @phm_get_voltage_index(%struct.phm_ppt_v1_voltage_lookup_table*, i32) #1

declare dso_local i8* @convert_to_vid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
