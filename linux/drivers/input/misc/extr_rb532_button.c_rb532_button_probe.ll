; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rb532_button.c_rb532_button_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rb532_button.c_rb532_button_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.input_polled_dev = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@rb532_button_poll = common dso_local global i32 0, align 4
@RB532_BTN_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rb532 button\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"rb532/button0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@RB532_BTN_KSYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rb532_button_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb532_button_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %6, %struct.input_polled_dev** %4, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %8 = icmp ne %struct.input_polled_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %59

12:                                               ; preds = %1
  %13 = load i32, i32* @rb532_button_poll, align 4
  %14 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %15 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @RB532_BTN_RATE, align 4
  %17 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @BUS_HOST, align 4
  %28 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %29 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %36 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32* %34, i32** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %43 = call i32 @dev_set_drvdata(i32* %41, %struct.input_polled_dev* %42)
  %44 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %45 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* @EV_KEY, align 4
  %48 = load i32, i32* @RB532_BTN_KSYM, align 4
  %49 = call i32 @input_set_capability(%struct.TYPE_6__* %46, i32 %47, i32 %48)
  %50 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %51 = call i32 @input_register_polled_device(%struct.input_polled_dev* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %12
  %55 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %56 = call i32 @input_free_polled_device(%struct.input_polled_dev* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %54, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.input_polled_dev*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @input_free_polled_device(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
