; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.lv0104cs_private = type { i64, %struct.i2c_client*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LV0104CS_CALIBSCALE_UNITY = common dso_local global i64 0, align 8
@LV0104CS_SCALE_1X = common dso_local global i32 0, align 4
@LV0104CS_INTEG_200MS = common dso_local global i32 0, align 4
@lv0104cs_calibscales = common dso_local global %struct.TYPE_4__* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@lv0104cs_channels = common dso_local global i32 0, align 4
@lv0104cs_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lv0104cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv0104cs_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.lv0104cs_private*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 32)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.lv0104cs_private* @iio_priv(%struct.iio_dev* %18)
  store %struct.lv0104cs_private* %19, %struct.lv0104cs_private** %7, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.lv0104cs_private* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %25 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %27 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %26, i32 0, i32 4
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load i64, i64* @LV0104CS_CALIBSCALE_UNITY, align 8
  %30 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %31 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @LV0104CS_SCALE_1X, align 4
  %33 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %34 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @LV0104CS_INTEG_200MS, align 4
  %36 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %37 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %7, align 8
  %39 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %38, i32 0, i32 1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lv0104cs_calibscales, align 8
  %42 = load i64, i64* @LV0104CS_CALIBSCALE_UNITY, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lv0104cs_write_reg(%struct.i2c_client* %40, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %17
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %17
  %52 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load i32, i32* @lv0104cs_channels, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @lv0104cs_channels, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i32* @lv0104cs_info, i32** %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %77 = call i32 @devm_iio_device_register(i32* %75, %struct.iio_dev* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %51, %49, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.lv0104cs_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lv0104cs_private*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lv0104cs_write_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
