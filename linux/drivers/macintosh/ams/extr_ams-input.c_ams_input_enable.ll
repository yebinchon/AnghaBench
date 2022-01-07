; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/ams/extr_ams-input.c_ams_input_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/ams/extr_ams-input.c_ams_input_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }

@ams_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ams_idev_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Apple Motion Sensor\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@joystick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ams_input_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_input_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @ams_sensors(i8** %3, i8** %4, i8** %5)
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 5), align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 4), align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 3), align 8
  %11 = call %struct.TYPE_11__* (...) @input_allocate_polled_device()
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %73

17:                                               ; preds = %0
  %18 = load i32, i32* @ams_idev_poll, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 25, i32* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  store %struct.input_dev* %25, %struct.input_dev** %2, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 2), align 8
  %29 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %41 = load i32, i32* @ABS_X, align 4
  %42 = call i32 @input_set_abs_params(%struct.input_dev* %40, i32 %41, i32 -50, i32 50, i32 3, i32 0)
  %43 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %44 = load i32, i32* @ABS_Y, align 4
  %45 = call i32 @input_set_abs_params(%struct.input_dev* %43, i32 %44, i32 -50, i32 50, i32 3, i32 0)
  %46 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %47 = load i32, i32* @ABS_Z, align 4
  %48 = call i32 @input_set_abs_params(%struct.input_dev* %46, i32 %47, i32 -50, i32 50, i32 3, i32 0)
  %49 = load i32, i32* @EV_ABS, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_bit(i32 %49, i32 %52)
  %54 = load i32, i32* @EV_KEY, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i32 %54, i32 %57)
  %59 = load i32, i32* @BTN_TOUCH, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @set_bit(i32 %59, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %65 = call i32 @input_register_polled_device(%struct.TYPE_11__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %17
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %70 = call i32 @input_free_polled_device(%struct.TYPE_11__* %69)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ams_info, i32 0, i32 0), align 8
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %1, align 4
  br label %73

72:                                               ; preds = %17
  store i32 1, i32* @joystick, align 4
  store i32 0, i32* %1, align 4
  br label %73

73:                                               ; preds = %72, %68, %14
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @ams_sensors(i8**, i8**, i8**) #1

declare dso_local %struct.TYPE_11__* @input_allocate_polled_device(...) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.TYPE_11__*) #1

declare dso_local i32 @input_free_polled_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
