; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_alloc_iiodev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_alloc_iiodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, %struct.iio_chan_spec*, i32, i32*, %struct.TYPE_8__, i32 }
%struct.iio_chan_spec = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.st_lsm6dsx_hw = type { i32 }
%struct.st_lsm6dsx_ext_dev_settings = type { i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.st_lsm6dsx_sensor = type { i32, i32, i32, %struct.TYPE_13__, i32, i32, %struct.st_lsm6dsx_hw* }
%struct.TYPE_13__ = type { i32, %struct.st_lsm6dsx_ext_dev_settings* }

@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@st_lsm6dsx_ext_info = common dso_local global i32 0, align 4
@IIO_MAGN = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@st_lsm6dsx_available_scan_masks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s_magn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_dev* (%struct.st_lsm6dsx_hw*, i32, %struct.st_lsm6dsx_ext_dev_settings*, i32, i8*)* @st_lsm6dsx_shub_alloc_iiodev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_dev* @st_lsm6dsx_shub_alloc_iiodev(%struct.st_lsm6dsx_hw* %0, i32 %1, %struct.st_lsm6dsx_ext_dev_settings* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.st_lsm6dsx_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_lsm6dsx_ext_dev_settings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iio_chan_spec*, align 8
  %13 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %14 = alloca %struct.iio_dev*, align 8
  %15 = alloca [4 x %struct.iio_chan_spec], align 16
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.st_lsm6dsx_ext_dev_settings* %2, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %17 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.iio_dev* @devm_iio_device_alloc(i32 %18, i32 48)
  store %struct.iio_dev* %19, %struct.iio_dev** %14, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %21 = icmp ne %struct.iio_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.iio_dev* null, %struct.iio_dev** %6, align 8
  br label %142

23:                                               ; preds = %5
  %24 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %25 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %28 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 4
  store i32* @st_lsm6dsx_ext_info, i32** %34, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %36 = call %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev* %35)
  store %struct.st_lsm6dsx_sensor* %36, %struct.st_lsm6dsx_sensor** %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %39 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %41 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %42 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %41, i32 0, i32 6
  store %struct.st_lsm6dsx_hw* %40, %struct.st_lsm6dsx_hw** %42, align 8
  %43 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %44 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %51 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %53 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %60 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %62 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %63 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store %struct.st_lsm6dsx_ext_dev_settings* %61, %struct.st_lsm6dsx_ext_dev_settings** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %67 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %70 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %72 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %134 [
    i32 128, label %74
  ]

74:                                               ; preds = %23
  %75 = getelementptr inbounds [4 x %struct.iio_chan_spec], [4 x %struct.iio_chan_spec]* %15, i64 0, i64 0
  %76 = load i32, i32* @IIO_MAGN, align 4
  %77 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %78 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IIO_MOD_X, align 4
  %82 = call i32 @ST_LSM6DSX_CHANNEL(i32 %76, i32 %80, i32 %81, i32 0)
  %83 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i64 1
  %85 = load i32, i32* @IIO_MAGN, align 4
  %86 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %87 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 2
  %91 = load i32, i32* @IIO_MOD_Y, align 4
  %92 = call i32 @ST_LSM6DSX_CHANNEL(i32 %85, i32 %90, i32 %91, i32 1)
  %93 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i64 1
  %95 = load i32, i32* @IIO_MAGN, align 4
  %96 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %9, align 8
  %97 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 4
  %101 = load i32, i32* @IIO_MOD_Z, align 4
  %102 = call i32 @ST_LSM6DSX_CHANNEL(i32 %95, i32 %100, i32 %101, i32 2)
  %103 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %94, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %94, i64 1
  %105 = call i32 @IIO_CHAN_SOFT_TIMESTAMP(i32 3)
  %106 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %104, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %108 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.iio_chan_spec* @devm_kzalloc(i32 %109, i32 16, i32 %110)
  store %struct.iio_chan_spec* %111, %struct.iio_chan_spec** %12, align 8
  %112 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %12, align 8
  %113 = icmp ne %struct.iio_chan_spec* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %74
  store %struct.iio_dev* null, %struct.iio_dev** %6, align 8
  br label %142

115:                                              ; preds = %74
  %116 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %12, align 8
  %117 = getelementptr inbounds [4 x %struct.iio_chan_spec], [4 x %struct.iio_chan_spec]* %15, i64 0, i64 0
  %118 = call i32 @memcpy(%struct.iio_chan_spec* %116, %struct.iio_chan_spec* %117, i32 16)
  %119 = load i32, i32* @st_lsm6dsx_available_scan_masks, align 4
  %120 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %121 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %12, align 8
  %123 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %124 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %123, i32 0, i32 2
  store %struct.iio_chan_spec* %122, %struct.iio_chan_spec** %124, align 8
  %125 = getelementptr inbounds [4 x %struct.iio_chan_spec], [4 x %struct.iio_chan_spec]* %15, i64 0, i64 0
  %126 = call i32 @ARRAY_SIZE(%struct.iio_chan_spec* %125)
  %127 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %130 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @scnprintf(i32 %131, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %132)
  br label %135

134:                                              ; preds = %23
  store %struct.iio_dev* null, %struct.iio_dev** %6, align 8
  br label %142

135:                                              ; preds = %115
  %136 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %137 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  %140 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  store %struct.iio_dev* %141, %struct.iio_dev** %6, align 8
  br label %142

142:                                              ; preds = %135, %134, %114, %22
  %143 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  ret %struct.iio_dev* %143
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32, i32) #1

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ST_LSM6DSX_CHANNEL(i32, i32, i32, i32) #1

declare dso_local i32 @IIO_CHAN_SOFT_TIMESTAMP(i32) #1

declare dso_local %struct.iio_chan_spec* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.iio_chan_spec*, %struct.iio_chan_spec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iio_chan_spec*) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
