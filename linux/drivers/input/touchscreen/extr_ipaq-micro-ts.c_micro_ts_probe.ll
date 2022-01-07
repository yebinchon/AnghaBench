; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ipaq-micro-ts.c_micro_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ipaq-micro-ts.c_micro_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ipaq_micro = type { i32 }
%struct.touchscreen_data = type { %struct.TYPE_10__*, %struct.ipaq_micro* }
%struct.TYPE_10__ = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ipaq micro ts\00", align 1
@micro_ts_open = common dso_local global i32 0, align 4
@micro_ts_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error registering touch input\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"iPAQ micro touchscreen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @micro_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ipaq_micro*, align 8
  %5 = alloca %struct.touchscreen_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ipaq_micro* @dev_get_drvdata(i32 %10)
  store %struct.ipaq_micro* %11, %struct.ipaq_micro** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.touchscreen_data* @devm_kzalloc(%struct.TYPE_11__* %13, i32 16, i32 %14)
  store %struct.touchscreen_data* %15, %struct.touchscreen_data** %5, align 8
  %16 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %17 = icmp ne %struct.touchscreen_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %23 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %24 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %23, i32 0, i32 1
  store %struct.ipaq_micro* %22, %struct.ipaq_micro** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.TYPE_10__* @devm_input_allocate_device(%struct.TYPE_11__* %26)
  %28 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %29 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %28, i32 0, i32 0
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %29, align 8
  %30 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %31 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %106

40:                                               ; preds = %21
  %41 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %42 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @micro_ts_open, align 4
  %46 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %47 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @micro_ts_close, align 4
  %51 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %52 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 8
  %55 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %56 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %59 = call i32 @input_set_drvdata(%struct.TYPE_10__* %57, %struct.touchscreen_data* %58)
  %60 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %61 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* @EV_KEY, align 4
  %64 = load i32, i32* @BTN_TOUCH, align 4
  %65 = call i32 @input_set_capability(%struct.TYPE_10__* %62, i32 %63, i32 %64)
  %66 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %67 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* @EV_ABS, align 4
  %70 = load i32, i32* @ABS_X, align 4
  %71 = call i32 @input_set_capability(%struct.TYPE_10__* %68, i32 %69, i32 %70)
  %72 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %73 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i32, i32* @EV_ABS, align 4
  %76 = load i32, i32* @ABS_Y, align 4
  %77 = call i32 @input_set_capability(%struct.TYPE_10__* %74, i32 %75, i32 %76)
  %78 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %79 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* @ABS_X, align 4
  %82 = call i32 @input_set_abs_params(%struct.TYPE_10__* %80, i32 %81, i32 0, i32 1023, i32 0, i32 0)
  %83 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %84 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load i32, i32* @ABS_Y, align 4
  %87 = call i32 @input_set_abs_params(%struct.TYPE_10__* %85, i32 %86, i32 0, i32 1023, i32 0, i32 0)
  %88 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %89 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i32 @input_register_device(%struct.TYPE_10__* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %40
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_11__* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %106

99:                                               ; preds = %40
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load %struct.touchscreen_data*, %struct.touchscreen_data** %5, align 8
  %102 = call i32 @platform_set_drvdata(%struct.platform_device* %100, %struct.touchscreen_data* %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_info(%struct.TYPE_11__* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %99, %94, %34, %18
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.ipaq_micro* @dev_get_drvdata(i32) #1

declare dso_local %struct.touchscreen_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @devm_input_allocate_device(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_10__*, %struct.touchscreen_data*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.touchscreen_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
