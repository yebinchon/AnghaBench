; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9034-ts.c_da9034_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9034-ts.c_da9034_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9034_touch = type { i32, i32, i32 }

@EVENT_PEN_DOWN = common dso_local global i32 0, align 4
@EVENT_TSI_READY = common dso_local global i32 0, align 4
@EVENT_PEN_UP = common dso_local global i32 0, align 4
@EVENT_TIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9034_touch*, i32)* @da9034_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9034_event_handler(%struct.da9034_touch* %0, i32 %1) #0 {
  %3 = alloca %struct.da9034_touch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da9034_touch* %0, %struct.da9034_touch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %7 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %100 [
    i32 130, label %9
    i32 131, label %23
    i32 129, label %54
    i32 128, label %80
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EVENT_PEN_DOWN, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %100

14:                                               ; preds = %9
  %15 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %16 = call i32 @start_tsi(%struct.da9034_touch* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %101

20:                                               ; preds = %14
  %21 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %22 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %21, i32 0, i32 0
  store i32 131, i32* %22, align 4
  br label %100

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EVENT_TSI_READY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %100

28:                                               ; preds = %23
  %29 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %30 = call i32 @read_tsi(%struct.da9034_touch* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %101

34:                                               ; preds = %28
  %35 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %36 = call i32 @stop_tsi(%struct.da9034_touch* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %101

40:                                               ; preds = %34
  %41 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %42 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %41, i32 0, i32 0
  store i32 129, i32* %42, align 4
  %43 = call i32 @mdelay(i32 1)
  %44 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %45 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %46 = call i32 @is_pen_down(%struct.da9034_touch* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @EVENT_PEN_DOWN, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @EVENT_PEN_UP, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  call void @da9034_event_handler(%struct.da9034_touch* %44, i32 %53)
  br label %100

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @EVENT_PEN_DOWN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %60 = call i32 @report_pen_down(%struct.da9034_touch* %59)
  %61 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %62 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %61, i32 0, i32 2
  %63 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %64 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @msecs_to_jiffies(i32 %65)
  %67 = call i32 @schedule_delayed_work(i32* %62, i32 %66)
  %68 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %69 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %68, i32 0, i32 0
  store i32 128, i32* %69, align 4
  br label %70

70:                                               ; preds = %58, %54
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @EVENT_PEN_UP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %76 = call i32 @report_pen_up(%struct.da9034_touch* %75)
  %77 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %78 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %77, i32 0, i32 0
  store i32 130, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %100

80:                                               ; preds = %2
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @EVENT_TIMEDOUT, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %100

85:                                               ; preds = %80
  %86 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %87 = call i32 @is_pen_down(%struct.da9034_touch* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %91 = call i32 @start_tsi(%struct.da9034_touch* %90)
  %92 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %93 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %92, i32 0, i32 0
  store i32 131, i32* %93, align 4
  br label %99

94:                                               ; preds = %85
  %95 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %96 = call i32 @report_pen_up(%struct.da9034_touch* %95)
  %97 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %98 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %97, i32 0, i32 0
  store i32 130, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %2, %99, %84, %79, %52, %27, %20, %13
  br label %108

101:                                              ; preds = %39, %33, %19
  %102 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %103 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %102, i32 0, i32 0
  store i32 130, i32* %103, align 4
  %104 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %105 = call i32 @stop_tsi(%struct.da9034_touch* %104)
  %106 = load %struct.da9034_touch*, %struct.da9034_touch** %3, align 8
  %107 = call i32 @detect_pen_down(%struct.da9034_touch* %106, i32 1)
  br label %108

108:                                              ; preds = %101, %100
  ret void
}

declare dso_local i32 @start_tsi(%struct.da9034_touch*) #1

declare dso_local i32 @read_tsi(%struct.da9034_touch*) #1

declare dso_local i32 @stop_tsi(%struct.da9034_touch*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @is_pen_down(%struct.da9034_touch*) #1

declare dso_local i32 @report_pen_down(%struct.da9034_touch*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @report_pen_up(%struct.da9034_touch*) #1

declare dso_local i32 @detect_pen_down(%struct.da9034_touch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
