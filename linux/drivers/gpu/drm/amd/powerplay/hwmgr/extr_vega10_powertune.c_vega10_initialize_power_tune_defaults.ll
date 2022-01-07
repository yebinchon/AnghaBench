; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_initialize_power_tune_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_initialize_power_tune_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_5__, i64, %struct.vega10_hwmgr* }
%struct.TYPE_5__ = type { i32 }
%struct.vega10_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.phm_ppt_v2_information = type { %struct.phm_tdp_table* }
%struct.phm_tdp_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vega10_initialize_power_tune_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.phm_ppt_v2_information*, align 8
  %5 = alloca %struct.phm_tdp_table*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 2
  %9 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %8, align 8
  store %struct.vega10_hwmgr* %9, %struct.vega10_hwmgr** %3, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %13, %struct.phm_ppt_v2_information** %4, align 8
  %14 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %15 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %14, i32 0, i32 0
  %16 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %15, align 8
  store %struct.phm_tdp_table* %16, %struct.phm_tdp_table** %5, align 8
  %17 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %21 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %20, i32 0, i32 20
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 22
  store i8* %23, i8** %25, align 8
  %26 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %27 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %26, i32 0, i32 19
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 21
  store i8* %29, i8** %31, align 8
  %32 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %33 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 20
  store i8* %35, i8** %37, align 8
  %38 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %39 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %38, i32 0, i32 17
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 19
  store i8* %41, i8** %43, align 8
  %44 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %45 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 18
  store i8* %47, i8** %49, align 8
  %50 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %51 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 17
  store i8* %53, i8** %55, align 8
  %56 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %57 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 16
  store i8* %59, i8** %61, align 8
  %62 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %63 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 15
  store i8* %65, i8** %67, align 8
  %68 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %69 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 14
  store i8* %71, i8** %73, align 8
  %74 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %75 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 13
  store i8* %77, i8** %79, align 8
  %80 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %81 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 12
  store i8* %83, i8** %85, align 8
  %86 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %87 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 256
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 11
  store i64 0, i64* %94, align 8
  %95 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %96 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %101 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 4
  %105 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %106 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %111 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %116 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %121 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  %125 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %126 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %131 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %136 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %5, align 8
  %141 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
