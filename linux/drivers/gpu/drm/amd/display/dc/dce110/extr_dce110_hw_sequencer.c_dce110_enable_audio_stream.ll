; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_audio_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_enable_audio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_15__, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_17__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_24__*, %struct.TYPE_20__*, %struct.clk_mgr* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { %struct.pp_smu_funcs* }
%struct.pp_smu_funcs = type { i32 }
%struct.clk_mgr = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.clk_mgr*)* }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_enable_audio_stream(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pp_smu_funcs*, align 8
  %5 = alloca %struct.clk_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  store %struct.pp_smu_funcs* null, %struct.pp_smu_funcs** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %11 = icmp ne %struct.TYPE_19__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %140

13:                                               ; preds = %1
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load %struct.dc*, %struct.dc** %19, align 8
  store %struct.dc* %20, %struct.dc** %3, align 8
  %21 = load %struct.dc*, %struct.dc** %3, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 2
  %23 = load %struct.clk_mgr*, %struct.clk_mgr** %22, align 8
  store %struct.clk_mgr* %23, %struct.clk_mgr** %5, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %13
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %140

38:                                               ; preds = %29, %13
  %39 = load %struct.dc*, %struct.dc** %3, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %42, align 8
  %44 = icmp ne %struct.pp_smu_funcs* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.dc*, %struct.dc** %3, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %49, align 8
  store %struct.pp_smu_funcs* %50, %struct.pp_smu_funcs** %4, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %57, label %140

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MAX_PIPES, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load %struct.dc*, %struct.dc** %3, align 8
  %64 = getelementptr inbounds %struct.dc, %struct.dc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %90, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = call i32 %91(%struct.TYPE_17__* %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp uge i32 %97, 1
  br i1 %98, label %99, label %114

99:                                               ; preds = %83
  %100 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %101 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %100, i32 0, i32 0
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32 (%struct.clk_mgr*)*, i32 (%struct.clk_mgr*)** %103, align 8
  %105 = icmp ne i32 (%struct.clk_mgr*)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %108 = getelementptr inbounds %struct.clk_mgr, %struct.clk_mgr* %107, i32 0, i32 0
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32 (%struct.clk_mgr*)*, i32 (%struct.clk_mgr*)** %110, align 8
  %112 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %113 = call i32 %111(%struct.clk_mgr* %112)
  br label %114

114:                                              ; preds = %106, %99, %83
  %115 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %121, align 8
  %123 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %124 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = call i32 %122(%struct.TYPE_16__* %126, i32 0)
  %128 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %129 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = icmp ne %struct.TYPE_17__* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %114
  %134 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %135 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %133, %114
  br label %140

140:                                              ; preds = %12, %37, %139, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
