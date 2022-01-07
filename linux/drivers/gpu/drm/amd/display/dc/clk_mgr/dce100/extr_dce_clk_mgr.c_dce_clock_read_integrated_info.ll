; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_clock_read_integrated_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_clock_read_integrated_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mgr_internal = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.dc_bios*, %struct.TYPE_8__* }
%struct.dc_bios = type { %struct.TYPE_14__*, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.dc_debug_options }
%struct.dc_debug_options = type { i32 }

@NUMBER_OF_DISP_CLK_VOLTAGE = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_INVALID = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_ULTRA_LOW = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_LOW = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_NOMINAL = common dso_local global i32 0, align 4
@DM_PP_CLOCKS_STATE_PERFORMANCE = common dso_local global i32 0, align 4
@DFS_BYPASS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mgr_internal*)* @dce_clock_read_integrated_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_clock_read_integrated_info(%struct.clk_mgr_internal* %0) #0 {
  %2 = alloca %struct.clk_mgr_internal*, align 8
  %3 = alloca %struct.dc_debug_options*, align 8
  %4 = alloca %struct.dc_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_mgr_internal* %0, %struct.clk_mgr_internal** %2, align 8
  %7 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %8 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.dc_debug_options* %13, %struct.dc_debug_options** %3, align 8
  %14 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %15 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.dc_bios*, %struct.dc_bios** %18, align 8
  store %struct.dc_bios* %19, %struct.dc_bios** %4, align 8
  %20 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %21 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %26 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %31 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %34 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %39 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %43 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %45 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %50 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %49, i32 0, i32 0
  store i32 3600000, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %32
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %107, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @NUMBER_OF_DISP_CLK_VOLTAGE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = load i32, i32* @DM_PP_CLOCKS_STATE_INVALID, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %68 [
    i32 0, label %60
    i32 1, label %62
    i32 2, label %64
    i32 3, label %66
  ]

60:                                               ; preds = %57
  %61 = load i32, i32* @DM_PP_CLOCKS_STATE_ULTRA_LOW, align 4
  store i32 %61, i32* %6, align 4
  br label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @DM_PP_CLOCKS_STATE_LOW, align 4
  store i32 %63, i32* %6, align 4
  br label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @DM_PP_CLOCKS_STATE_NOMINAL, align 4
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @DM_PP_CLOCKS_STATE_PERFORMANCE, align 4
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @DM_PP_CLOCKS_STATE_INVALID, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %66, %64, %62, %60
  %71 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %72 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = icmp ne %struct.TYPE_14__* %73, null
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %77 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 100000
  br i1 %86, label %87, label %105

87:                                               ; preds = %75
  %88 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %89 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %99 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %98, i32 0, i32 2
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %87, %75
  br label %106

106:                                              ; preds = %105, %70
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %53

110:                                              ; preds = %53
  %111 = load %struct.dc_debug_options*, %struct.dc_debug_options** %3, align 8
  %112 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %110
  %116 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %117 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %122 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DFS_BYPASS_ENABLE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.clk_mgr_internal*, %struct.clk_mgr_internal** %2, align 8
  %131 = getelementptr inbounds %struct.clk_mgr_internal, %struct.clk_mgr_internal* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %120
  br label %133

133:                                              ; preds = %132, %115, %110
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
