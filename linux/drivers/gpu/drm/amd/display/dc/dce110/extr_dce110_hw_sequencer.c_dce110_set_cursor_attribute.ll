; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_cursor_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_dce110_set_cursor_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_13__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, %struct.dc_cursor_attributes*)* }
%struct.dc_cursor_attributes = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_15__*, %struct.dc_cursor_attributes*)* }
%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_16__*, %struct.dc_cursor_attributes*)* }
%struct.TYPE_9__ = type { %struct.dc_cursor_attributes }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_set_cursor_attribute(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_cursor_attributes*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %4 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store %struct.dc_cursor_attributes* %7, %struct.dc_cursor_attributes** %3, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_16__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_16__*, %struct.dc_cursor_attributes*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_16__*, %struct.dc_cursor_attributes*)* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_16__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_16__*, %struct.dc_cursor_attributes*)** %30, align 8
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %3, align 8
  %37 = call i32 %31(%struct.TYPE_16__* %35, %struct.dc_cursor_attributes* %36)
  br label %38

38:                                               ; preds = %23, %13, %1
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_15__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_15__*, %struct.dc_cursor_attributes*)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_15__*, %struct.dc_cursor_attributes*)* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_15__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_15__*, %struct.dc_cursor_attributes*)** %61, align 8
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %3, align 8
  %68 = call i32 %62(%struct.TYPE_15__* %66, %struct.dc_cursor_attributes* %67)
  br label %69

69:                                               ; preds = %54, %44, %38
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = icmp ne %struct.TYPE_14__* %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_14__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_14__*, %struct.dc_cursor_attributes*)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_14__*, %struct.dc_cursor_attributes*)* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %75
  %86 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_14__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_14__*, %struct.dc_cursor_attributes*)** %92, align 8
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %3, align 8
  %99 = call i32 %93(%struct.TYPE_14__* %97, %struct.dc_cursor_attributes* %98)
  br label %100

100:                                              ; preds = %85, %75, %69
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
