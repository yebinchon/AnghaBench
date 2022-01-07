; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.apds9300_data = type { i32, %struct.i2c_client* }
%struct.iio_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@apds9300_channels = common dso_local global i32 0, align 4
@APDS9300_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@apds9300_info = common dso_local global i32 0, align 4
@apds9300_info_no_irq = common dso_local global i32 0, align 4
@apds9300_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@APDS9300_IRQ_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"irq request error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @apds9300_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9300_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.apds9300_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.apds9300_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.apds9300_data* %19, %struct.apds9300_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.apds9300_data*, %struct.apds9300_data** %6, align 8
  %25 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.apds9300_data*, %struct.apds9300_data** %6, align 8
  %27 = call i32 @apds9300_chip_init(%struct.apds9300_data* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %97

31:                                               ; preds = %17
  %32 = load %struct.apds9300_data*, %struct.apds9300_data** %6, align 8
  %33 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %32, i32 0, i32 0
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load i32, i32* @apds9300_channels, align 4
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @apds9300_channels, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @APDS9300_DRV_NAME, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %31
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  store i32* @apds9300_info, i32** %59, align 8
  br label %63

60:                                               ; preds = %31
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 0
  store i32* @apds9300_info_no_irq, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @apds9300_interrupt_handler, align 4
  %75 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %76 = load i32, i32* @IRQF_ONESHOT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @APDS9300_IRQ_NAME, align 4
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = call i32 @devm_request_threaded_irq(i32* %70, i64 %73, i32* null, i32 %74, i32 %77, i32 %78, %struct.iio_dev* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %68
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %97

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %92 = call i32 @iio_device_register(%struct.iio_dev* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %97

96:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %101

97:                                               ; preds = %95, %83, %30
  %98 = load %struct.apds9300_data*, %struct.apds9300_data** %6, align 8
  %99 = call i32 @apds9300_set_power_state(%struct.apds9300_data* %98, i32 0)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %96, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.apds9300_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @apds9300_chip_init(%struct.apds9300_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @apds9300_set_power_state(%struct.apds9300_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
