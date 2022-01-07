; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max517.c_max517_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max517.c_max517_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.max517_platform_data* }
%struct.max517_platform_data = type { i32* }
%struct.i2c_device_id = type { i32 }
%struct.max517_data = type { i32*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@ENOMEM = common dso_local global i32 0, align 4
@max517_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max517_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max517_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max517_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max517_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.max517_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.max517_platform_data*, %struct.max517_platform_data** %12, align 8
  store %struct.max517_platform_data* %13, %struct.max517_platform_data** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_4__* %15, i32 16)
  store %struct.iio_dev* %16, %struct.iio_dev** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = icmp ne %struct.iio_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %102

22:                                               ; preds = %2
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call %struct.max517_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.max517_data* %24, %struct.max517_data** %6, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.iio_dev* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.max517_data*, %struct.max517_data** %6, align 8
  %30 = getelementptr inbounds %struct.max517_data, %struct.max517_data* %29, i32 0, i32 1
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %48 [
    i32 128, label %39
    i32 129, label %42
    i32 130, label %45
    i32 131, label %45
  ]

39:                                               ; preds = %22
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 0
  store i32 8, i32* %41, align 8
  br label %51

42:                                               ; preds = %22
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  br label %51

45:                                               ; preds = %22, %22
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 0
  store i32 2, i32* %47, align 8
  br label %51

48:                                               ; preds = %22
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %45, %42, %39
  %52 = load i32, i32* @max517_channels, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  store i32* @max517_info, i32** %59, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %96, %51
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 131
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.max517_platform_data*, %struct.max517_platform_data** %8, align 8
  %73 = icmp ne %struct.max517_platform_data* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.max517_data*, %struct.max517_data** %6, align 8
  %76 = getelementptr inbounds %struct.max517_data, %struct.max517_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 5000, i32* %80, align 4
  br label %95

81:                                               ; preds = %71
  %82 = load %struct.max517_platform_data*, %struct.max517_platform_data** %8, align 8
  %83 = getelementptr inbounds %struct.max517_platform_data, %struct.max517_platform_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.max517_data*, %struct.max517_data** %6, align 8
  %90 = getelementptr inbounds %struct.max517_data, %struct.max517_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %81, %74
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %60

99:                                               ; preds = %60
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = call i32 @iio_device_register(%struct.iio_dev* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %19
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.max517_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
