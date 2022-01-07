; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_alloc_iiodev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_alloc_iiodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.st_lsm6dsx_hw = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.st_lsm6dsx_sensor = type { i32, i32, i32, i32, i32, %struct.st_lsm6dsx_hw* }

@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@st_lsm6dsx_available_scan_masks = common dso_local global i32 0, align 4
@st_lsm6dsx_acc_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s_accel\00", align 1
@st_lsm6dsx_gyro_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s_gyro\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_dev* (%struct.st_lsm6dsx_hw*, i32, i8*)* @st_lsm6dsx_alloc_iiodev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_dev* @st_lsm6dsx_alloc_iiodev(%struct.st_lsm6dsx_hw* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.st_lsm6dsx_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %11 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(i32 %12, i32 32)
  store %struct.iio_dev* %13, %struct.iio_dev** %9, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.iio_dev* null, %struct.iio_dev** %4, align 8
  br label %119

17:                                               ; preds = %3
  %18 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %22 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @st_lsm6dsx_available_scan_masks, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %31 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %43 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %55 = call %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev* %54)
  store %struct.st_lsm6dsx_sensor* %55, %struct.st_lsm6dsx_sensor** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %58 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %60 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %61 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %60, i32 0, i32 5
  store %struct.st_lsm6dsx_hw* %59, %struct.st_lsm6dsx_hw** %61, align 8
  %62 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %63 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %76 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %5, align 8
  %78 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %91 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %93 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* %6, align 4
  switch i32 %94, label %111 [
    i32 129, label %95
    i32 128, label %103
  ]

95:                                               ; preds = %17
  %96 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 1
  store i32* @st_lsm6dsx_acc_info, i32** %97, align 8
  %98 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %99 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @scnprintf(i32 %100, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %101)
  br label %112

103:                                              ; preds = %17
  %104 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 1
  store i32* @st_lsm6dsx_gyro_info, i32** %105, align 8
  %106 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %107 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @scnprintf(i32 %108, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  br label %112

111:                                              ; preds = %17
  store %struct.iio_dev* null, %struct.iio_dev** %4, align 8
  br label %119

112:                                              ; preds = %103, %95
  %113 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %8, align 8
  %114 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  store %struct.iio_dev* %118, %struct.iio_dev** %4, align 8
  br label %119

119:                                              ; preds = %112, %111, %16
  %120 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  ret %struct.iio_dev* %120
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32, i32) #1

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
