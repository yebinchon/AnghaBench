; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.isl29501_private = type { i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@isl29501_channels = common dso_local global i32 0, align 4
@isl29501_info = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@isl29501_trigger_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unable to setup iio triggered buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl29501_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.isl29501_private*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.isl29501_private* @iio_priv(%struct.iio_dev* %18)
  store %struct.isl29501_private* %19, %struct.isl29501_private** %7, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.isl29501_private*, %struct.isl29501_private** %7, align 8
  %25 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.isl29501_private*, %struct.isl29501_private** %7, align 8
  %27 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %26, i32 0, i32 0
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.isl29501_private*, %struct.isl29501_private** %7, align 8
  %30 = call i32 @isl29501_init_chip(%struct.isl29501_private* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %76

35:                                               ; preds = %17
  %36 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load i32, i32* @isl29501_channels, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @isl29501_channels, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 0
  store i32* @isl29501_info, i32** %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = load i32, i32* @iio_pollfunc_store_time, align 4
  %62 = load i32, i32* @isl29501_trigger_handler, align 4
  %63 = call i32 @devm_iio_triggered_buffer_setup(i32* %59, %struct.iio_dev* %60, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %35
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %35
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %75 = call i32 @devm_iio_device_register(i32* %73, %struct.iio_dev* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %66, %33, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.isl29501_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @isl29501_init_chip(%struct.isl29501_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
