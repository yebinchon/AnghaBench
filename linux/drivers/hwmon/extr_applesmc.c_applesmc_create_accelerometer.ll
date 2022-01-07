; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_create_accelerometer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_create_accelerometer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.input_dev*, i32, i32 }
%struct.input_dev = type { i8*, i32*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@smcreg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@accelerometer_group = common dso_local global i32 0, align 4
@applesmc_idev = common dso_local global %struct.TYPE_13__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@applesmc_idev_poll = common dso_local global i32 0, align 4
@APPLESMC_POLL_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"applesmc\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@pdev = common dso_local global %struct.TYPE_12__* null, align 8
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@APPLESMC_INPUT_FUZZ = common dso_local global i32 0, align 4
@APPLESMC_INPUT_FLAT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"driver init failed (ret=%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @applesmc_create_accelerometer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_create_accelerometer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @smcreg, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %74

7:                                                ; preds = %0
  %8 = load i32, i32* @accelerometer_group, align 4
  %9 = call i32 @applesmc_create_nodes(i32 %8, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %70

13:                                               ; preds = %7
  %14 = call %struct.TYPE_13__* (...) @input_allocate_polled_device()
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** @applesmc_idev, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @applesmc_idev, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %13
  %21 = load i32, i32* @applesmc_idev_poll, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @applesmc_idev, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @APPLESMC_POLL_INTERVAL, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @applesmc_idev, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = call i32 (...) @applesmc_calibrate()
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @applesmc_idev, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.input_dev*, %struct.input_dev** %29, align 8
  store %struct.input_dev* %30, %struct.input_dev** %2, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @BUS_HOST, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdev, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load i32, i32* @EV_ABS, align 4
  %43 = call i32 @BIT_MASK(i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %49 = load i32, i32* @ABS_X, align 4
  %50 = load i32, i32* @APPLESMC_INPUT_FUZZ, align 4
  %51 = load i32, i32* @APPLESMC_INPUT_FLAT, align 4
  %52 = call i32 @input_set_abs_params(%struct.input_dev* %48, i32 %49, i32 -256, i32 256, i32 %50, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %54 = load i32, i32* @ABS_Y, align 4
  %55 = load i32, i32* @APPLESMC_INPUT_FUZZ, align 4
  %56 = load i32, i32* @APPLESMC_INPUT_FLAT, align 4
  %57 = call i32 @input_set_abs_params(%struct.input_dev* %53, i32 %54, i32 -256, i32 256, i32 %55, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @applesmc_idev, align 8
  %59 = call i32 @input_register_polled_device(%struct.TYPE_13__* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %20
  br label %64

63:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %74

64:                                               ; preds = %62
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @applesmc_idev, align 8
  %66 = call i32 @input_free_polled_device(%struct.TYPE_13__* %65)
  br label %67

67:                                               ; preds = %64, %17
  %68 = load i32, i32* @accelerometer_group, align 4
  %69 = call i32 @applesmc_destroy_nodes(i32 %68)
  br label %70

70:                                               ; preds = %67, %12
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %70, %63, %6
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @applesmc_create_nodes(i32, i32) #1

declare dso_local %struct.TYPE_13__* @input_allocate_polled_device(...) #1

declare dso_local i32 @applesmc_calibrate(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.TYPE_13__*) #1

declare dso_local i32 @input_free_polled_device(%struct.TYPE_13__*) #1

declare dso_local i32 @applesmc_destroy_nodes(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
