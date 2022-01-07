; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_reset_hw_ctx_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_reset_hw_ctx_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_33__, i32, %struct.TYPE_31__*, %struct.TYPE_26__ }
%struct.TYPE_33__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_19__*, %struct.TYPE_30__, %struct.TYPE_28__, %struct.clock_source*, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_22__*, i32)* }
%struct.TYPE_28__ = type { %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_21__*)* }
%struct.clock_source = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 (%struct.clock_source*)* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.pipe_ctx* }
%struct.TYPE_26__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.pipe_ctx* }

@MAX_PIPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DC: failed to blank crtc!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dce110_reset_hw_ctx_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_reset_hw_ctx_wrap(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_ctx*, align 8
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca %struct.clock_source*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %196, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX_PIPES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %199

13:                                               ; preds = %9
  %14 = load %struct.dc*, %struct.dc** %3, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %19, i64 %21
  store %struct.pipe_ctx* %22, %struct.pipe_ctx** %6, align 8
  %23 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %24 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i64 %28
  store %struct.pipe_ctx* %29, %struct.pipe_ctx** %7, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %13
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %13
  br label %196

40:                                               ; preds = %34
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = icmp ne %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %48 = call i64 @pipe_need_reprogram(%struct.pipe_ctx* %46, %struct.pipe_ctx* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %195

50:                                               ; preds = %45, %40
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 3
  %53 = load %struct.clock_source*, %struct.clock_source** %52, align 8
  store %struct.clock_source* %53, %struct.clock_source** %8, align 8
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = icmp ne %struct.TYPE_19__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %110, label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %67 = call i32 @core_link_disable_stream(%struct.pipe_ctx* %66)
  %68 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = icmp ne %struct.TYPE_21__* %71, null
  br i1 %72, label %73, label %109

73:                                               ; preds = %65
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %80, align 8
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = call i32 %81(%struct.TYPE_21__* %85)
  %87 = load %struct.dc*, %struct.dc** %3, align 8
  %88 = getelementptr inbounds %struct.dc, %struct.dc* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %108

92:                                               ; preds = %73
  %93 = load %struct.dc*, %struct.dc** %3, align 8
  %94 = getelementptr inbounds %struct.dc, %struct.dc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 1
  %97 = load %struct.dc*, %struct.dc** %3, align 8
  %98 = getelementptr inbounds %struct.dc, %struct.dc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = call i32 @update_audio_usage(%struct.TYPE_20__* %96, i32 %99, %struct.TYPE_21__* %103, i32 0)
  %105 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %107, align 8
  br label %108

108:                                              ; preds = %92, %73
  br label %109

109:                                              ; preds = %108, %65
  br label %110

110:                                              ; preds = %109, %58
  %111 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %117, align 8
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %120 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = call i32 %118(%struct.TYPE_23__* %122, i32 1)
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %126, align 8
  %128 = call i32 @hwss_wait_for_blank_complete(%struct.TYPE_23__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %110
  %131 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %132 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %133

133:                                              ; preds = %130, %110
  %134 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %135 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %140, align 8
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %143 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = call i32 %141(%struct.TYPE_23__* %145)
  %147 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %148 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %153, align 8
  %155 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %156 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = load %struct.dc*, %struct.dc** %3, align 8
  %160 = getelementptr inbounds %struct.dc, %struct.dc* %159, i32 0, i32 2
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 %154(%struct.TYPE_22__* %158, i32 %163)
  %165 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %166 = icmp ne %struct.clock_source* %165, null
  br i1 %166, label %167, label %184

167:                                              ; preds = %133
  %168 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %169 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %168, i32 0, i32 0
  %170 = load %struct.dc*, %struct.dc** %3, align 8
  %171 = getelementptr inbounds %struct.dc, %struct.dc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %174 = call i64 @resource_get_clock_source_reference(%struct.TYPE_24__* %169, i32 %172, %struct.clock_source* %173)
  %175 = icmp eq i64 0, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %167
  %177 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %178 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %177, i32 0, i32 0
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 0
  %181 = load i32 (%struct.clock_source*)*, i32 (%struct.clock_source*)** %180, align 8
  %182 = load %struct.clock_source*, %struct.clock_source** %8, align 8
  %183 = call i32 %181(%struct.clock_source* %182)
  br label %184

184:                                              ; preds = %176, %167, %133
  %185 = load %struct.dc*, %struct.dc** %3, align 8
  %186 = getelementptr inbounds %struct.dc, %struct.dc* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 0
  %188 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %187, align 8
  %189 = load %struct.dc*, %struct.dc** %3, align 8
  %190 = bitcast %struct.dc* %189 to %struct.dc.0*
  %191 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %192 = call i32 %188(%struct.dc.0* %190, %struct.pipe_ctx* %191)
  %193 = load %struct.pipe_ctx*, %struct.pipe_ctx** %6, align 8
  %194 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %193, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %194, align 8
  br label %195

195:                                              ; preds = %184, %45
  br label %196

196:                                              ; preds = %195, %39
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %9

199:                                              ; preds = %9
  ret void
}

declare dso_local i64 @pipe_need_reprogram(%struct.pipe_ctx*, %struct.pipe_ctx*) #1

declare dso_local i32 @core_link_disable_stream(%struct.pipe_ctx*) #1

declare dso_local i32 @update_audio_usage(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @hwss_wait_for_blank_complete(%struct.TYPE_23__*) #1

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @resource_get_clock_source_reference(%struct.TYPE_24__*, i32, %struct.clock_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
