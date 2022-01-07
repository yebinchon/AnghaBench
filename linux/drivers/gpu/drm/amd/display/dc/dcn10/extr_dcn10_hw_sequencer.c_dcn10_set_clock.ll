; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_11__*, %struct.dc_state* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, %struct.dc_state*, i32)*, i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)* }
%struct.dc_clock_config = type { i64, i64, i64, i32 }
%struct.dc_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.dc_clocks }
%struct.dc_clocks = type { i64, i64 }

@DC_FAIL_UNSUPPORTED_1 = common dso_local global i32 0, align 4
@DC_FAIL_CLK_EXCEED_MAX = common dso_local global i32 0, align 4
@DC_FAIL_CLK_BELOW_MIN = common dso_local global i32 0, align 4
@DC_FAIL_CLK_BELOW_CFG_REQUIRED = common dso_local global i32 0, align 4
@DC_CLOCK_TYPE_DISPCLK = common dso_local global i32 0, align 4
@DC_CLOCK_TYPE_DPPCLK = common dso_local global i32 0, align 4
@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, i32, i64, i64)* @dcn10_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_set_clock(%struct.dc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dc_state*, align 8
  %11 = alloca %struct.dc_clock_config, align 8
  %12 = alloca %struct.dc_clocks*, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.dc*, %struct.dc** %6, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 1
  %15 = load %struct.dc_state*, %struct.dc_state** %14, align 8
  store %struct.dc_state* %15, %struct.dc_state** %10, align 8
  %16 = bitcast %struct.dc_clock_config* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.dc_state*, %struct.dc_state** %10, align 8
  %18 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.dc_clocks* %21, %struct.dc_clocks** %12, align 8
  %22 = load %struct.dc*, %struct.dc** %6, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %4
  %27 = load %struct.dc*, %struct.dc** %6, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)*, i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.dc*, %struct.dc** %6, align 8
  %37 = getelementptr inbounds %struct.dc, %struct.dc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)*, i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)** %41, align 8
  %43 = load %struct.dc*, %struct.dc** %6, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load %struct.dc_state*, %struct.dc_state** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %42(%struct.TYPE_11__* %45, %struct.dc_state* %46, i32 %47, %struct.dc_clock_config* %11)
  br label %49

49:                                               ; preds = %35, %26, %4
  %50 = load %struct.dc*, %struct.dc** %6, align 8
  %51 = getelementptr inbounds %struct.dc, %struct.dc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)*, i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_11__*, %struct.dc_state*, i32, %struct.dc_clock_config*)* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @DC_FAIL_UNSUPPORTED_1, align 4
  store i32 %59, i32* %5, align 4
  br label %129

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %11, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @DC_FAIL_CLK_EXCEED_MAX, align 4
  store i32 %66, i32* %5, align 4
  br label %129

67:                                               ; preds = %60
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %11, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @DC_FAIL_CLK_BELOW_MIN, align 4
  store i32 %73, i32* %5, align 4
  br label %129

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.dc_clock_config, %struct.dc_clock_config* %11, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @DC_FAIL_CLK_BELOW_CFG_REQUIRED, align 4
  store i32 %80, i32* %5, align 4
  br label %129

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @DC_CLOCK_TYPE_DISPCLK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.dc_clocks*, %struct.dc_clocks** %12, align 8
  %88 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %100

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @DC_CLOCK_TYPE_DPPCLK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.dc_clocks*, %struct.dc_clocks** %12, align 8
  %96 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %98, i32* %5, align 4
  br label %129

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %85
  %101 = load %struct.dc*, %struct.dc** %6, align 8
  %102 = getelementptr inbounds %struct.dc, %struct.dc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = load %struct.dc*, %struct.dc** %6, align 8
  %107 = getelementptr inbounds %struct.dc, %struct.dc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_11__*, %struct.dc_state*, i32)*, i32 (%struct.TYPE_11__*, %struct.dc_state*, i32)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_11__*, %struct.dc_state*, i32)* %112, null
  br i1 %113, label %114, label %127

114:                                              ; preds = %105
  %115 = load %struct.dc*, %struct.dc** %6, align 8
  %116 = getelementptr inbounds %struct.dc, %struct.dc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_11__*, %struct.dc_state*, i32)*, i32 (%struct.TYPE_11__*, %struct.dc_state*, i32)** %120, align 8
  %122 = load %struct.dc*, %struct.dc** %6, align 8
  %123 = getelementptr inbounds %struct.dc, %struct.dc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load %struct.dc_state*, %struct.dc_state** %10, align 8
  %126 = call i32 %121(%struct.TYPE_11__* %124, %struct.dc_state* %125, i32 1)
  br label %127

127:                                              ; preds = %114, %105, %100
  %128 = load i32, i32* @DC_OK, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %97, %79, %72, %65, %58
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
