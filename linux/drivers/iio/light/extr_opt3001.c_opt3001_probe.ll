; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32*, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.opt3001 = type { i32, %struct.device*, i32, i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@opt3001_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@opt3001_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to register IIO device\0A\00", align 1
@opt3001_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"opt3001\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to request IRQ #%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"enabling interrupt-less operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @opt3001_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.opt3001*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %16, i32 32)
  store %struct.iio_dev* %17, %struct.iio_dev** %7, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = call %struct.opt3001* @iio_priv(%struct.iio_dev* %24)
  store %struct.opt3001* %25, %struct.opt3001** %8, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %28 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %27, i32 0, i32 4
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %31 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %30, i32 0, i32 1
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %33 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %32, i32 0, i32 3
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %36 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %35, i32 0, i32 2
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.iio_dev* %39)
  %41 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %42 = call i32 @opt3001_read_id(%struct.opt3001* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %23
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %112

47:                                               ; preds = %23
  %48 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %49 = call i32 @opt3001_configure(%struct.opt3001* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %112

54:                                               ; preds = %47
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @opt3001_channels, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @opt3001_channels, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.device* %67, %struct.device** %70, align 8
  %71 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %74, i32 0, i32 0
  store i32* @opt3001_info, i32** %75, align 8
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %78 = call i32 @devm_iio_device_register(%struct.device* %76, %struct.iio_dev* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %54
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %112

85:                                               ; preds = %54
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @opt3001_irq, align 4
  %91 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %92 = load i32, i32* @IRQF_ONESHOT, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = call i32 @request_threaded_irq(i32 %89, i32* null, i32 %90, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.iio_dev* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %112

103:                                              ; preds = %88
  %104 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %105 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %111

106:                                              ; preds = %85
  %107 = load %struct.opt3001*, %struct.opt3001** %8, align 8
  %108 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %107, i32 0, i32 1
  %109 = load %struct.device*, %struct.device** %108, align 8
  %110 = call i32 @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %106, %103
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %98, %81, %52, %45, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.opt3001* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @opt3001_read_id(%struct.opt3001*) #1

declare dso_local i32 @opt3001_configure(%struct.opt3001*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
