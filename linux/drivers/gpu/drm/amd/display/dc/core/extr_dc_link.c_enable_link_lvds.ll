; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_7__*, %struct.dc_stream_state* }
%struct.TYPE_7__ = type { i32 }
%struct.dc_stream_state = type { i32, %struct.dc_link*, %struct.TYPE_5__ }
%struct.dc_link = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32, i32)* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @enable_link_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_link_lvds(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.dc_link*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %5 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %5, i32 0, i32 1
  %7 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  store %struct.dc_stream_state* %7, %struct.dc_stream_state** %3, align 8
  %8 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %9 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %8, i32 0, i32 1
  %10 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  store %struct.dc_link* %10, %struct.dc_link** %4, align 8
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %12 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %17 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 10
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %25 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %24, i32 0, i32 1
  %26 = load %struct.dc_link*, %struct.dc_link** %25, align 8
  %27 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %26, i32 0, i32 1
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  %29 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %30 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %34, align 8
  %36 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %37 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %45 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %35(%struct.TYPE_8__* %38, i32 %43, i32 %46)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
