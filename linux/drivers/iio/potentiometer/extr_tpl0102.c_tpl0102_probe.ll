; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_tpl0102.c_tpl0102_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_tpl0102.c_tpl0102_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.tpl0102_data = type { %struct.TYPE_4__*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@tpl0102_cfg = common dso_local global %struct.TYPE_4__* null, align 8
@tpl0102_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@tpl0102_info = common dso_local global i32 0, align 4
@tpl0102_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tpl0102_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpl0102_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tpl0102_data*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %8, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = call %struct.tpl0102_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.tpl0102_data* %20, %struct.tpl0102_data** %7, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tpl0102_cfg, align 8
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = load %struct.tpl0102_data*, %struct.tpl0102_data** %7, align 8
  %30 = getelementptr inbounds %struct.tpl0102_data, %struct.tpl0102_data* %29, i32 0, i32 0
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @tpl0102_regmap_config)
  %33 = load %struct.tpl0102_data*, %struct.tpl0102_data** %7, align 8
  %34 = getelementptr inbounds %struct.tpl0102_data, %struct.tpl0102_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tpl0102_data*, %struct.tpl0102_data** %7, align 8
  %36 = getelementptr inbounds %struct.tpl0102_data, %struct.tpl0102_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %18
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.tpl0102_data*, %struct.tpl0102_data** %7, align 8
  %44 = getelementptr inbounds %struct.tpl0102_data, %struct.tpl0102_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %18
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.device* %48, %struct.device** %51, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32* @tpl0102_info, i32** %53, align 8
  %54 = load i32, i32* @tpl0102_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.tpl0102_data*, %struct.tpl0102_data** %7, align 8
  %58 = getelementptr inbounds %struct.tpl0102_data, %struct.tpl0102_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %71 = call i32 @devm_iio_device_register(%struct.device* %69, %struct.iio_dev* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %47, %40, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.tpl0102_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
