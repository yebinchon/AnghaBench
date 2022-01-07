; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_exc3000.c_exc3000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_exc3000.c_exc3000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.exc3000_data = type { i32, %struct.input_dev*, i32, %struct.i2c_client* }
%struct.input_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exc3000_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EETI EXC3000 Touch Screen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EXC3000_NUM_SLOTS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@exc3000_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @exc3000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exc3000_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.exc3000_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.exc3000_data* @devm_kzalloc(i32* %10, i32 32, i32 %11)
  store %struct.exc3000_data* %12, %struct.exc3000_data** %6, align 8
  %13 = load %struct.exc3000_data*, %struct.exc3000_data** %6, align 8
  %14 = icmp ne %struct.exc3000_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.exc3000_data*, %struct.exc3000_data** %6, align 8
  %21 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %20, i32 0, i32 3
  store %struct.i2c_client* %19, %struct.i2c_client** %21, align 8
  %22 = load %struct.exc3000_data*, %struct.exc3000_data** %6, align 8
  %23 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %22, i32 0, i32 2
  %24 = load i32, i32* @exc3000_timer, align 4
  %25 = call i32 @timer_setup(i32* %23, i32 %24, i32 0)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 2
  %28 = call %struct.input_dev* @devm_input_allocate_device(i32* %27)
  store %struct.input_dev* %28, %struct.input_dev** %7, align 8
  %29 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %30 = icmp ne %struct.input_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %89

34:                                               ; preds = %18
  %35 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %36 = load %struct.exc3000_data*, %struct.exc3000_data** %6, align 8
  %37 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %36, i32 0, i32 1
  store %struct.input_dev* %35, %struct.input_dev** %37, align 8
  %38 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @BUS_I2C, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %46 = call i32 @input_set_abs_params(%struct.input_dev* %44, i32 %45, i32 0, i32 4095, i32 0, i32 0)
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %49 = call i32 @input_set_abs_params(%struct.input_dev* %47, i32 %48, i32 0, i32 4095, i32 0, i32 0)
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = load %struct.exc3000_data*, %struct.exc3000_data** %6, align 8
  %52 = getelementptr inbounds %struct.exc3000_data, %struct.exc3000_data* %51, i32 0, i32 0
  %53 = call i32 @touchscreen_parse_properties(%struct.input_dev* %50, i32 1, i32* %52)
  %54 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %55 = load i32, i32* @EXC3000_NUM_SLOTS, align 4
  %56 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %57 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @input_mt_init_slots(%struct.input_dev* %54, i32 %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %34
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %89

64:                                               ; preds = %34
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = call i32 @input_register_device(%struct.input_dev* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %89

71:                                               ; preds = %64
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 2
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @exc3000_interrupt, align 4
  %78 = load i32, i32* @IRQF_ONESHOT, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.exc3000_data*, %struct.exc3000_data** %6, align 8
  %83 = call i32 @devm_request_threaded_irq(i32* %73, i32 %76, i32* null, i32 %77, i32 %78, i32 %81, %struct.exc3000_data* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %86, %69, %62, %31, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.exc3000_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.exc3000_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
