; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_smc_link_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_smc_link_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.smu7_hwmgr = type { i32, %struct.TYPE_11__, %struct.smu7_dpm_table }
%struct.TYPE_11__ = type { i32 }
%struct.smu7_dpm_table = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.iceland_smumgr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_12__*)* @iceland_populate_smc_link_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_populate_smc_link_level(%struct.pp_hwmgr* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca %struct.smu7_dpm_table*, align 8
  %7 = alloca %struct.iceland_smumgr*, align 8
  %8 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
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
  %18 = inttoptr i64 %17 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %18, %struct.iceland_smumgr** %7, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %90, %2
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %22 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %20, %24
  br i1 %25, label %26, label %93

26:                                               ; preds = %19
  %27 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %28 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  store i8* %35, i8** %41, align 8
  %42 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %43 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @encode_pcie_lane_width(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i8* %51, i8** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %65 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  store i8* %69, i8** %75, align 8
  %76 = call i8* @PP_HOST_TO_SMC_UL(i32 5)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i8* %76, i8** %82, align 8
  %83 = call i8* @PP_HOST_TO_SMC_UL(i32 30)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i8* %83, i8** %89, align 8
  br label %90

90:                                               ; preds = %26
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %19

93:                                               ; preds = %19
  %94 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %95 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %7, align 8
  %100 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %6, align 8
  %103 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %102, i32 0, i32 0
  %104 = call i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_13__* %103)
  %105 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %106 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  ret i32 0
}

declare dso_local i64 @encode_pcie_lane_width(i32) #1

declare dso_local i8* @PP_HOST_TO_SMC_UL(i32) #1

declare dso_local i32 @phm_get_dpm_level_enable_mask_value(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
