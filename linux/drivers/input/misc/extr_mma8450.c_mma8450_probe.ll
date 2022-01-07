; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_mma8450.c_mma8450_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_mma8450.c_mma8450_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.input_polled_dev = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.mma8450* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mma8450 = type { %struct.input_polled_dev*, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMA8450_DRV_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@mma8450_poll = common dso_local global i32 0, align 4
@POLL_INTERVAL = common dso_local global i32 0, align 4
@POLL_INTERVAL_MAX = common dso_local global i32 0, align 4
@mma8450_open = common dso_local global i32 0, align 4
@mma8450_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to register polled input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mma8450_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8450_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.input_polled_dev*, align 8
  %7 = alloca %struct.mma8450*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mma8450* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.mma8450* %12, %struct.mma8450** %7, align 8
  %13 = load %struct.mma8450*, %struct.mma8450** %7, align 8
  %14 = icmp ne %struct.mma8450* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call %struct.input_polled_dev* @devm_input_allocate_polled_device(i32* %20)
  store %struct.input_polled_dev* %21, %struct.input_polled_dev** %6, align 8
  %22 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %23 = icmp ne %struct.input_polled_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %18
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.mma8450*, %struct.mma8450** %7, align 8
  %30 = getelementptr inbounds %struct.mma8450, %struct.mma8450* %29, i32 0, i32 1
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %32 = load %struct.mma8450*, %struct.mma8450** %7, align 8
  %33 = getelementptr inbounds %struct.mma8450, %struct.mma8450* %32, i32 0, i32 0
  store %struct.input_polled_dev* %31, %struct.input_polled_dev** %33, align 8
  %34 = load %struct.mma8450*, %struct.mma8450** %7, align 8
  %35 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %36 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %35, i32 0, i32 6
  store %struct.mma8450* %34, %struct.mma8450** %36, align 8
  %37 = load i32, i32* @MMA8450_DRV_NAME, align 4
  %38 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %39 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @BUS_I2C, align 4
  %43 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %44 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @mma8450_poll, align 4
  %49 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %50 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @POLL_INTERVAL, align 4
  %52 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %53 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @POLL_INTERVAL_MAX, align 4
  %55 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %56 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @mma8450_open, align 4
  %58 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %59 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @mma8450_close, align 4
  %61 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %62 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @EV_ABS, align 4
  %64 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %65 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__set_bit(i32 %63, i32 %68)
  %70 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %71 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* @ABS_X, align 4
  %74 = call i32 @input_set_abs_params(%struct.TYPE_4__* %72, i32 %73, i32 -2048, i32 2047, i32 32, i32 32)
  %75 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %76 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* @ABS_Y, align 4
  %79 = call i32 @input_set_abs_params(%struct.TYPE_4__* %77, i32 %78, i32 -2048, i32 2047, i32 32, i32 32)
  %80 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %81 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* @ABS_Z, align 4
  %84 = call i32 @input_set_abs_params(%struct.TYPE_4__* %82, i32 %83, i32 -2048, i32 2047, i32 32, i32 32)
  %85 = load %struct.input_polled_dev*, %struct.input_polled_dev** %6, align 8
  %86 = call i32 @input_register_polled_device(%struct.input_polled_dev* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %27
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %89, %24, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.mma8450* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
