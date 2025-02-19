; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_pipe_control_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_pipe_control_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pipe_ctx = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, i32)* @dcn10_pipe_control_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_pipe_control_lock(%struct.dc* %0, %struct.pipe_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %61

12:                                               ; preds = %3
  %13 = load %struct.dc*, %struct.dc** %4, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.dc*, %struct.dc** %4, align 8
  %20 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %31, align 8
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = call i32 %32(%struct.TYPE_9__* %36)
  br label %52

38:                                               ; preds = %21
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %45, align 8
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 %46(%struct.TYPE_9__* %50)
  br label %52

52:                                               ; preds = %38, %24
  %53 = load %struct.dc*, %struct.dc** %4, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.dc*, %struct.dc** %4, align 8
  %60 = call i32 @dcn10_verify_allow_pstate_change_high(%struct.dc* %59)
  br label %61

61:                                               ; preds = %11, %58, %52
  ret void
}

declare dso_local i32 @dcn10_verify_allow_pstate_change_high(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
