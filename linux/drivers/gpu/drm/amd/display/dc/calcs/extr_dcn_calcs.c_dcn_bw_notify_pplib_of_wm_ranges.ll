; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_bw_notify_pplib_of_wm_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_bw_notify_pplib_of_wm_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pp_smu_funcs_rv }
%struct.pp_smu_funcs_rv = type { i32, i32 (i32*, %struct.pp_smu_wm_range_sets*)* }
%struct.pp_smu_wm_range_sets = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8* }

@WM_SET_COUNT = common dso_local global i8* null, align 8
@WM_A = common dso_local global i8* null, align 8
@WM_REPORT_OVERRIDE = common dso_local global i64 0, align 8
@WM_B = common dso_local global i8* null, align 8
@WM_C = common dso_local global i8* null, align 8
@WM_D = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn_bw_notify_pplib_of_wm_ranges(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.pp_smu_funcs_rv*, align 8
  %4 = alloca %struct.pp_smu_wm_range_sets, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  store %struct.pp_smu_funcs_rv* null, %struct.pp_smu_funcs_rv** %3, align 8
  %9 = bitcast %struct.pp_smu_wm_range_sets* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  store i32 5000000, i32* %8, align 4
  %10 = load %struct.dc*, %struct.dc** %2, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.dc*, %struct.dc** %2, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.pp_smu_funcs_rv* %22, %struct.pp_smu_funcs_rv** %3, align 8
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %3, align 8
  %25 = icmp ne %struct.pp_smu_funcs_rv* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %3, align 8
  %28 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %27, i32 0, i32 1
  %29 = load i32 (i32*, %struct.pp_smu_wm_range_sets*)*, i32 (i32*, %struct.pp_smu_wm_range_sets*)** %28, align 8
  %30 = icmp ne i32 (i32*, %struct.pp_smu_wm_range_sets*)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23
  br label %203

32:                                               ; preds = %26
  %33 = call i32 (...) @kernel_fpu_begin()
  %34 = load %struct.dc*, %struct.dc** %2, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 1000000
  %40 = sdiv i32 %39, 32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.dc*, %struct.dc** %2, align 8
  %42 = getelementptr inbounds %struct.dc, %struct.dc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 1000
  store i32 %46, i32* %6, align 4
  %47 = load %struct.dc*, %struct.dc** %2, align 8
  %48 = getelementptr inbounds %struct.dc, %struct.dc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 1000
  store i32 %52, i32* %7, align 4
  %53 = call i32 (...) @kernel_fpu_end()
  %54 = load i8*, i8** @WM_SET_COUNT, align 8
  %55 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** @WM_SET_COUNT, align 8
  %57 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** @WM_A, align 8
  %59 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 1000
  %65 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 5000, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %73, 1000
  %75 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 8
  %79 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store i32 5000, i32* %82, align 4
  %83 = load i8*, i8** @WM_A, align 8
  %84 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sdiv i32 %88, 1000
  %90 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  %94 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  store i32 5000, i32* %97, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sdiv i32 %98, 1000
  %100 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 8
  %104 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 5000, i32* %107, align 4
  %108 = load %struct.dc*, %struct.dc** %2, align 8
  %109 = getelementptr inbounds %struct.dc, %struct.dc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WM_REPORT_OVERRIDE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %32
  %115 = load i8*, i8** @WM_A, align 8
  %116 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  store i8* %115, i8** %119, align 8
  %120 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 300, i32* %123, align 8
  %124 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i32 5000, i32* %127, align 4
  %128 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i32 800, i32* %131, align 8
  %132 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  store i32 5000, i32* %135, align 4
  %136 = load i8*, i8** @WM_A, align 8
  %137 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  store i8* %136, i8** %140, align 8
  %141 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  store i32 200, i32* %144, align 8
  %145 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  store i32 5000, i32* %148, align 4
  %149 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i32 800, i32* %152, align 8
  %153 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store i32 5000, i32* %156, align 4
  br label %157

157:                                              ; preds = %114, %32
  %158 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 1
  %161 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 0
  %164 = bitcast %struct.TYPE_10__* %160 to i8*
  %165 = bitcast %struct.TYPE_10__* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 24, i1 false)
  %166 = load i8*, i8** @WM_B, align 8
  %167 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  store i8* %166, i8** %170, align 8
  %171 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 2
  %174 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 0
  %177 = bitcast %struct.TYPE_10__* %173 to i8*
  %178 = bitcast %struct.TYPE_10__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 24, i1 false)
  %179 = load i8*, i8** @WM_C, align 8
  %180 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  store i8* %179, i8** %183, align 8
  %184 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 3
  %187 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 0
  %190 = bitcast %struct.TYPE_10__* %186 to i8*
  %191 = bitcast %struct.TYPE_10__* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 24, i1 false)
  %192 = load i8*, i8** @WM_D, align 8
  %193 = getelementptr inbounds %struct.pp_smu_wm_range_sets, %struct.pp_smu_wm_range_sets* %4, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 3
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 4
  store i8* %192, i8** %196, align 8
  %197 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %3, align 8
  %198 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %197, i32 0, i32 1
  %199 = load i32 (i32*, %struct.pp_smu_wm_range_sets*)*, i32 (i32*, %struct.pp_smu_wm_range_sets*)** %198, align 8
  %200 = load %struct.pp_smu_funcs_rv*, %struct.pp_smu_funcs_rv** %3, align 8
  %201 = getelementptr inbounds %struct.pp_smu_funcs_rv, %struct.pp_smu_funcs_rv* %200, i32 0, i32 0
  %202 = call i32 %199(i32* %201, %struct.pp_smu_wm_range_sets* %4)
  br label %203

203:                                              ; preds = %157, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kernel_fpu_begin(...) #2

declare dso_local i32 @kernel_fpu_end(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
