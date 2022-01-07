; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 (%struct.dc.0*, %struct.dpp*, %struct.hubp*)*, i32 (%struct.dc.1*, i32, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.dpp = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.dpp*, i32, i32)* }
%struct.hubp = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.hubp*, i32)* }
%struct.dc.1 = type opaque
%struct.pipe_ctx = type { i32*, i32*, i32*, %struct.TYPE_14__, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { %struct.hubp*, %struct.dpp*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, i32)* }
%struct.TYPE_10__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn10_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_plane_atomic_disable(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca %struct.dpp*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.hubp*, %struct.hubp** %10, align 8
  store %struct.hubp* %11, %struct.hubp** %5, align 8
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.dpp*, %struct.dpp** %14, align 8
  store %struct.dpp* %15, %struct.dpp** %6, align 8
  %16 = load %struct.hubp*, %struct.hubp** %5, align 8
  %17 = getelementptr inbounds %struct.hubp, %struct.hubp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dc*, %struct.dc** %3, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32 (%struct.dc.1*, i32, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, i32, %struct.pipe_ctx*)** %21, align 8
  %23 = load %struct.dc*, %struct.dc** %3, align 8
  %24 = bitcast %struct.dc* %23 to %struct.dc.1*
  %25 = load %struct.dc*, %struct.dc** %3, align 8
  %26 = getelementptr inbounds %struct.dc, %struct.dc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %29 = call i32 %22(%struct.dc.1* %24, i32 %27, %struct.pipe_ctx* %28)
  %30 = load %struct.hubp*, %struct.hubp** %5, align 8
  %31 = getelementptr inbounds %struct.hubp, %struct.hubp* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %33, align 8
  %35 = load %struct.hubp*, %struct.hubp** %5, align 8
  %36 = call i32 %34(%struct.hubp* %35, i32 0)
  %37 = load %struct.dpp*, %struct.dpp** %6, align 8
  %38 = getelementptr inbounds %struct.dpp, %struct.dpp* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dpp*, i32, i32)*, i32 (%struct.dpp*, i32, i32)** %40, align 8
  %42 = load %struct.dpp*, %struct.dpp** %6, align 8
  %43 = call i32 %41(%struct.dpp* %42, i32 0, i32 0)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 15
  br i1 %45, label %46, label %69

46:                                               ; preds = %2
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %62, align 8
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = call i32 %63(%struct.TYPE_13__* %67, i32 0)
  br label %69

69:                                               ; preds = %55, %46, %2
  %70 = load %struct.hubp*, %struct.hubp** %5, align 8
  %71 = getelementptr inbounds %struct.hubp, %struct.hubp* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.dc*, %struct.dc** %3, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.dc*, %struct.dc** %3, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32 (%struct.dc.0*, %struct.dpp*, %struct.hubp*)*, i32 (%struct.dc.0*, %struct.dpp*, %struct.hubp*)** %76, align 8
  %78 = load %struct.dc*, %struct.dc** %3, align 8
  %79 = bitcast %struct.dc* %78 to %struct.dc.0*
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.dpp*, %struct.dpp** %82, align 8
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.hubp*, %struct.hubp** %86, align 8
  %88 = call i32 %77(%struct.dc.0* %79, %struct.dpp* %83, %struct.hubp* %87)
  %89 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 5
  store i32* null, i32** %90, align 8
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 4
  %93 = call i32 @memset(%struct.TYPE_14__* %92, i32 0, i32 24)
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %94, i32 0, i32 3
  %96 = call i32 @memset(%struct.TYPE_14__* %95, i32 0, i32 24)
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i32 0, i32 2
  store i32* null, i32** %98, align 8
  %99 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
