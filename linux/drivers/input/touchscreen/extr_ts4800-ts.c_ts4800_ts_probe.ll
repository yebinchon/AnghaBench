; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.input_polled_dev = type { %struct.TYPE_3__*, i32, i32, i32, i32, %struct.ts4800_ts* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.ts4800_ts = type { i32, i32*, %struct.input_polled_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@POLL_INTERVAL = common dso_local global i32 0, align 4
@ts4800_ts_open = common dso_local global i32 0, align 4
@ts4800_ts_close = common dso_local global i32 0, align 4
@ts4800_ts_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"TS-4800 Touchscreen\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Unabled to register polled input device (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts4800_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts4800_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca %struct.ts4800_ts*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ts4800_ts* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.ts4800_ts* %10, %struct.ts4800_ts** %5, align 8
  %11 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %12 = icmp ne %struct.ts4800_ts* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %19 = call i32 @ts4800_parse_dt(%struct.platform_device* %17, %struct.ts4800_ts* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %118

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %25, i32 0)
  %27 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %28 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %30 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %36 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %118

39:                                               ; preds = %24
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(i32* %41)
  store %struct.input_polled_dev* %42, %struct.input_polled_dev** %4, align 8
  %43 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %44 = icmp ne %struct.input_polled_dev* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %118

48:                                               ; preds = %39
  %49 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %50 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i8* @dev_name(i32* %53)
  %55 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %57 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %58 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %57, i32 0, i32 2
  store %struct.input_polled_dev* %56, %struct.input_polled_dev** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %62 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %64 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %65 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %64, i32 0, i32 5
  store %struct.ts4800_ts* %63, %struct.ts4800_ts** %65, align 8
  %66 = load i32, i32* @POLL_INTERVAL, align 4
  %67 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %68 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ts4800_ts_open, align 4
  %70 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %71 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @ts4800_ts_close, align 4
  %73 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %74 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ts4800_ts_poll, align 4
  %76 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %77 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %79 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %81, align 8
  %82 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %83 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %86 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 8
  %89 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %90 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* @EV_KEY, align 4
  %93 = load i32, i32* @BTN_TOUCH, align 4
  %94 = call i32 @input_set_capability(%struct.TYPE_3__* %91, i32 %92, i32 %93)
  %95 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %96 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* @ABS_X, align 4
  %99 = load i32, i32* @MAX_12BIT, align 4
  %100 = call i32 @input_set_abs_params(%struct.TYPE_3__* %97, i32 %98, i32 0, i32 %99, i32 0, i32 0)
  %101 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %102 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* @ABS_Y, align 4
  %105 = load i32, i32* @MAX_12BIT, align 4
  %106 = call i32 @input_set_abs_params(%struct.TYPE_3__* %103, i32 %104, i32 0, i32 %105, i32 0, i32 0)
  %107 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %108 = call i32 @input_register_polled_device(%struct.input_polled_dev* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %48
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %111, %45, %34, %22, %13
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.ts4800_ts* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ts4800_parse_dt(%struct.platform_device*, %struct.ts4800_ts*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
