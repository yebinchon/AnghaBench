; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_cursor_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_cursor_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, %struct.dc_cursor_attributes*)* }
%struct.dc_cursor_attributes = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_12__*, %struct.dc_cursor_attributes*)* }
%struct.TYPE_7__ = type { %struct.dc_cursor_attributes }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn10_set_cursor_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_set_cursor_attribute(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_cursor_attributes*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %4 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store %struct.dc_cursor_attributes* %7, %struct.dc_cursor_attributes** %3, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_12__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_12__*, %struct.dc_cursor_attributes*)** %14, align 8
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %3, align 8
  %21 = call i32 %15(%struct.TYPE_12__* %19, %struct.dc_cursor_attributes* %20)
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_11__*, %struct.dc_cursor_attributes*)*, i32 (%struct.TYPE_11__*, %struct.dc_cursor_attributes*)** %28, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load %struct.dc_cursor_attributes*, %struct.dc_cursor_attributes** %3, align 8
  %35 = call i32 %29(%struct.TYPE_11__* %33, %struct.dc_cursor_attributes* %34)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
