; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_hwss_wait_for_blank_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_hwss_wait_for_blank_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.timing_generator*)* }

@.str = private unnamed_addr constant [27 x i8] c"DC: failed to blank crtc!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwss_wait_for_blank_complete(%struct.timing_generator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  %5 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %6 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %8, align 8
  %10 = icmp ne i64 (%struct.timing_generator*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %18 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %20, align 8
  %22 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %23 = call i64 %21(%struct.timing_generator* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %31

26:                                               ; preds = %16
  %27 = call i32 @msleep(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %13

31:                                               ; preds = %25, %13
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dm_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
