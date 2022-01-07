; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_m62332.c_m62332_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_m62332.c_m62332_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.m62332_data = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VCC\00", align 1
@m62332_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@m62332_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @m62332_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m62332_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.m62332_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.m62332_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.m62332_data* %19, %struct.m62332_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.m62332_data*, %struct.m62332_data** %6, align 8
  %25 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %24, i32 0, i32 2
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.m62332_data*, %struct.m62332_data** %6, align 8
  %27 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %26, i32 0, i32 1
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @devm_regulator_get(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.m62332_data*, %struct.m62332_data** %6, align 8
  %33 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.m62332_data*, %struct.m62332_data** %6, align 8
  %35 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load %struct.m62332_data*, %struct.m62332_data** %6, align 8
  %41 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %17
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %49, align 8
  %50 = load i32, i32* @m62332_channels, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @m62332_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 0
  store i32* @m62332_info, i32** %61, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @iio_map_array_register(%struct.iio_dev* %62, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %44
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = call i32 @iio_device_register(%struct.iio_dev* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %83

79:                                               ; preds = %77
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = call i32 @iio_map_array_unregister(%struct.iio_dev* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %78, %70, %39, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.m62332_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
