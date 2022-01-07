; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_wm_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_pp_nv_set_wm_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu = type { %struct.dc_context* }
%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32 }
%struct.pp_smu_wm_range_sets = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i64, i64, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* }
%struct.dm_pp_clock_range_for_mcif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }
%struct.dm_pp_clock_range_for_dmif_wm_set_soc15 = type { i32, i32, i32, i32, i32 }

@WM_SET_A = common dso_local global i8* null, align 8
@PP_SMU_RESULT_UNSUPPORTED = common dso_local global i32 0, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_nv_set_wm_ranges(%struct.pp_smu* %0, %struct.pp_smu_wm_range_sets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_smu*, align 8
  %5 = alloca %struct.pp_smu_wm_range_sets*, align 8
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.smu_context*, align 8
  %9 = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15, align 8
  %10 = alloca %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, align 8
  %11 = alloca %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, align 8
  %12 = alloca i64, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %4, align 8
  store %struct.pp_smu_wm_range_sets* %1, %struct.pp_smu_wm_range_sets** %5, align 8
  %13 = load %struct.pp_smu*, %struct.pp_smu** %4, align 8
  %14 = getelementptr inbounds %struct.pp_smu, %struct.pp_smu* %13, i32 0, i32 0
  %15 = load %struct.dc_context*, %struct.dc_context** %14, align 8
  store %struct.dc_context* %15, %struct.dc_context** %6, align 8
  %16 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %17 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %7, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  store %struct.smu_context* %20, %struct.smu_context** %8, align 8
  %21 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 3
  %22 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %21, align 8
  store %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %22, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %23 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 2
  %24 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %23, align 8
  store %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %24, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %25 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %26 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %30 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %115, %2
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %118

38:                                               ; preds = %33
  %39 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %40 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i8*, i8** @WM_SET_A, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %50, i64 %51
  %53 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %66

54:                                               ; preds = %38
  %55 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %56 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %62, i64 %63
  %65 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %54, %47
  %67 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %68 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 1000
  %75 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %75, i64 %76
  %78 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %80 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 1000
  %87 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %87, i64 %88
  %90 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %89, i32 0, i32 2
  store i32 %86, i32* %90, align 4
  %91 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %92 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %99, i64 %100
  %102 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 4
  %103 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %104 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 1000
  %111 = load %struct.dm_pp_clock_range_for_dmif_wm_set_soc15*, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15** %10, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %111, i64 %112
  %114 = getelementptr inbounds %struct.dm_pp_clock_range_for_dmif_wm_set_soc15, %struct.dm_pp_clock_range_for_dmif_wm_set_soc15* %113, i32 0, i32 4
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %66
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %33

118:                                              ; preds = %33
  store i64 0, i64* %12, align 8
  br label %119

119:                                              ; preds = %201, %118
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds %struct.dm_pp_wm_sets_with_clock_ranges_soc15, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %124, label %204

124:                                              ; preds = %119
  %125 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %126 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 3
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load i8*, i8** @WM_SET_A, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %136, i64 %137
  %139 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 4
  br label %152

140:                                              ; preds = %124
  %141 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %142 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %148, i64 %149
  %151 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %140, %133
  %153 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %154 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 1000
  %161 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %161, i64 %162
  %164 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  %165 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %166 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %171, 1000
  %173 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %174 = load i64, i64* %12, align 8
  %175 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %173, i64 %174
  %176 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %175, i32 0, i32 2
  store i32 %172, i32* %176, align 4
  %177 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %178 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %177, i32 0, i32 2
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i64, i64* %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %183, 1000
  %185 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %186 = load i64, i64* %12, align 8
  %187 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %185, i64 %186
  %188 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %187, i32 0, i32 3
  store i32 %184, i32* %188, align 4
  %189 = load %struct.pp_smu_wm_range_sets*, %struct.pp_smu_wm_range_sets** %5, align 8
  %190 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 1000
  %197 = load %struct.dm_pp_clock_range_for_mcif_wm_set_soc15*, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15** %11, align 8
  %198 = load i64, i64* %12, align 8
  %199 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %197, i64 %198
  %200 = getelementptr inbounds %struct.dm_pp_clock_range_for_mcif_wm_set_soc15, %struct.dm_pp_clock_range_for_mcif_wm_set_soc15* %199, i32 0, i32 4
  store i32 %196, i32* %200, align 4
  br label %201

201:                                              ; preds = %152
  %202 = load i64, i64* %12, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %12, align 8
  br label %119

204:                                              ; preds = %119
  %205 = load %struct.smu_context*, %struct.smu_context** %8, align 8
  %206 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %210, i32* %3, align 4
  br label %220

211:                                              ; preds = %204
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 0
  %214 = call i64 @smu_set_watermarks_for_clock_ranges(%struct.smu_context* %213, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %9)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @PP_SMU_RESULT_UNSUPPORTED, align 4
  store i32 %217, i32* %3, align 4
  br label %220

218:                                              ; preds = %211
  %219 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %218, %216, %209
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i64 @smu_set_watermarks_for_clock_ranges(%struct.smu_context*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
