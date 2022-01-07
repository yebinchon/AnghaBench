; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_wait_for_reset_trigger_to_occur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_wait_for_reset_trigger_to_occur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.timing_generator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.timing_generator*, i32)*, i64 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)* }

@.str = private unnamed_addr constant [27 x i8] c"TG counter is not moving!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"GSL: reset occurred at wait count: %d\0A\00", align 1
@CRTC_STATE_VACTIVE = common dso_local global i32 0, align 4
@CRTC_STATE_VBLANK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"GSL: Timeout on reset trigger!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_context*, %struct.timing_generator*)* @wait_for_reset_trigger_to_occur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_reset_trigger_to_occur(%struct.dc_context* %0, %struct.timing_generator* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.timing_generator* %1, %struct.timing_generator** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %13 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %15, align 8
  %17 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %18 = call i32 %16(%struct.timing_generator* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = call i32 @DC_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %54

22:                                               ; preds = %11
  %23 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %24 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %26, align 8
  %28 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %29 = call i64 %27(%struct.timing_generator* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DC_SYNC_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %54

34:                                               ; preds = %22
  %35 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %36 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %38, align 8
  %40 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %41 = load i32, i32* @CRTC_STATE_VACTIVE, align 4
  %42 = call i32 %39(%struct.timing_generator* %40, i32 %41)
  %43 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %44 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %46, align 8
  %48 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %49 = load i32, i32* @CRTC_STATE_VBLANK, align 4
  %50 = call i32 %47(%struct.timing_generator* %48, i32 %49)
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %8

54:                                               ; preds = %31, %20, %8
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @DC_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @DC_ERROR(i8*) #1

declare dso_local i32 @DC_SYNC_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
