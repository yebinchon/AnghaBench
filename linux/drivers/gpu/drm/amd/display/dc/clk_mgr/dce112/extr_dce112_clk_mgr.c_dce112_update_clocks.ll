; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_update_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce112/extr_dce112_clk_mgr.c_dce112_update_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.clk_mgr_internal = type { i64, i32 }
%struct.dm_pp_power_level_change_request = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr*, %struct.dc_state*, i32)* @dce112_update_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce112_update_clocks(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.clk_mgr*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_mgr_internal*, align 8
  %8 = alloca %struct.dm_pp_power_level_change_request, align 8
  %9 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %11 = call %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr* %10)
  store %struct.clk_mgr_internal* %11, %struct.clk_mgr_internal** %7, align 8
  %12 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %13 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %19 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 115
  %25 = sdiv i32 %24, 100
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %28 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %29 = call i64 @dce_get_required_clocks_state(%struct.clk_mgr* %27, %struct.dc_state* %28)
  %30 = getelementptr inbounds %struct.dm_pp_power_level_change_request, %struct.dm_pp_power_level_change_request* %8, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.dm_pp_power_level_change_request, %struct.dm_pp_power_level_change_request* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %34 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37, %26
  %41 = getelementptr inbounds %struct.dm_pp_power_level_change_request, %struct.dm_pp_power_level_change_request* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %44 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40, %37
  %48 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %49 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i64 @dm_pp_apply_power_level_change_request(%struct.TYPE_10__* %50, %struct.dm_pp_power_level_change_request* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.dm_pp_power_level_change_request, %struct.dm_pp_power_level_change_request* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %7, align 8
  %57 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %63 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @should_set_clock(i32 %60, i32 %61, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dce112_set_clock(%struct.clk_mgr* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %74 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %68, %59
  %77 = load %struct.clk_mgr*, %struct.clk_mgr** %4, align 8
  %78 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %83 = call i32 @dce11_pplib_apply_display_requirements(i32 %81, %struct.dc_state* %82)
  ret void
}

declare dso_local %struct.clk_mgr_internal* @TO_CLK_MGR_INTERNAL(%struct.clk_mgr*) #1

declare dso_local i64 @dce_get_required_clocks_state(%struct.clk_mgr*, %struct.dc_state*) #1

declare dso_local i64 @dm_pp_apply_power_level_change_request(%struct.TYPE_10__*, %struct.dm_pp_power_level_change_request*) #1

declare dso_local i64 @should_set_clock(i32, i32, i32) #1

declare dso_local i32 @dce112_set_clock(%struct.clk_mgr*, i32) #1

declare dso_local i32 @dce11_pplib_apply_display_requirements(i32, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
