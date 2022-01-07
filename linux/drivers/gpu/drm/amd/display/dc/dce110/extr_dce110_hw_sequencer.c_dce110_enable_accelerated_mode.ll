; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_accelerated_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_accelerated_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)*, i32 (%struct.dc.0*, %struct.dc_state*)* }
%struct.dc_link = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_10__*)* }
%struct.dc.0 = type opaque
%struct.dc_state = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.dc_stream_state = type { i32 }

@DCE_VERSION_8_0 = common dso_local global i64 0, align 8
@DCE_VERSION_8_1 = common dso_local global i64 0, align 8
@DCE_VERSION_8_3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_enable_accelerated_mode(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca %struct.dc_link*, align 8
  %8 = alloca %struct.dc_stream_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %12 = load %struct.dc*, %struct.dc** %3, align 8
  %13 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %14 = call %struct.dc_link* @get_edp_link_with_sink(%struct.dc* %12, %struct.dc_state* %13)
  store %struct.dc_link* %14, %struct.dc_link** %6, align 8
  %15 = load %struct.dc*, %struct.dc** %3, align 8
  %16 = call %struct.dc_link* @get_edp_link(%struct.dc* %15)
  store %struct.dc_link* %16, %struct.dc_link** %7, align 8
  store %struct.dc_stream_state* null, %struct.dc_stream_state** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.dc*, %struct.dc** %3, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32 (%struct.dc.0*, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_state*)** %19, align 8
  %21 = icmp ne i32 (%struct.dc.0*, %struct.dc_state*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.dc*, %struct.dc** %3, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32 (%struct.dc.0*, %struct.dc_state*)*, i32 (%struct.dc.0*, %struct.dc_state*)** %25, align 8
  %27 = load %struct.dc*, %struct.dc** %3, align 8
  %28 = bitcast %struct.dc* %27 to %struct.dc.0*
  %29 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %30 = call i32 %26(%struct.dc.0* %28, %struct.dc_state* %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %33 = call %struct.dc_stream_state* @get_edp_stream(%struct.dc_state* %32)
  store %struct.dc_stream_state* %33, %struct.dc_stream_state** %8, align 8
  %34 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %35 = icmp ne %struct.dc_link* %34, null
  br i1 %35, label %36, label %85

36:                                               ; preds = %31
  %37 = load %struct.dc*, %struct.dc** %3, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DCE_VERSION_8_0, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %36
  %45 = load %struct.dc*, %struct.dc** %3, align 8
  %46 = getelementptr inbounds %struct.dc, %struct.dc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DCE_VERSION_8_1, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %44
  %53 = load %struct.dc*, %struct.dc** %3, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DCE_VERSION_8_3, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %52
  %61 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %62 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %66, align 8
  %68 = load %struct.dc_link*, %struct.dc_link** %7, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i64 %67(%struct.TYPE_10__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %75 = icmp ne %struct.dc_stream_state* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %78 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.dc_stream_state*, %struct.dc_stream_state** %8, align 8
  %82 = icmp ne %struct.dc_stream_state* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %52, %44, %36, %31
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %105, %85
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %89 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %94 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %95, i64 %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  store i32 1, i32* %10, align 4
  br label %108

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %86

108:                                              ; preds = %103, %86
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %145, label %114

114:                                              ; preds = %111
  %115 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %116 = icmp ne %struct.dc_link* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load %struct.dc*, %struct.dc** %3, align 8
  %122 = getelementptr inbounds %struct.dc, %struct.dc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %123, align 8
  %125 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %126 = call i32 %124(%struct.dc_link* %125, i32 0)
  br label %127

127:                                              ; preds = %120, %117, %114
  %128 = load %struct.dc*, %struct.dc** %3, align 8
  %129 = call i32 @power_down_all_hw_blocks(%struct.dc* %128)
  %130 = load %struct.dc*, %struct.dc** %3, align 8
  %131 = call i32 @disable_vga_and_power_gate_all_controllers(%struct.dc* %130)
  %132 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %133 = icmp ne %struct.dc_link* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = load %struct.dc*, %struct.dc** %3, align 8
  %139 = getelementptr inbounds %struct.dc, %struct.dc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %140, align 8
  %142 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %143 = call i32 %141(%struct.dc_link* %142, i32 0)
  br label %144

144:                                              ; preds = %137, %134, %127
  br label %145

145:                                              ; preds = %144, %111, %108
  %146 = load %struct.dc*, %struct.dc** %3, align 8
  %147 = getelementptr inbounds %struct.dc, %struct.dc* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @bios_set_scratch_acc_mode_change(i32 %150)
  ret void
}

declare dso_local %struct.dc_link* @get_edp_link_with_sink(%struct.dc*, %struct.dc_state*) #1

declare dso_local %struct.dc_link* @get_edp_link(%struct.dc*) #1

declare dso_local %struct.dc_stream_state* @get_edp_stream(%struct.dc_state*) #1

declare dso_local i32 @power_down_all_hw_blocks(%struct.dc*) #1

declare dso_local i32 @disable_vga_and_power_gate_all_controllers(%struct.dc*) #1

declare dso_local i32 @bios_set_scratch_acc_mode_change(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
