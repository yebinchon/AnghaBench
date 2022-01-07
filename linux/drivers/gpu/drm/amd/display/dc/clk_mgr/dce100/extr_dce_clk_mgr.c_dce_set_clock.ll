; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.dc_bios*, %struct.bp_pixel_clock_parameters*)* }
%struct.bp_pixel_clock_parameters = type { i32, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.clk_mgr_internal = type { i32, i32, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.dmcu*, i32)*, i64 (%struct.dmcu*)* }

@CLOCK_SOURCE_ID_DFS = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_NOMINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_set_clock(%struct.clk_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_mgr_internal*, align 8
  %6 = alloca %struct.bp_pixel_clock_parameters, align 4
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmcu*, align 8
  store %struct.clk_mgr* %0, %struct.clk_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %11 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %10)
  store %struct.clk_mgr_internal* %11, %struct.clk_mgr_internal** %5, align 8
  %12 = bitcast %struct.bp_pixel_clock_parameters* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 20, i1 false)
  %13 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %14 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.dc_bios*, %struct.dc_bios** %16, align 8
  store %struct.dc_bios* %17, %struct.dc_bios** %7, align 8
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %20 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.dmcu*, %struct.dmcu** %27, align 8
  store %struct.dmcu* %28, %struct.dmcu** %9, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %34 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 64
  %37 = call i32 @max(i32 %32, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %2
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 10
  %41 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @CLOCK_SOURCE_ID_DFS, align 4
  %43 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %45 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %53 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dc_bios*, %struct.bp_pixel_clock_parameters*)*, i32 (%struct.dc_bios*, %struct.bp_pixel_clock_parameters*)** %55, align 8
  %57 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %58 = call i32 %56(%struct.dc_bios* %57, %struct.bp_pixel_clock_parameters* %6)
  %59 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %60 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %67 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %63, %51
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @DM_PP_CLOCKS_STATE_NOMINAL, align 4
  %75 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %5, align 8
  %76 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %79 = icmp ne %struct.dmcu* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %82 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64 (%struct.dmcu*)*, i64 (%struct.dmcu*)** %84, align 8
  %86 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %87 = call i64 %85(%struct.dmcu* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %91 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32 (%struct.dmcu*, i32)*, i32 (%struct.dmcu*, i32)** %93, align 8
  %95 = load %struct.dmcu*, %struct.dmcu** %9, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sdiv i32 %96, 1000
  %98 = sdiv i32 %97, 7
  %99 = call i32 %94(%struct.dmcu* %95, i32 %98)
  br label %100

100:                                              ; preds = %89, %80, %77
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
