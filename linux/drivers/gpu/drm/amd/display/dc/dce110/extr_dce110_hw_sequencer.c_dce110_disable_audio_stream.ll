; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_disable_audio_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_disable_audio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_16__, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_12__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_13__*, %struct.clk_mgr* }
%struct.TYPE_13__ = type { %struct.pp_smu_funcs* }
%struct.pp_smu_funcs = type { i32 }
%struct.clk_mgr = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.clk_mgr*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_disable_audio_stream(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pp_smu_funcs*, align 8
  %5 = alloca %struct.clk_mgr*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  store %struct.pp_smu_funcs* null, %struct.pp_smu_funcs** %4, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = icmp ne %struct.pipe_ctx* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %128

14:                                               ; preds = %8
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.dc*, %struct.dc** %20, align 8
  store %struct.dc* %21, %struct.dc** %3, align 8
  %22 = load %struct.dc*, %struct.dc** %3, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 1
  %24 = load %struct.clk_mgr*, %struct.clk_mgr** %23, align 8
  store %struct.clk_mgr* %24, %struct.clk_mgr** %5, align 8
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %14
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %128

39:                                               ; preds = %30, %14
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %46, align 8
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = call i32 %47(%struct.TYPE_18__* %51, i32 1)
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %128

58:                                               ; preds = %39
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.dc*, %struct.dc** %3, align 8
  %65 = getelementptr inbounds %struct.dc, %struct.dc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %67, align 8
  %69 = icmp ne %struct.pp_smu_funcs* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load %struct.dc*, %struct.dc** %3, align 8
  %72 = getelementptr inbounds %struct.dc, %struct.dc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %74, align 8
  store %struct.pp_smu_funcs* %75, %struct.pp_smu_funcs** %4, align 8
  br label %76

76:                                               ; preds = %70, %58
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @dc_is_dp_signal(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %91, align 8
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = call i32 %92(%struct.TYPE_18__* %96)
  br label %112

98:                                               ; preds = %76
  %99 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %100 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %105, align 8
  %107 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %108 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = call i32 %106(%struct.TYPE_18__* %110)
  br label %112

112:                                              ; preds = %98, %84
  %113 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %114 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32 (%struct.clk_mgr*)*, i32 (%struct.clk_mgr*)** %116, align 8
  %118 = icmp ne i32 (%struct.clk_mgr*)* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %121 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %120, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32 (%struct.clk_mgr*)*, i32 (%struct.clk_mgr*)** %123, align 8
  %125 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %126 = call i32 %124(%struct.clk_mgr* %125)
  br label %127

127:                                              ; preds = %119, %112
  br label %128

128:                                              ; preds = %13, %38, %127, %39
  ret void
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
