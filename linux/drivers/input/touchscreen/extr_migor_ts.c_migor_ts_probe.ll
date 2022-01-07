; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.migor_ts_priv = type { i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@migor_ts_open = common dso_local global i32 0, align 4
@migor_ts_close = common dso_local global i32 0, align 4
@migor_ts_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to request touchscreen IRQ.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @migor_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migor_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.migor_ts_priv*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.migor_ts_priv* @kzalloc(i32 24, i32 %9)
  store %struct.migor_ts_priv* %10, %struct.migor_ts_priv** %6, align 8
  %11 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %11, %struct.input_dev** %7, align 8
  %12 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %13 = icmp ne %struct.migor_ts_priv* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %115

23:                                               ; preds = %14
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %26 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %25, i32 0, i32 2
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %28 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %29 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %28, i32 0, i32 1
  store %struct.input_dev* %27, %struct.input_dev** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %34 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @EV_KEY, align 4
  %36 = call i32 @BIT_MASK(i32 %35)
  %37 = load i32, i32* @EV_ABS, align 4
  %38 = call i32 @BIT_MASK(i32 %37)
  %39 = or i32 %36, %38
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @BTN_TOUCH, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = load i32, i32* @ABS_X, align 4
  %51 = call i32 @input_set_abs_params(%struct.input_dev* %49, i32 %50, i32 95, i32 955, i32 0, i32 0)
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = load i32, i32* @ABS_Y, align 4
  %54 = call i32 @input_set_abs_params(%struct.input_dev* %52, i32 %53, i32 85, i32 935, i32 0, i32 0)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @BUS_I2C, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32* %65, i32** %68, align 8
  %69 = load i32, i32* @migor_ts_open, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @migor_ts_close, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %76 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %77 = call i32 @input_set_drvdata(%struct.input_dev* %75, %struct.migor_ts_priv* %76)
  %78 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %79 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @migor_ts_isr, align 4
  %82 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %83 = load i32, i32* @IRQF_ONESHOT, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %89 = call i32 @request_threaded_irq(i32 %80, i32* null, i32 %81, i32 %84, i32 %87, %struct.migor_ts_priv* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %23
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %115

96:                                               ; preds = %23
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = call i32 @input_register_device(%struct.input_dev* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %109

102:                                              ; preds = %96
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %105 = call i32 @i2c_set_clientdata(%struct.i2c_client* %103, %struct.migor_ts_priv* %104)
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = call i32 @device_init_wakeup(i32* %107, i32 1)
  store i32 0, i32* %3, align 4
  br label %121

109:                                              ; preds = %101
  %110 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %111 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %114 = call i32 @free_irq(i32 %112, %struct.migor_ts_priv* %113)
  br label %115

115:                                              ; preds = %109, %92, %17
  %116 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %117 = call i32 @input_free_device(%struct.input_dev* %116)
  %118 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %6, align 8
  %119 = call i32 @kfree(%struct.migor_ts_priv* %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %102
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.migor_ts_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.migor_ts_priv*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.migor_ts_priv*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.migor_ts_priv*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.migor_ts_priv*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.migor_ts_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
