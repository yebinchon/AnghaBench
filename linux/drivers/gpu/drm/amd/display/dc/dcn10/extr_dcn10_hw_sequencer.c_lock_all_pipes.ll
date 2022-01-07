; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_lock_all_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_lock_all_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_all_pipes(%struct.dc* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca %struct.timing_generator*, align 8
  %9 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_state* %1, %struct.dc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %74, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.dc*, %struct.dc** %4, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %10
  %19 = load %struct.dc_state*, %struct.dc_state** %5, align 8
  %20 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i64 %24
  store %struct.pipe_ctx* %25, %struct.pipe_ctx** %7, align 8
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.timing_generator*, %struct.timing_generator** %28, align 8
  store %struct.timing_generator* %29, %struct.timing_generator** %8, align 8
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %18
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %46 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %48, align 8
  %50 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %51 = call i32 %49(%struct.timing_generator* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44, %39, %34, %18
  br label %74

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %59 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %61, align 8
  %63 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %64 = call i32 %62(%struct.timing_generator* %63)
  br label %73

65:                                               ; preds = %54
  %66 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %67 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %69, align 8
  %71 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %72 = call i32 %70(%struct.timing_generator* %71)
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %10

77:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
