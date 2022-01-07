; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_drdy_int_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_core.c_st_sensors_set_drdy_int_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_sensors_platform_data = type { i32, i64 }
%struct.st_sensor_data = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"DRDY on pin INT%d specified, but sensor does not support interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DRDY on INT1 not available.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"DRDY on INT2 not available.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"DRDY on pdata not valid.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"open drain requested but unsupported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.st_sensors_platform_data*)* @st_sensors_set_drdy_int_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_sensors_set_drdy_int_pin(%struct.iio_dev* %0, %struct.st_sensors_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.st_sensors_platform_data*, align 8
  %6 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.st_sensors_platform_data* %1, %struct.st_sensors_platform_data** %5, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %8 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.st_sensor_data* %8, %struct.st_sensor_data** %6, align 8
  %9 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %10 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %2
  %18 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %19 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %17
  %27 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  store i32 0, i32* %3, align 4
  br label %117

39:                                               ; preds = %17, %2
  %40 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %79 [
    i32 1, label %43
    i32 2, label %61
  ]

43:                                               ; preds = %39
  %44 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %45 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %117

58:                                               ; preds = %43
  %59 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %60 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %85

61:                                               ; preds = %39
  %62 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %63 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %117

76:                                               ; preds = %61
  %77 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %78 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %77, i32 0, i32 0
  store i32 2, i32* %78, align 8
  br label %85

79:                                               ; preds = %39
  %80 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %117

85:                                               ; preds = %76, %58
  %86 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %87 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %92 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %90
  %100 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %101 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 0
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %115

112:                                              ; preds = %99, %90
  %113 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %114 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %85
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %79, %70, %52, %38
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
