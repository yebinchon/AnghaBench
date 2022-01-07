; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4018.c_mcp4018_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4018.c_mcp4018_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.mcp4018_data = type { i32*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.TYPE_4__ = type { i64 }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SMBUS Byte transfers not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcp4018_cfg = common dso_local global i32* null, align 8
@mcp4018_id = common dso_local global i32 0, align 4
@mcp4018_info = common dso_local global i32 0, align 4
@mcp4018_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mcp4018_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4018_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mcp4018_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 2
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %74

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %21, i32 16)
  store %struct.iio_dev* %22, %struct.iio_dev** %6, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = icmp ne %struct.iio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %20
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = call %struct.mcp4018_data* @iio_priv(%struct.iio_dev* %29)
  store %struct.mcp4018_data* %30, %struct.mcp4018_data** %5, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %31, %struct.iio_dev* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load %struct.mcp4018_data*, %struct.mcp4018_data** %5, align 8
  %36 = getelementptr inbounds %struct.mcp4018_data, %struct.mcp4018_data* %35, i32 0, i32 1
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32* @of_device_get_match_data(%struct.device* %37)
  %39 = load %struct.mcp4018_data*, %struct.mcp4018_data** %5, align 8
  %40 = getelementptr inbounds %struct.mcp4018_data, %struct.mcp4018_data* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.mcp4018_data*, %struct.mcp4018_data** %5, align 8
  %42 = getelementptr inbounds %struct.mcp4018_data, %struct.mcp4018_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %28
  %46 = load i32*, i32** @mcp4018_cfg, align 8
  %47 = load i32, i32* @mcp4018_id, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = call %struct.TYPE_4__* @i2c_match_id(i32 %47, %struct.i2c_client* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load %struct.mcp4018_data*, %struct.mcp4018_data** %5, align 8
  %54 = getelementptr inbounds %struct.mcp4018_data, %struct.mcp4018_data* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %45, %28
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 3
  store i32* @mcp4018_info, i32** %61, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 2
  store i32* @mcp4018_channel, i32** %63, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %73 = call i32 @devm_iio_device_register(%struct.device* %71, %struct.iio_dev* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %55, %25, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.mcp4018_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @i2c_match_id(i32, %struct.i2c_client*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
