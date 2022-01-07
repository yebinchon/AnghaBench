; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_clock_read_ss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_clock_read_ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.dc_bios*, i32)*, i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)* }
%struct.spread_spectrum_info = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@AS_SIGNAL_TYPE_GPU_PLL = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@AS_SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_clock_read_ss_info(%struct.clk_mgr_internal* %0) #0 {
  %2 = alloca %struct.clk_mgr_internal*, align 8
  %3 = alloca %struct.dc_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spread_spectrum_info, align 8
  %6 = alloca i32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %2, align 8
  %7 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %8 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.dc_bios*, %struct.dc_bios** %11, align 8
  store %struct.dc_bios* %12, %struct.dc_bios** %3, align 8
  %13 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %14 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dc_bios*, i32)*, i32 (%struct.dc_bios*, i32)** %16, align 8
  %18 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %19 = load i32, i32* @AS_SIGNAL_TYPE_GPU_PLL, align 4
  %20 = call i32 %17(%struct.dc_bios* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %1
  %24 = bitcast %struct.spread_spectrum_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %26 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)*, i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)** %28, align 8
  %30 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %31 = load i32, i32* @AS_SIGNAL_TYPE_GPU_PLL, align 4
  %32 = call i32 %29(%struct.dc_bios* %30, i32 %31, i32 0, %struct.spread_spectrum_info* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BP_RESULT_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %42 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %46 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %55 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %40
  br label %91

57:                                               ; preds = %36, %23
  %58 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %59 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)*, i32 (%struct.dc_bios*, i32, i32, %struct.spread_spectrum_info*)** %61, align 8
  %63 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %64 = load i32, i32* @AS_SIGNAL_TYPE_DISPLAY_PORT, align 4
  %65 = call i32 %62(%struct.dc_bios* %63, i32 %64, i32 0, %struct.spread_spectrum_info* %5)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BP_RESULT_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %75 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %79 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %5, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %88 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %73
  br label %90

90:                                               ; preds = %89, %69, %57
  br label %91

91:                                               ; preds = %56, %90, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
