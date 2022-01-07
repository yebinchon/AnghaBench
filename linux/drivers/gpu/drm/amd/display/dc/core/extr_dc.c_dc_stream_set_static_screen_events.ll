; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_set_static_screen_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_stream_set_static_screen_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.pipe_ctx**, i32, %struct.dc_static_screen_events*)* }
%struct.pipe_ctx = type { %struct.dc_stream_state* }
%struct.dc_stream_state = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pipe_ctx* }
%struct.dc_static_screen_events = type { i32 }

@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_stream_set_static_screen_events(%struct.dc* %0, %struct.dc_stream_state** %1, i32 %2, %struct.dc_static_screen_events* %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_stream_state**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_static_screen_events*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_stream_state** %1, %struct.dc_stream_state*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dc_static_screen_events* %3, %struct.dc_static_screen_events** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @MAX_PIPES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca %struct.pipe_ctx*, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %66, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %24, i64 %26
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %27, align 8
  store %struct.dc_stream_state* %28, %struct.dc_stream_state** %14, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %62, %23
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @MAX_PIPES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load %struct.dc*, %struct.dc** %5, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i64 %41
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = load %struct.dc_stream_state*, %struct.dc_stream_state** %43, align 8
  %45 = load %struct.dc_stream_state*, %struct.dc_stream_state** %14, align 8
  %46 = icmp eq %struct.dc_stream_state* %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %33
  %48 = load %struct.dc*, %struct.dc** %5, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.pipe_ctx*, %struct.pipe_ctx** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %53, i64 %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %18, i64 %59
  store %struct.pipe_ctx* %56, %struct.pipe_ctx** %60, align 8
  br label %61

61:                                               ; preds = %47, %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %29

65:                                               ; preds = %29
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load %struct.dc*, %struct.dc** %5, align 8
  %71 = getelementptr inbounds %struct.dc, %struct.dc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.pipe_ctx**, i32, %struct.dc_static_screen_events*)*, i32 (%struct.pipe_ctx**, i32, %struct.dc_static_screen_events*)** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %8, align 8
  %76 = call i32 %73(%struct.pipe_ctx** %18, i32 %74, %struct.dc_static_screen_events* %75)
  %77 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
