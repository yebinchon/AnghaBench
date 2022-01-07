; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_setup_periodic_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_setup_periodic_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32, i32)* }

@VLINE0 = common dso_local global i32 0, align 4
@VLINE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, i32)* @dcn10_setup_periodic_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_setup_periodic_interrupt(%struct.pipe_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.timing_generator*, %struct.timing_generator** %10, align 8
  store %struct.timing_generator* %11, %struct.timing_generator** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VLINE0, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cal_vline_position(%struct.pipe_ctx* %16, i32 %17, i32* %6, i32* %7)
  %19 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32 (%struct.timing_generator*, i32, i32)*, i32 (%struct.timing_generator*, i32, i32)** %22, align 8
  %24 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %23(%struct.timing_generator* %24, i32 %25, i32 %26)
  br label %50

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VLINE1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.timing_generator*, %struct.timing_generator** %35, align 8
  %37 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %39, align 8
  %41 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %40(%struct.timing_generator* %41, i32 %47)
  br label %49

49:                                               ; preds = %32, %28
  br label %50

50:                                               ; preds = %49, %15
  ret void
}

declare dso_local i32 @cal_vline_position(%struct.pipe_ctx*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
