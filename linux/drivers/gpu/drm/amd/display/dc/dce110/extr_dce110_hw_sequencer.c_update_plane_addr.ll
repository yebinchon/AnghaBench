; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_update_plane_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_update_plane_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_6__, %struct.dc_plane_state* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32*, i32)* }
%struct.dc_plane_state = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @update_plane_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_plane_addr(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = load %struct.dc_plane_state*, %struct.dc_plane_state** %7, align 8
  store %struct.dc_plane_state* %8, %struct.dc_plane_state** %5, align 8
  %9 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %10 = icmp eq %struct.dc_plane_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_8__*, i32*, i32)*, i32 (%struct.TYPE_8__*, i32*, i32)** %19, align 8
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %25, i32 0, i32 0
  %27 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %20(%struct.TYPE_8__* %24, i32* %26, i32 %29)
  %31 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
