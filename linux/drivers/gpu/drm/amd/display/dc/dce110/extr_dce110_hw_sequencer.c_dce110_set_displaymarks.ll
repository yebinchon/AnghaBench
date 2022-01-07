; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_displaymarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_displaymarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_18__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_19__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)* }

@MAX_PIPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dce110_set_displaymarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_set_displaymarks(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %10 = load %struct.dc*, %struct.dc** %3, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %142, %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MAX_PIPES, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %145

19:                                               ; preds = %15
  %20 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %21 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i64 %24
  store %struct.pipe_ctx* %25, %struct.pipe_ctx** %8, align 8
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %142

31:                                               ; preds = %19
  %32 = load %struct.dc*, %struct.dc** %3, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @compute_pstate_blackout_duration(i32 %36, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i32)** %47, align 8
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %54 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %63 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %72 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %81 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 %48(%struct.TYPE_19__* %52, i32 %61, i32 %70, i32 %79, i32 %88, i32 %89)
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %95, label %139

95:                                               ; preds = %31
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %6, align 8
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32)** %104, align 8
  %106 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %111 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %120 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %129 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 %105(%struct.TYPE_19__* %109, i32 %118, i32 %127, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %95, %31
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %142

142:                                              ; preds = %139, %30
  %143 = load i64, i64* %5, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %5, align 8
  br label %15

145:                                              ; preds = %15
  ret void
}

declare dso_local i32 @compute_pstate_blackout_duration(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
