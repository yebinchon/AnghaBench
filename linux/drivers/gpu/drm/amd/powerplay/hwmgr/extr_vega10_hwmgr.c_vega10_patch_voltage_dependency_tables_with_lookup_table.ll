; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_patch_voltage_dependency_tables_with_lookup_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_patch_voltage_dependency_tables_with_lookup_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.phm_ppt_v2_information = type { %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i32, i32 }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_patch_voltage_dependency_tables_with_lookup_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_patch_voltage_dependency_tables_with_lookup_table(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v2_information*, align 8
  %7 = alloca %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, align 8
  %8 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  %9 = alloca %struct.phm_ppt_v1_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %13, %struct.phm_ppt_v2_information** %6, align 8
  %14 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %15 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %14, i32 0, i32 10
  %16 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %15, align 8
  store %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %16, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %7, align 8
  %17 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %18 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %17, i32 0, i32 9
  %19 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %18, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %19, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %83, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %21, 6
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %49 [
    i32 0, label %25
    i32 1, label %29
    i32 2, label %33
    i32 3, label %37
    i32 4, label %41
    i32 5, label %45
  ]

25:                                               ; preds = %23
  %26 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %27 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %26, i32 0, i32 8
  %28 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %27, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %28, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %31 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %30, i32 0, i32 7
  %32 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %31, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %32, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %49

33:                                               ; preds = %23
  %34 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %35 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %34, i32 0, i32 6
  %36 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %35, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %36, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %49

37:                                               ; preds = %23
  %38 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %39 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %38, i32 0, i32 5
  %40 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %39, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %40, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %49

41:                                               ; preds = %23
  %42 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %43 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %42, i32 0, i32 4
  %44 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %43, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %44, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %49

45:                                               ; preds = %23
  %46 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %47 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %46, i32 0, i32 3
  %48 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %47, align 8
  store %struct.phm_ppt_v1_clock_voltage_dependency_table* %48, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  br label %49

49:                                               ; preds = %23, %45, %41, %37, %33, %29, %25
  store i64 0, i64* %3, align 8
  br label %50

50:                                               ; preds = %79, %49
  %51 = load i64, i64* %3, align 8
  %52 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %53 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %58 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %4, align 8
  %64 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %65 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %9, align 8
  %74 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  store i32 %72, i32* %78, align 8
  br label %79

79:                                               ; preds = %56
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %50

82:                                               ; preds = %50
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %20

86:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %87

87:                                               ; preds = %116, %86
  %88 = load i64, i64* %3, align 8
  %89 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %7, align 8
  %90 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %7, align 8
  %95 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %4, align 8
  %101 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %102 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %101, i32 0, i32 2
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.phm_ppt_v1_mm_clock_voltage_dependency_table*, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table** %7, align 8
  %111 = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, %struct.phm_ppt_v1_mm_clock_voltage_dependency_table* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i64, i64* %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %109, i32* %115, align 8
  br label %116

116:                                              ; preds = %93
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %3, align 8
  br label %87

119:                                              ; preds = %87
  store i64 0, i64* %3, align 8
  br label %120

120:                                              ; preds = %193, %119
  %121 = load i64, i64* %3, align 8
  %122 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %123 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %196

126:                                              ; preds = %120
  %127 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %128 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %4, align 8
  %134 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %135 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %134, i32 0, i32 2
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %144 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %143, i32 0, i32 1
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i64, i64* %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 5
  store i32 %142, i32* %148, align 8
  %149 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %150 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = load i64, i64* %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %4, align 8
  %156 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %157 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %156, i32 0, i32 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = load i64, i64* %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %166 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %165, i32 0, i32 1
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load i64, i64* %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  store i32 %164, i32* %170, align 4
  %171 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %172 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i64, i64* %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %4, align 8
  %178 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %6, align 8
  %179 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %178, i32 0, i32 0
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = load i64, i64* %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.phm_ppt_v1_clock_voltage_dependency_table*, %struct.phm_ppt_v1_clock_voltage_dependency_table** %8, align 8
  %188 = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, %struct.phm_ppt_v1_clock_voltage_dependency_table* %187, i32 0, i32 1
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = load i64, i64* %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 3
  store i32 %186, i32* %192, align 8
  br label %193

193:                                              ; preds = %126
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %3, align 8
  br label %120

196:                                              ; preds = %120
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
