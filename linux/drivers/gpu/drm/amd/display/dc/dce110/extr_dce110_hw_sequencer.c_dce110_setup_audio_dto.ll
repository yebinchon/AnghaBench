; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_setup_audio_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_setup_audio_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_12__*, %struct.TYPE_11__, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*, i64, i32*, i32*)* }
%struct.audio_output = type { i32, i32 }

@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dce110_setup_audio_dto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_setup_audio_dto(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca %struct.audio_output, align 4
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca %struct.audio_output, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.dc*, %struct.dc** %3, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %10
  %19 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %20 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i64 %24
  store %struct.pipe_ctx* %25, %struct.pipe_ctx** %6, align 8
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %77

31:                                               ; preds = %18
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %77

37:                                               ; preds = %31
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SIGNAL_TYPE_HDMI_TYPE_A, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %77

46:                                               ; preds = %37
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %55 = call i32 @build_audio_output(%struct.dc_state* %53, %struct.pipe_ctx* %54, %struct.audio_output* %7)
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_13__*, i64, i32*, i32*)*, i32 (%struct.TYPE_13__*, i64, i32*, i32*)** %62, align 8
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %7, i32 0, i32 1
  %74 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %7, i32 0, i32 0
  %75 = call i32 %63(%struct.TYPE_13__* %67, i64 %72, i32* %73, i32* %74)
  br label %80

76:                                               ; preds = %46
  br label %77

77:                                               ; preds = %76, %45, %36, %30
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %10

80:                                               ; preds = %52, %10
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.dc*, %struct.dc** %3, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %81, %86
  br i1 %87, label %88, label %160

88:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %156, %88
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.dc*, %struct.dc** %3, align 8
  %92 = getelementptr inbounds %struct.dc, %struct.dc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %159

97:                                               ; preds = %89
  %98 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %99 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i64 %103
  store %struct.pipe_ctx* %104, %struct.pipe_ctx** %8, align 8
  %105 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = icmp eq %struct.TYPE_12__* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %156

110:                                              ; preds = %97
  %111 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %156

116:                                              ; preds = %110
  %117 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %118 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dc_is_dp_signal(i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %156

125:                                              ; preds = %116
  %126 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %127 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = icmp ne %struct.TYPE_13__* %129, null
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %133 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %134 = call i32 @build_audio_output(%struct.dc_state* %132, %struct.pipe_ctx* %133, %struct.audio_output* %9)
  %135 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_13__*, i64, i32*, i32*)*, i32 (%struct.TYPE_13__*, i64, i32*, i32*)** %141, align 8
  %143 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %144 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %148 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %147, i32 0, i32 0
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %9, i32 0, i32 1
  %153 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %9, i32 0, i32 0
  %154 = call i32 %142(%struct.TYPE_13__* %146, i64 %151, i32* %152, i32* %153)
  br label %159

155:                                              ; preds = %125
  br label %156

156:                                              ; preds = %155, %124, %115, %109
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %89

159:                                              ; preds = %131, %89
  br label %160

160:                                              ; preds = %159, %80
  ret void
}

declare dso_local i32 @build_audio_output(%struct.dc_state*, %struct.pipe_ctx*, %struct.audio_output*) #1

declare dso_local i32 @dc_is_dp_signal(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
