; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.TYPE_5__ = type { i32 }
%struct.pipe_ctx = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Power down front end %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn10_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_disable_plane(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %5 = load %struct.dc*, %struct.dc** %3, align 8
  %6 = getelementptr inbounds %struct.dc, %struct.dc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DC_LOGGER_INIT(i32 %9)
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.dc*, %struct.dc** %3, align 8
  %27 = getelementptr inbounds %struct.dc, %struct.dc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %28, align 8
  %30 = load %struct.dc*, %struct.dc** %3, align 8
  %31 = bitcast %struct.dc* %30 to %struct.dc.0*
  %32 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %33 = call i32 %29(%struct.dc.0* %31, %struct.pipe_ctx* %32)
  %34 = load %struct.dc*, %struct.dc** %3, align 8
  %35 = call i32 @apply_DEGVIDCN10_253_wa(%struct.dc* %34)
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DC_LOG_DC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @apply_DEGVIDCN10_253_wa(%struct.dc*) #1

declare dso_local i32 @DC_LOG_DC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
