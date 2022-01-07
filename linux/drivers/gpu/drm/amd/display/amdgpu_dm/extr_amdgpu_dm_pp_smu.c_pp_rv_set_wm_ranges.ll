; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_rv_set_wm_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_rv_set_wm_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { %struct.amd_pm_funcs*, i8* }
%struct.amd_pm_funcs = type { i32 (i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)* }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i64, i64, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* }
%struct.dm_pp_clock_range_for_mcif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.dm_pp_clock_range_for_dmif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.pp_smu_wm_range_sets = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@WM_SET_A = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_rv_set_wm_ranges(%struct.pp_smu* %0, %struct.pp_smu_wm_range_sets* %1) #0 {
  %3 = alloca %struct.pp_smu*, align 8
  %4 = alloca %struct.pp_smu_wm_range_sets*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amd_pm_funcs*, align 8
  %9 = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15, align 8
  %10 = alloca %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, align 8
  %11 = alloca %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, align 8
  %12 = alloca i64, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %3, align 8
  store %struct.pp_smu_wm_range_sets* %1, %struct.pp_smu_wm_range_sets** %4, align 8
  %13 = load %struct.pp_smu*, %struct.pp_smu** %3, align 8
  %14 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %13, i32 0, i32 0
  %15 = load %struct.dc_context*, %struct.dc_context** %14, align 8
  store %struct.dc_context* %15, %struct.dc_context** %5, align 8
  %16 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %17 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %6, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %25, align 8
  store %struct.amd_pm_funcs* %26, %struct.amd_pm_funcs** %8, align 8
  %27 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 3
  %28 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %27, align 8
  store %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %28, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %29 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 2
  %30 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %29, align 8
  store %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %30, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %31 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %32 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %36 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %121, %2
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %124

44:                                               ; preds = %39
  %45 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %46 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i8*, i8** @WM_SET_A, align 8
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %56, i64 %57
  %59 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  br label %72

60:                                               ; preds = %44
  %61 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %62 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %68, i64 %69
  %71 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %60, %53
  %73 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %74 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 1000
  %81 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %81, i64 %82
  %84 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %86 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 1000
  %93 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %93, i64 %94
  %96 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %98 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 1000
  %105 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %105, i64 %106
  %108 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %107, i32 0, i32 3
  store i32 %104, i32* %108, align 4
  %109 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %110 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 1000
  %117 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %117, i64 %118
  %120 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %119, i32 0, i32 4
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %72
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %39

124:                                              ; preds = %39
  store i64 0, i64* %12, align 8
  br label %125

125:                                              ; preds = %207, %124
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %130, label %210

130:                                              ; preds = %125
  %131 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %132 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %131, i32 0, i32 2
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 3
  br i1 %138, label %139, label %146

139:                                              ; preds = %130
  %140 = load i8*, i8** @WM_SET_A, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %142, i64 %143
  %145 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 4
  br label %158

146:                                              ; preds = %130
  %147 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %148 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %154, i64 %155
  %157 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %146, %139
  %159 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %160 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %165, 1000
  %167 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %167, i64 %168
  %170 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %169, i32 0, i32 1
  store i32 %166, i32* %170, align 4
  %171 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %172 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %171, i32 0, i32 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load i64, i64* %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %177, 1000
  %179 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %180 = load i64, i64* %12, align 8
  %181 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %179, i64 %180
  %182 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %181, i32 0, i32 2
  store i32 %178, i32* %182, align 4
  %183 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %184 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %183, i32 0, i32 2
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = load i64, i64* %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 1000
  %191 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %191, i64 %192
  %194 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %193, i32 0, i32 3
  store i32 %190, i32* %194, align 4
  %195 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %4, align 8
  %196 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %195, i32 0, i32 2
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load i64, i64* %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %201, 1000
  %203 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %204 = load i64, i64* %12, align 8
  %205 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %203, i64 %204
  %206 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %205, i32 0, i32 4
  store i32 %202, i32* %206, align 4
  br label %207

207:                                              ; preds = %158
  %208 = load i64, i64* %12, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %12, align 8
  br label %125

210:                                              ; preds = %125
  %211 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %8, align 8
  %212 = icmp ne %struct.amd_pm_funcs* %211, null
  br i1 %212, label %213, label %224

213:                                              ; preds = %210
  %214 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %8, align 8
  %215 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %214, i32 0, i32 0
  %216 = load i32 (i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)*, i32 (i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)** %215, align 8
  %217 = icmp ne i32 (i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %8, align 8
  %220 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %219, i32 0, i32 0
  %221 = load i32 (i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)*, i32 (i8*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*)** %220, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 %221(i8* %222, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9)
  br label %243

224:                                              ; preds = %213, %210
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %226 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = icmp ne %struct.TYPE_9__* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %224
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %232 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %230
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %240 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %239, i32 0, i32 0
  %241 = call i32 @smu_set_watermarks_for_clock_ranges(%struct.TYPE_10__* %240, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9)
  br label %242

242:                                              ; preds = %238, %230, %224
  br label %243

243:                                              ; preds = %242, %218
  ret void
}

declare dso_local i32 @smu_set_watermarks_for_clock_ranges(%struct.TYPE_10__*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
