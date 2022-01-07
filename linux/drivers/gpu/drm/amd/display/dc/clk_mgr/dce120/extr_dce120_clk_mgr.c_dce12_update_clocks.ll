; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/extr_dce120_clk_mgr.c_dce12_update_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce120/extr_dce120_clk_mgr.c_dce12_update_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.dc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.clk_mgr_internal = type { i64, i32 }
%struct.dm_pp_clock_for_voltage_req = type { i32, i32, i32 }

@DM_PP_CLOCK_TYPE_DISPLAY_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_DISPLAYPHYCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr*, %struct.dc_state*, i32)* @dce12_update_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce12_update_clocks(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_mgr_internal*, align 8
  %8 = alloca %struct.dm_pp_clock_for_voltage_req, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %12 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %11)
  store %struct.clk_mgr_internal* %12, %struct.clk_mgr_internal** %7, align 8
  %13 = bitcast %struct.dm_pp_clock_for_voltage_req* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %15 = call i32 @dce_get_max_pixel_clock_for_all_paths(%struct.dc_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %17 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %23 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %27, 115
  %29 = sdiv i32 %28, 100
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %34 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @should_set_clock(i32 %31, i32 %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %30
  %40 = load i32, i32* @DM_PP_CLOCK_TYPE_DISPLAY_CLK, align 4
  %41 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, %struct.dm_pp_clock_for_voltage_req* %8, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %43 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dce_adjust_dp_ref_freq_for_ss(%struct.clk_mgr_internal* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, %struct.dm_pp_clock_for_voltage_req* %8, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dce112_set_clock(%struct.clk_mgr* %53, i32 %54)
  %56 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %57 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %60 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = call i32 @dm_pp_apply_clock_for_voltage_request(%struct.TYPE_10__* %61, %struct.dm_pp_clock_for_voltage_req* %8)
  br label %63

63:                                               ; preds = %50, %30
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %67 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @should_set_clock(i32 %64, i32 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = load i32, i32* @DM_PP_CLOCK_TYPE_DISPLAYPHYCLK, align 4
  %74 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, %struct.dm_pp_clock_for_voltage_req* %8, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, %struct.dm_pp_clock_for_voltage_req* %8, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %79 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %82 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @dm_pp_apply_clock_for_voltage_request(%struct.TYPE_10__* %83, %struct.dm_pp_clock_for_voltage_req* %8)
  br label %85

85:                                               ; preds = %72, %63
  %86 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %87 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %92 = call i32 @dce11_pplib_apply_display_requirements(i32 %90, %struct.dc_state* %91)
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dce_get_max_pixel_clock_for_all_paths(%struct.dc_state*) #1

declare dso_local i64 @should_set_clock(i32, i32, i32) #1

declare dso_local i32 @dce_adjust_dp_ref_freq_for_ss(%struct.clk_mgr_internal*, i32) #1

declare dso_local i32 @dce112_set_clock(%struct.clk_mgr*, i32) #1

declare dso_local i32 @dm_pp_apply_clock_for_voltage_request(%struct.TYPE_10__*, %struct.dm_pp_clock_for_voltage_req*) #1

declare dso_local i32 @dce11_pplib_apply_display_requirements(i32, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
