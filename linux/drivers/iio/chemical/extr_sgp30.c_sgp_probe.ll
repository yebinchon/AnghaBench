; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sgp30.c_sgp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.sgp_data = type { %struct.i2c_client*, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.of_device_id = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@sgp_dt_ids = common dso_local global i32 0, align 4
@sgp_crc8_table = common dso_local global i32 0, align 4
@SGP_CRC8_POLYNOMIAL = common dso_local global i32 0, align 4
@SGP_CMD_GET_FEATURE_SET = common dso_local global i32 0, align 4
@SGP_CMD_DURATION_US = common dso_local global i32 0, align 4
@sgp_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@sgp_devices = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to register iio device\0A\00", align 1
@sgp_iaq_threadfn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-iaq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sgp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgp_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.sgp_data*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %12, i32 32)
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %131

19:                                               ; preds = %2
  %20 = load i32, i32* @sgp_dt_ids, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call %struct.of_device_id* @of_match_device(i32 %20, i32* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %8, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %28 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = call %struct.sgp_data* @iio_priv(%struct.iio_dev* %35)
  store %struct.sgp_data* %36, %struct.sgp_data** %7, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = call i32 @i2c_set_clientdata(%struct.i2c_client* %37, %struct.iio_dev* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %42 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %41, i32 0, i32 0
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load i32, i32* @sgp_crc8_table, align 4
  %44 = load i32, i32* @SGP_CRC8_POLYNOMIAL, align 4
  %45 = call i32 @crc8_populate_msb(i32 %43, i32 %44)
  %46 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %47 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %46, i32 0, i32 4
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %50 = load i32, i32* @SGP_CMD_GET_FEATURE_SET, align 4
  %51 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %52 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %51, i32 0, i32 2
  %53 = load i32, i32* @SGP_CMD_DURATION_US, align 4
  %54 = call i32 @sgp_read_cmd(%struct.sgp_data* %49, i32 %50, %struct.TYPE_7__* %52, i32 1, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %34
  %60 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %61 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be16_to_cpu(i32 %66)
  %68 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %69 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @sgp_check_compat(%struct.sgp_data* %70, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %131

77:                                               ; preds = %59
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 4
  store i32* @sgp_info, i32** %84, align 8
  %85 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %86 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %91 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sgp_devices, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sgp_devices, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %108 = call i32 @sgp_init(%struct.sgp_data* %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 1
  %111 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %112 = call i32 @devm_iio_device_register(i32* %110, %struct.iio_dev* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %77
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %131

120:                                              ; preds = %77
  %121 = load i32, i32* @sgp_iaq_threadfn, align 4
  %122 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %123 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %124 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %123, i32 0, i32 0
  %125 = load %struct.i2c_client*, %struct.i2c_client** %124, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @kthread_run(i32 %121, %struct.sgp_data* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.sgp_data*, %struct.sgp_data** %7, align 8
  %130 = getelementptr inbounds %struct.sgp_data, %struct.sgp_data* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %120, %115, %75, %57, %16
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.sgp_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @crc8_populate_msb(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sgp_read_cmd(%struct.sgp_data*, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @sgp_check_compat(%struct.sgp_data*, i64) #1

declare dso_local i32 @sgp_init(%struct.sgp_data*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kthread_run(i32, %struct.sgp_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
