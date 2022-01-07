; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_smc_link_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_smc_link_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.SMU73_Discrete_DpmTable = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.smu7_hwmgr = type { i32, %struct.TYPE_9__, %struct.smu7_dpm_table }
%struct.TYPE_9__ = type { i32 }
%struct.smu7_dpm_table = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.fiji_smumgr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.SMU73_Discrete_DpmTable*)* @fiji_populate_smc_link_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_populate_smc_link_level(%struct.pp_hwmgr* %0, %struct.SMU73_Discrete_DpmTable* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.SMU73_Discrete_DpmTable*, align 8
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca %struct.smu7_dpm_table*, align 8
  %7 = alloca %struct.fiji_smumgr*, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.SMU73_Discrete_DpmTable* %1, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %5, align 8
  %13 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %14 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %13, i32 0, i32 2
  store %struct.smu7_dpm_table* %14, %struct.smu7_dpm_table** %6, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %18, %struct.fiji_smumgr** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %98, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %22 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %19
  %27 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %28 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.SMU73_Discrete_DpmTable*, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %38 = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_DpmTable* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i8* %36, i8** %43, align 8
  %44 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %45 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @encode_pcie_lane_width(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.SMU73_Discrete_DpmTable*, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %56 = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_DpmTable* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i8* %54, i8** %61, align 8
  %62 = load %struct.SMU73_Discrete_DpmTable*, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %63 = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_DpmTable* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %70 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 255
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.SMU73_Discrete_DpmTable*, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %76 = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_DpmTable* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store i8* %74, i8** %81, align 8
  %82 = call i8* @PP_HOST_TO_SMC_UL(i32 5)
  %83 = load %struct.SMU73_Discrete_DpmTable*, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %84 = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_DpmTable* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i8* %82, i8** %89, align 8
  %90 = call i8* @PP_HOST_TO_SMC_UL(i32 30)
  %91 = load %struct.SMU73_Discrete_DpmTable*, %struct.SMU73_Discrete_DpmTable** %4, align 8
  %92 = getelementptr inbounds %struct.SMU73_Discrete_DpmTable, %struct.SMU73_Discrete_DpmTable* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i8* %90, i8** %97, align 8
  br label %98

98:                                               ; preds = %26
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %19

101:                                              ; preds = %19
  %102 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %103 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %7, align 8
  %109 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %112 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %111, i32 0, i32 0
  %113 = call i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_10__* %112)
  %114 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %115 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  ret i32 0
}

declare dso_local i64 @encode_pcie_lane_width(i32) #1

declare dso_local i8* @PP_HOST_TO_SMC_UL(i32) #1

declare dso_local i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
