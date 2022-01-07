; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i8* }
%struct.mma9551_data = type { i32, %struct.i2c_client* }
%struct.iio_dev = type { i8*, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@mma9551_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mma9551_info = common dso_local global i32 0, align 4
@MMA9551_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mma9551_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mma9551_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %110

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.mma9551_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.mma9551_data* %20, %struct.mma9551_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %26 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %25, i32 0, i32 1
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %28 = icmp ne %struct.i2c_device_id* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  br label %43

33:                                               ; preds = %18
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i64 @ACPI_HANDLE(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i8* @mma9551_match_acpi_device(i32* %40)
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %45 = call i32 @mma9551_init(%struct.mma9551_data* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %110

50:                                               ; preds = %43
  %51 = load %struct.mma9551_data*, %struct.mma9551_data** %6, align 8
  %52 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load i32, i32* @mma9551_channels, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @mma9551_channels, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %70 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  store i32* @mma9551_info, i32** %73, align 8
  %74 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %75 = call i32 @mma9551_gpio_probe(%struct.iio_dev* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %50
  br label %106

79:                                               ; preds = %50
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 @pm_runtime_set_active(i32* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %106

86:                                               ; preds = %79
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @pm_runtime_enable(i32* %88)
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i32, i32* @MMA9551_AUTO_SUSPEND_DELAY_MS, align 4
  %93 = call i32 @pm_runtime_set_autosuspend_delay(i32* %91, i32 %92)
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = call i32 @pm_runtime_use_autosuspend(i32* %95)
  %97 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %98 = call i32 @iio_device_register(%struct.iio_dev* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %86
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %106

105:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %110

106:                                              ; preds = %101, %85, %78
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = call i32 @mma9551_set_device_state(%struct.i2c_client* %107, i32 0)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %105, %48, %15
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.mma9551_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i8* @mma9551_match_acpi_device(i32*) #1

declare dso_local i32 @mma9551_init(%struct.mma9551_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mma9551_gpio_probe(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mma9551_set_device_state(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
