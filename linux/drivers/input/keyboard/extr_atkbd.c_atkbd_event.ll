; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.atkbd = type { i32, i32 }

@ATKBD_LED_EVENT_BIT = common dso_local global i32 0, align 4
@ATKBD_REP_EVENT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @atkbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atkbd*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.atkbd* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.atkbd* %12, %struct.atkbd** %10, align 8
  %13 = load %struct.atkbd*, %struct.atkbd** %10, align 8
  %14 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %34 [
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %18
  %21 = load %struct.atkbd*, %struct.atkbd** %10, align 8
  %22 = load i32, i32* @ATKBD_LED_EVENT_BIT, align 4
  %23 = call i32 @atkbd_schedule_event_work(%struct.atkbd* %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.atkbd*, %struct.atkbd** %10, align 8
  %26 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.atkbd*, %struct.atkbd** %10, align 8
  %31 = load i32, i32* @ATKBD_REP_EVENT_BIT, align 4
  %32 = call i32 @atkbd_schedule_event_work(%struct.atkbd* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  store i32 0, i32* %5, align 4
  br label %35

34:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33, %20, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.atkbd* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @atkbd_schedule_event_work(%struct.atkbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
