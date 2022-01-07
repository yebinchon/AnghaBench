; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_set_static_screen_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_set_static_screen_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dc* }
%struct.dc = type { i64 }
%struct.dc_static_screen_events = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx**, i32, %struct.dc_static_screen_events*)* @set_static_screen_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_static_screen_control(%struct.pipe_ctx** %0, i32 %1, %struct.dc_static_screen_events* %2) #0 {
  %4 = alloca %struct.pipe_ctx**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_static_screen_events*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc*, align 8
  store %struct.pipe_ctx** %0, %struct.pipe_ctx*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_static_screen_events* %2, %struct.dc_static_screen_events** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %11 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, 256
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %19 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, 128
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %27 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 2
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %35 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %46 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %45, i64 0
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %46, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.dc*, %struct.dc** %52, align 8
  store %struct.dc* %53, %struct.dc** %9, align 8
  %54 = load %struct.dc*, %struct.dc** %9, align 8
  %55 = getelementptr inbounds %struct.dc, %struct.dc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 132
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %44
  br label %62

62:                                               ; preds = %61, %41
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %90, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %63
  %68 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %68, i64 %70
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %71, align 8
  %73 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %78, align 8
  %80 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %80, i64 %82
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %83, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 %79(%struct.TYPE_10__* %87, i32 %88)
  br label %90

90:                                               ; preds = %67
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %63

93:                                               ; preds = %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
