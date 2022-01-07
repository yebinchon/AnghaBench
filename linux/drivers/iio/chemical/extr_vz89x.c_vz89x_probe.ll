; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.vz89x_data = type { %struct.TYPE_4__*, i32, i64, %struct.i2c_client*, i32 }
%struct.of_device_id = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@vz89x_i2c_xfer = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@vz89x_smbus_xfer = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@vz89x_dt_ids = common dso_local global i32 0, align 4
@vz89x_chips = common dso_local global %struct.TYPE_4__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@vz89x_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @vz89x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vz89x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.vz89x_data*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 40)
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %118

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = call %struct.vz89x_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.vz89x_data* %20, %struct.vz89x_data** %7, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_FUNC_I2C, align 4
  %25 = call i64 @i2c_check_functionality(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @vz89x_i2c_xfer, align 4
  %29 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %30 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  br label %48

31:                                               ; preds = %18
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %36 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @i2c_check_functionality(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @vz89x_smbus_xfer, align 4
  %42 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %43 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  br label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %118

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32, i32* @vz89x_dt_ids, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call %struct.of_device_id* @of_match_device(i32 %49, i32* %51)
  store %struct.of_device_id* %52, %struct.of_device_id** %8, align 8
  %53 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %54 = icmp ne %struct.of_device_id* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %61 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = call i32 @i2c_set_clientdata(%struct.i2c_client* %65, %struct.iio_dev* %66)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %70 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %69, i32 0, i32 3
  store %struct.i2c_client* %68, %struct.i2c_client** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vz89x_chips, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %76 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %75, i32 0, i32 0
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* @HZ, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %81 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %83 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32* %86, i32** %89, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 4
  store i32* @vz89x_info, i32** %91, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = call i32 @dev_name(i32* %93)
  %95 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %98 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %101 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.vz89x_data*, %struct.vz89x_data** %7, align 8
  %108 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %113 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %117 = call i32 @devm_iio_device_register(i32* %115, %struct.iio_dev* %116)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %64, %44, %15
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.vz89x_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
