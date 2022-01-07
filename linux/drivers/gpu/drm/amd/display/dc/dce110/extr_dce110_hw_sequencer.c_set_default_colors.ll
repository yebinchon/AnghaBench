; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_set_default_colors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_set_default_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_15__, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, %struct.default_adjustment*)* }
%struct.default_adjustment = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GRAPHICS_CSC_ADJUST_TYPE_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @set_default_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_colors(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.default_adjustment, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %4 = bitcast %struct.default_adjustment* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 6
  store i32 %10, i32* %11, align 4
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @GRAPHICS_CSC_ADJUST_TYPE_SW, align 4
  %19 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %3, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_16__*, %struct.default_adjustment*)*, i32 (%struct.TYPE_16__*, %struct.default_adjustment*)** %46, align 8
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = call i32 %47(%struct.TYPE_16__* %51, %struct.default_adjustment* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
