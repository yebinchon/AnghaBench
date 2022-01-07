; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9034-ts.c_da9034_touch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9034-ts.c_da9034_touch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.da9034_touch_pdata = type { i32, i32, i32 }
%struct.da9034_touch = type { i32, %struct.input_dev*, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.input_dev = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@da9034_tsi_work = common dso_local global i32 0, align 4
@da9034_touch_notifier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@da9034_touch_open = common dso_local global i32 0, align 4
@da9034_touch_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9034_touch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9034_touch_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9034_touch_pdata*, align 8
  %5 = alloca %struct.da9034_touch*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.da9034_touch_pdata* @dev_get_platdata(%struct.TYPE_9__* %9)
  store %struct.da9034_touch_pdata* %10, %struct.da9034_touch_pdata** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.da9034_touch* @devm_kzalloc(%struct.TYPE_9__* %12, i32 40, i32 %13)
  store %struct.da9034_touch* %14, %struct.da9034_touch** %5, align 8
  %15 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %16 = icmp ne %struct.da9034_touch* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %132

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %29 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.da9034_touch_pdata*, %struct.da9034_touch_pdata** %4, align 8
  %31 = icmp ne %struct.da9034_touch_pdata* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %23
  %33 = load %struct.da9034_touch_pdata*, %struct.da9034_touch_pdata** %4, align 8
  %34 = getelementptr inbounds %struct.da9034_touch_pdata, %struct.da9034_touch_pdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %37 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.da9034_touch_pdata*, %struct.da9034_touch_pdata** %4, align 8
  %39 = getelementptr inbounds %struct.da9034_touch_pdata, %struct.da9034_touch_pdata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %42 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.da9034_touch_pdata*, %struct.da9034_touch_pdata** %4, align 8
  %44 = getelementptr inbounds %struct.da9034_touch_pdata, %struct.da9034_touch_pdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %47 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  br label %51

48:                                               ; preds = %23
  %49 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %50 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %49, i32 0, i32 0
  store i32 10, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %32
  %52 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %53 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %52, i32 0, i32 3
  %54 = load i32, i32* @da9034_tsi_work, align 4
  %55 = call i32 @INIT_DELAYED_WORK(i32* %53, i32 %54)
  %56 = load i32, i32* @da9034_touch_notifier, align 4
  %57 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %58 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_9__* %61)
  store %struct.input_dev* %62, %struct.input_dev** %6, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = icmp ne %struct.input_dev* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %132

71:                                               ; preds = %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @da9034_touch_open, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @da9034_touch_close, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %87, align 8
  %88 = load i32, i32* @EV_ABS, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @__set_bit(i32 %88, i32 %91)
  %93 = load i32, i32* @ABS_X, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @__set_bit(i32 %93, i32 %96)
  %98 = load i32, i32* @ABS_Y, align 4
  %99 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @__set_bit(i32 %98, i32 %101)
  %103 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %104 = load i32, i32* @ABS_X, align 4
  %105 = call i32 @input_set_abs_params(%struct.input_dev* %103, i32 %104, i32 0, i32 1023, i32 0, i32 0)
  %106 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %107 = load i32, i32* @ABS_Y, align 4
  %108 = call i32 @input_set_abs_params(%struct.input_dev* %106, i32 %107, i32 0, i32 1023, i32 0, i32 0)
  %109 = load i32, i32* @EV_KEY, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @__set_bit(i32 %109, i32 %112)
  %114 = load i32, i32* @BTN_TOUCH, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @__set_bit(i32 %114, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %120 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %121 = getelementptr inbounds %struct.da9034_touch, %struct.da9034_touch* %120, i32 0, i32 1
  store %struct.input_dev* %119, %struct.input_dev** %121, align 8
  %122 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %123 = load %struct.da9034_touch*, %struct.da9034_touch** %5, align 8
  %124 = call i32 @input_set_drvdata(%struct.input_dev* %122, %struct.da9034_touch* %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %126 = call i32 @input_register_device(%struct.input_dev* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %71
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %132

131:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %129, %65, %17
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.da9034_touch_pdata* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local %struct.da9034_touch* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_9__*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.da9034_touch*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
