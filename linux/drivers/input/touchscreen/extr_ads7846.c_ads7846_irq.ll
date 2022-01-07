; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32, %struct.TYPE_2__*, %struct.input_dev*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@TS_POLL_DELAY = common dso_local global i32 0, align 4
@TS_POLL_PERIOD = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"UP\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ads7846_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7846_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ads7846*, align 8
  %6 = alloca %struct.input_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ads7846*
  store %struct.ads7846* %8, %struct.ads7846** %5, align 8
  %9 = load i32, i32* @TS_POLL_DELAY, align 4
  %10 = call i32 @msleep(i32 %9)
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %13 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %18 = call i64 @get_pendown_state(%struct.ads7846* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %42

22:                                               ; preds = %20
  %23 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %24 = call i32 @ads7846_read_state(%struct.ads7846* %23)
  %25 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %26 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %31 = call i32 @ads7846_report_state(%struct.ads7846* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %34 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %37 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TS_POLL_PERIOD, align 4
  %40 = call i32 @msecs_to_jiffies(i32 %39)
  %41 = call i32 @wait_event_timeout(i32 %35, i32 %38, i32 %40)
  br label %11

42:                                               ; preds = %20
  %43 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %44 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %49 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %47
  %53 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %54 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %53, i32 0, i32 2
  %55 = load %struct.input_dev*, %struct.input_dev** %54, align 8
  store %struct.input_dev* %55, %struct.input_dev** %6, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = load i32, i32* @BTN_TOUCH, align 4
  %58 = call i32 @input_report_key(%struct.input_dev* %56, i32 %57, i32 0)
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = load i32, i32* @ABS_PRESSURE, align 4
  %61 = call i32 @input_report_abs(%struct.input_dev* %59, i32 %60, i32 0)
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = call i32 @input_sync(%struct.input_dev* %62)
  %64 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %65 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.ads7846*, %struct.ads7846** %5, align 8
  %67 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_vdbg(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %52, %47, %42
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @get_pendown_state(%struct.ads7846*) #1

declare dso_local i32 @ads7846_read_state(%struct.ads7846*) #1

declare dso_local i32 @ads7846_report_state(%struct.ads7846*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
