; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts.c_egalax_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts.c_egalax_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.egalax_ts = type { %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to wake up the controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to read firmware version\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"EETI eGalax Touch Screen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@EGALAX_MAX_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EGALAX_MAX_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@MAX_SUPPORT_POINTS = common dso_local global i32 0, align 4
@egalax_ts_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"egalax_ts\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @egalax_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egalax_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.egalax_ts*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.egalax_ts* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.egalax_ts* %12, %struct.egalax_ts** %6, align 8
  %13 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %14 = icmp ne %struct.egalax_ts* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %128

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call %struct.input_dev* @devm_input_allocate_device(i32* %23)
  store %struct.input_dev* %24, %struct.input_dev** %7, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = icmp ne %struct.input_dev* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %128

33:                                               ; preds = %21
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %36 = getelementptr inbounds %struct.egalax_ts, %struct.egalax_ts* %35, i32 0, i32 1
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %39 = getelementptr inbounds %struct.egalax_ts, %struct.egalax_ts* %38, i32 0, i32 0
  store %struct.input_dev* %37, %struct.input_dev** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @egalax_wake_up_device(%struct.i2c_client* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %128

49:                                               ; preds = %33
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @egalax_firmware_version(%struct.i2c_client* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %128

59:                                               ; preds = %49
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* @BUS_I2C, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @EV_ABS, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__set_bit(i32 %66, i32 %69)
  %71 = load i32, i32* @EV_KEY, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @__set_bit(i32 %71, i32 %74)
  %76 = load i32, i32* @BTN_TOUCH, align 4
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @__set_bit(i32 %76, i32 %79)
  %81 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %82 = load i32, i32* @ABS_X, align 4
  %83 = load i32, i32* @EGALAX_MAX_X, align 4
  %84 = call i32 @input_set_abs_params(%struct.input_dev* %81, i32 %82, i32 0, i32 %83, i32 0, i32 0)
  %85 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %86 = load i32, i32* @ABS_Y, align 4
  %87 = load i32, i32* @EGALAX_MAX_Y, align 4
  %88 = call i32 @input_set_abs_params(%struct.input_dev* %85, i32 %86, i32 0, i32 %87, i32 0, i32 0)
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %91 = load i32, i32* @EGALAX_MAX_X, align 4
  %92 = call i32 @input_set_abs_params(%struct.input_dev* %89, i32 %90, i32 0, i32 %91, i32 0, i32 0)
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %95 = load i32, i32* @EGALAX_MAX_Y, align 4
  %96 = call i32 @input_set_abs_params(%struct.input_dev* %93, i32 %94, i32 0, i32 %95, i32 0, i32 0)
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = load i32, i32* @MAX_SUPPORT_POINTS, align 4
  %99 = call i32 @input_mt_init_slots(%struct.input_dev* %97, i32 %98, i32 0)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @egalax_ts_interrupt, align 4
  %106 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %107 = load i32, i32* @IRQF_ONESHOT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %110 = call i32 @devm_request_threaded_irq(i32* %101, i32 %104, i32* null, i32 %105, i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.egalax_ts* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %59
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %128

118:                                              ; preds = %59
  %119 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %120 = getelementptr inbounds %struct.egalax_ts, %struct.egalax_ts* %119, i32 0, i32 0
  %121 = load %struct.input_dev*, %struct.input_dev** %120, align 8
  %122 = call i32 @input_register_device(%struct.input_dev* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %128

127:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %125, %113, %54, %44, %27, %15
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.egalax_ts* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @egalax_wake_up_device(%struct.i2c_client*) #1

declare dso_local i32 @egalax_firmware_version(%struct.i2c_client*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.egalax_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
