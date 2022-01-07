; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_request_input_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_request_input_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.silead_ts_data = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"silead,home-button\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@SILEAD_TS_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"input/ts\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.silead_ts_data*)* @silead_ts_request_input_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_request_input_dev(%struct.silead_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.silead_ts_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.silead_ts_data* %0, %struct.silead_ts_data** %3, align 8
  %6 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %7 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.TYPE_11__* @devm_input_allocate_device(%struct.device* %10)
  %12 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %13 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %12, i32 0, i32 0
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %13, align 8
  %14 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %15 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %90

23:                                               ; preds = %1
  %24 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %25 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %28 = call i32 @input_set_abs_params(%struct.TYPE_11__* %26, i32 %27, i32 0, i32 4095, i32 0, i32 0)
  %29 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %30 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %33 = call i32 @input_set_abs_params(%struct.TYPE_11__* %31, i32 %32, i32 0, i32 4095, i32 0, i32 0)
  %34 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %35 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %38 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %37, i32 0, i32 2
  %39 = call i32 @touchscreen_parse_properties(%struct.TYPE_11__* %36, i32 1, i32* %38)
  %40 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %41 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %44 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %47 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @INPUT_MT_TRACK, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @input_mt_init_slots(%struct.TYPE_11__* %42, i32 %45, i32 %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i64 @device_property_read_bool(%struct.device* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %23
  %56 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %57 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* @EV_KEY, align 4
  %60 = load i32, i32* @KEY_LEFTMETA, align 4
  %61 = call i32 @input_set_capability(%struct.TYPE_11__* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %23
  %63 = load i32, i32* @SILEAD_TS_NAME, align 4
  %64 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %65 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 4
  %68 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %69 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @BUS_I2C, align 4
  %73 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %74 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %79 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call i32 @input_register_device(%struct.TYPE_11__* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %62
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %84, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_11__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
