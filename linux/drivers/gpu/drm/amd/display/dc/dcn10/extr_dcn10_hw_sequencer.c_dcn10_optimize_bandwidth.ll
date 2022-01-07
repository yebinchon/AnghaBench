; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_optimize_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_optimize_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_12__, %struct.TYPE_22__*, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.hubbub* }
%struct.TYPE_21__ = type { i32 }
%struct.hubbub = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.hubbub*, i32*, i32, i32)* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_13__*, %struct.dc_state*, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.dc_state = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@WM_REPORT_OVERRIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dcn10_optimize_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_optimize_bandwidth(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.hubbub*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %6 = load %struct.dc*, %struct.dc** %3, align 8
  %7 = getelementptr inbounds %struct.dc, %struct.dc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = load %struct.hubbub*, %struct.hubbub** %9, align 8
  store %struct.hubbub* %10, %struct.hubbub** %5, align 8
  %11 = load %struct.dc*, %struct.dc** %3, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.dc*, %struct.dc** %3, align 8
  %18 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.dc*, %struct.dc** %3, align 8
  %21 = getelementptr inbounds %struct.dc, %struct.dc* %20, i32 0, i32 3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %19
  %28 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %29 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %34 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.dc*, %struct.dc** %3, align 8
  %41 = getelementptr inbounds %struct.dc, %struct.dc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_13__*, %struct.dc_state*, i32)*, i32 (%struct.TYPE_13__*, %struct.dc_state*, i32)** %45, align 8
  %47 = load %struct.dc*, %struct.dc** %3, align 8
  %48 = getelementptr inbounds %struct.dc, %struct.dc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %51 = call i32 %46(%struct.TYPE_13__* %49, %struct.dc_state* %50, i32 1)
  br label %52

52:                                               ; preds = %39, %19
  %53 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %54 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32 (%struct.hubbub*, i32*, i32, i32)*, i32 (%struct.hubbub*, i32*, i32, i32)** %56, align 8
  %58 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %59 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %60 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load %struct.dc*, %struct.dc** %3, align 8
  %65 = getelementptr inbounds %struct.dc, %struct.dc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 1000
  %71 = call i32 %57(%struct.hubbub* %58, i32* %63, i32 %70, i32 1)
  %72 = load %struct.dc*, %struct.dc** %3, align 8
  %73 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %74 = call i32 @dcn10_stereo_hw_frame_pack_wa(%struct.dc* %72, %struct.dc_state* %73)
  %75 = load %struct.dc*, %struct.dc** %3, align 8
  %76 = getelementptr inbounds %struct.dc, %struct.dc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WM_REPORT_OVERRIDE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %52
  %82 = load %struct.dc*, %struct.dc** %3, align 8
  %83 = call i32 @dcn_bw_notify_pplib_of_wm_ranges(%struct.dc* %82)
  br label %84

84:                                               ; preds = %81, %52
  %85 = load %struct.dc*, %struct.dc** %3, align 8
  %86 = getelementptr inbounds %struct.dc, %struct.dc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.dc*, %struct.dc** %3, align 8
  %92 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %91)
  br label %93

93:                                               ; preds = %90, %84
  ret void
}

declare dso_local i32 @dcn10_verify_allow_pstate_change_high(%struct.dc*) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @dcn10_stereo_hw_frame_pack_wa(%struct.dc*, %struct.dc_state*) #1

declare dso_local i32 @dcn_bw_notify_pplib_of_wm_ranges(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
