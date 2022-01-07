; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_get_required_clocks_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clk_mgr.c_dce_get_required_clocks_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr = type { i32 }
%struct.dc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.dce_clk_mgr = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@DM_PP_CLOCKS_STATE_ULTRA_LOW = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_mgr*, %struct.dc_state*)* @dce_get_required_clocks_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_get_required_clocks_state(%struct.clk_mgr* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.clk_mgr*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.dce_clk_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_mgr* %0, %struct.clk_mgr** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %9 = load %struct.clk_mgr*, %struct.clk_mgr** %3, align 8
  %10 = call %struct.dce_clk_mgr* @TO_DCE_CLK_MGR(%struct.clk_mgr* %9)
  store %struct.dce_clk_mgr* %10, %struct.dce_clk_mgr** %5, align 8
  %11 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %12 = call i32 @get_max_pixel_clock_for_all_paths(%struct.dc_state* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %14 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %49, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DM_PP_CLOCKS_STATE_ULTRA_LOW, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %22 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %28 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %26, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %39 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36, %20
  br label %52

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  br label %16

52:                                               ; preds = %47, %16
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %57 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %52
  %61 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %62 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %65 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %72 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %70, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @DM_PP_CLOCKS_STATE_INVALID, align 4
  store i32 %79, i32* %7, align 4
  br label %84

80:                                               ; preds = %60
  %81 = load %struct.dce_clk_mgr*, %struct.dce_clk_mgr** %5, align 8
  %82 = getelementptr inbounds %struct.dce_clk_mgr, %struct.dce_clk_mgr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %78
  br label %85

85:                                               ; preds = %84, %52
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.dce_clk_mgr* @TO_DCE_CLK_MGR(%struct.clk_mgr*) #1

declare dso_local i32 @get_max_pixel_clock_for_all_paths(%struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
