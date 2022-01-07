; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_static_screen_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_static_screen_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.dc_static_screen_events = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx**, i32, %struct.dc_static_screen_events*)* @dcn10_set_static_screen_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_set_static_screen_control(%struct.pipe_ctx** %0, i32 %1, %struct.dc_static_screen_events* %2) #0 {
  %4 = alloca %struct.pipe_ctx**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_static_screen_events*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pipe_ctx** %0, %struct.pipe_ctx*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_static_screen_events* %2, %struct.dc_static_screen_events** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %10 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, 128
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %18 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, 2
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.dc_static_screen_events*, %struct.dc_static_screen_events** %6, align 8
  %26 = getelementptr inbounds %struct.dc_static_screen_events, %struct.dc_static_screen_events* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %24
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %60, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %38, i64 %40
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %41, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %48, align 8
  %50 = load %struct.pipe_ctx**, %struct.pipe_ctx*** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pipe_ctx*, %struct.pipe_ctx** %50, i64 %52
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %53, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 %49(%struct.TYPE_6__* %57, i32 %58)
  br label %60

60:                                               ; preds = %37
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %33

63:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
