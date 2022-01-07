; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_voltage_dependency_tables_with_lookup_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_patch_voltage_dependency_tables_with_lookup_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { i64 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32 }

@SMU7_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_patch_voltage_dependency_tables_with_lookup_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_patch_voltage_dependency_tables_with_lookup_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smu7_hwmgr*, align 8
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  %7 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %8 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %9 = alloca %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %13, %struct.smu7_hwmgr** %5, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %17, %struct.phm_ppt_v1_information** %6, align 8
  %18 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %18, i32 0, i32 4
  %20 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %19, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %20, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %21 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %22 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %21, i32 0, i32 3
  %23 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %22, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %23, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %24 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %24, i32 0, i32 2
  %26 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %25, align 8
  store %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %26, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %27 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %5, align 8
  %28 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %36 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %41 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %4, align 8
  %47 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %48 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %57 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %39
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %33

65:                                               ; preds = %33
  br label %100

66:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %70 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %67
  %74 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %75 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i64, i64* %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %4, align 8
  %81 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %82 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %7, align 8
  %91 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i64, i64* %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %89, i32* %95, align 8
  br label %96

96:                                               ; preds = %73
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %3, align 8
  br label %67

99:                                               ; preds = %67
  br label %100

100:                                              ; preds = %99, %65
  store i64 0, i64* %3, align 8
  br label %101

101:                                              ; preds = %130, %100
  %102 = load i64, i64* %3, align 8
  %103 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %104 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %101
  %108 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %109 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load i64, i64* %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %4, align 8
  %115 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %116 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load i64, i64* %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %125 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i64, i64* %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %123, i32* %129, align 8
  br label %130

130:                                              ; preds = %107
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %3, align 8
  br label %101

133:                                              ; preds = %101
  store i64 0, i64* %3, align 8
  br label %134

134:                                              ; preds = %163, %133
  %135 = load i64, i64* %3, align 8
  %136 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %137 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %134
  %141 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %142 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i64, i64* %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %4, align 8
  %148 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %149 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i64, i64* %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %9, align 8
  %158 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i64, i64* %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store i32 %156, i32* %162, align 8
  br label %163

163:                                              ; preds = %140
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %3, align 8
  br label %134

166:                                              ; preds = %134
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
