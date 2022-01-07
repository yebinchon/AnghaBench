; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_update_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_update_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_23__, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.1*, %struct.dc_state*)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_25__, i32*, %struct.TYPE_22__*, %struct.TYPE_21__, i32*, i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_14__*, i32*, i32*, i32*, %struct.TYPE_15__*)* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32)* }
%struct.dc.1 = type opaque
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.dc*, %struct.dc_state*, i32)* }
%struct.dc_state = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.pipe_ctx* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_update_bandwidth(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  %9 = load %struct.dc*, %struct.dc** %4, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dc*, %struct.dc_state*, i32)*, i32 (%struct.dc*, %struct.dc_state*, i32)** %14, align 8
  %16 = load %struct.dc*, %struct.dc** %4, align 8
  %17 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %18 = call i32 %15(%struct.dc* %16, %struct.dc_state* %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = load %struct.dc*, %struct.dc** %4, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = load i32 (%struct.dc.1*, %struct.dc_state*)*, i32 (%struct.dc.1*, %struct.dc_state*)** %24, align 8
  %26 = load %struct.dc*, %struct.dc** %4, align 8
  %27 = bitcast %struct.dc* %26 to %struct.dc.1*
  %28 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %29 = call i32 %25(%struct.dc.1* %27, %struct.dc_state* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %145, %21
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dc*, %struct.dc** %4, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %148

38:                                               ; preds = %30
  %39 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %40 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i64 %44
  store %struct.pipe_ctx* %45, %struct.pipe_ctx** %7, align 8
  %46 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %145

51:                                               ; preds = %38
  %52 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %123

56:                                               ; preds = %51
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %58 = call i32 @is_pipe_tree_visible(%struct.pipe_ctx* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_16__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32, i32, i32, i32)** %68, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 %69(%struct.TYPE_16__* %73, i32 %77, i32 %81, i32 %85, i32 %89)
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %97, align 8
  %99 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %100 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 6
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = call i32 %98(%struct.TYPE_16__* %102, i32* %106)
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %109 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %56
  %113 = load %struct.dc*, %struct.dc** %4, align 8
  %114 = getelementptr inbounds %struct.dc, %struct.dc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)*, i32 (%struct.dc.0*, %struct.pipe_ctx*, i32)** %115, align 8
  %117 = load %struct.dc*, %struct.dc** %4, align 8
  %118 = bitcast %struct.dc* %117 to %struct.dc.0*
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 %116(%struct.dc.0* %118, %struct.pipe_ctx* %119, i32 %120)
  br label %122

122:                                              ; preds = %112, %56
  br label %123

123:                                              ; preds = %122, %51
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, %struct.TYPE_15__*)** %130, align 8
  %132 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %133 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %137 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %136, i32 0, i32 3
  %138 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %139 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %138, i32 0, i32 2
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %141 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %140, i32 0, i32 1
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %143 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %142, i32 0, i32 0
  %144 = call i32 %131(%struct.TYPE_14__* %135, i32* %137, i32* %139, i32* %141, %struct.TYPE_15__* %143)
  br label %145

145:                                              ; preds = %123, %50
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %30

148:                                              ; preds = %30
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %20
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @is_pipe_tree_visible(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
