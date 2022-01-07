; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn2_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dcn2_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dc_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.dc_clock_config = type { i32, i32, i32, i32 }

@DC_CLOCK_TYPE_DISPCLK = common dso_local global i32 0, align 4
@DCN_MINIMUM_DISPCLK_Khz = common dso_local global i32 0, align 4
@DC_CLOCK_TYPE_DPPCLK = common dso_local global i32 0, align 4
@DCN_MINIMUM_DPPCLK_Khz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn2_get_clock(%struct.clk_mgr* %0, %struct.dc_state* %1, i32 %2, %struct.dc_clock_config* %3) #0 {
  %5 = alloca %struct.clk_mgr*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_clock_config*, align 8
  store %struct.clk_mgr* %0, %struct.clk_mgr** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dc_clock_config* %3, %struct.dc_clock_config** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @DC_CLOCK_TYPE_DISPCLK, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %14 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %21 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DCN_MINIMUM_DISPCLK_Khz, align 4
  %23 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %24 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %26 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %30 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %32 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %39 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %12, %4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DC_CLOCK_TYPE_DPPCLK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %46 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %53 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DCN_MINIMUM_DPPCLK_Khz, align 4
  %55 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %56 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %58 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %62 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %64 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dc_clock_config*, %struct.dc_clock_config** %8, align 8
  %71 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %44, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
