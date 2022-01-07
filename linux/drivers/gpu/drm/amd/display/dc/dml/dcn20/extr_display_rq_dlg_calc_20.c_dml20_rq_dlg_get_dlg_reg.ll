; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20.c_dml20_rq_dlg_get_dlg_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20.c_dml20_rq_dlg_get_dlg_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"DML_DLG: Calculation for pipe[%d] start\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"DML_DLG: Calculation for pipe[%d] end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dml20_rq_dlg_get_dlg_reg(%struct.display_mode_lib* %0, i32* %1, i32* %2, %struct.TYPE_22__* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.display_mode_lib*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__, align 4
  %24 = alloca %struct.TYPE_23__, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = bitcast %struct.TYPE_21__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = bitcast %struct.TYPE_23__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 40, i1 false)
  %27 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @get_wm_urgent(%struct.display_mode_lib* %27, %struct.TYPE_22__* %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @get_clk_dcf_deepsleep(%struct.display_mode_lib* %32, %struct.TYPE_22__* %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @get_urgent_extra_latency(%struct.display_mode_lib* %37, %struct.TYPE_22__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @get_wm_memory_trip(%struct.display_mode_lib* %42, %struct.TYPE_22__* %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @get_wm_dram_clock_change(%struct.display_mode_lib* %47, %struct.TYPE_22__* %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @get_wm_stutter_enter_exit(%struct.display_mode_lib* %52, %struct.TYPE_22__* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @get_total_immediate_flip_bw(%struct.display_mode_lib* %57, %struct.TYPE_22__* %58, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @get_total_immediate_flip_bytes(%struct.display_mode_lib* %62, %struct.TYPE_22__* %63, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %68 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %76 = call i32 @print__dlg_sys_params_st(%struct.display_mode_lib* %75, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %24)
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @dml_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %81 = load i32, i32* %17, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dml20_rq_dlg_get_rq_params(%struct.display_mode_lib* %79, %struct.TYPE_21__* %23, i32 %86)
  %88 = load %struct.display_mode_lib*, %struct.display_mode_lib** %12, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @dml20_rq_dlg_get_dlg_params(%struct.display_mode_lib* %88, %struct.TYPE_22__* %89, i32 %90, i32 %91, i32* %92, i32* %93, i32 %95, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %24, i32 %96, i32 %97)
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @dml_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_wm_urgent(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_clk_dcf_deepsleep(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_urgent_extra_latency(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_wm_memory_trip(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_wm_dram_clock_change(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_wm_stutter_enter_exit(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_total_immediate_flip_bw(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @get_total_immediate_flip_bytes(%struct.display_mode_lib*, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @print__dlg_sys_params_st(%struct.display_mode_lib*, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #2

declare dso_local i32 @dml_print(i8*, i32) #2

declare dso_local i32 @dml20_rq_dlg_get_rq_params(%struct.display_mode_lib*, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @dml20_rq_dlg_get_dlg_params(%struct.display_mode_lib*, %struct.TYPE_22__*, i32, i32, i32*, i32*, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
