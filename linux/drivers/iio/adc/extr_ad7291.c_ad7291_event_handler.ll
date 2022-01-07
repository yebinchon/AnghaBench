; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7291_chip_info = type { i32 }

@AD7291_T_ALERT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AD7291_VOLTAGE_ALERT_STATUS = common dso_local global i32 0, align 4
@AD7291_ALERT_CLEAR = common dso_local global i32 0, align 4
@AD7291_COMMAND = common dso_local global i32 0, align 4
@AD7291_T_LOW = common dso_local global i32 0, align 4
@AD7291_T_AVG_LOW = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@AD7291_T_HIGH = common dso_local global i32 0, align 4
@AD7291_T_AVG_HIGH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@AD7291_VOLTAGE_LIMIT_COUNT = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad7291_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad7291_chip_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.iio_dev*
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.ad7291_chip_info* @iio_priv(i8* %15)
  store %struct.ad7291_chip_info* %16, %struct.ad7291_chip_info** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call i32 @iio_get_time_ns(%struct.iio_dev* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %20 = load i32, i32* @AD7291_T_ALERT_STATUS, align 4
  %21 = call i64 @ad7291_i2c_read(%struct.ad7291_chip_info* %19, i32 %20, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %136

25:                                               ; preds = %2
  %26 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %27 = load i32, i32* @AD7291_VOLTAGE_ALERT_STATUS, align 4
  %28 = call i64 @ad7291_i2c_read(%struct.ad7291_chip_info* %26, i32 %27, i32* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %136

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %136

40:                                               ; preds = %35, %32
  %41 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %42 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AD7291_ALERT_CLEAR, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %47 = load i32, i32* @AD7291_COMMAND, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %46, i32 %47, i32 %48)
  %50 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %51 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AD7291_ALERT_CLEAR, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %7, align 8
  %57 = load i32, i32* @AD7291_COMMAND, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @AD7291_T_LOW, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AD7291_T_AVG_LOW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64, %40
  %70 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %71 = load i32, i32* @IIO_TEMP, align 4
  %72 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %73 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %74 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %71, i32 0, i32 %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @iio_push_event(%struct.iio_dev* %70, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %64
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @AD7291_T_HIGH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @AD7291_T_AVG_HIGH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82, %77
  %88 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %89 = load i32, i32* @IIO_TEMP, align 4
  %90 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %91 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %92 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %89, i32 0, i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @iio_push_event(%struct.iio_dev* %88, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %82
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %131, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @AD7291_VOLTAGE_LIMIT_COUNT, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @AD7291_V_LOW(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %108 = load i32, i32* @IIO_VOLTAGE, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %111 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %112 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @iio_push_event(%struct.iio_dev* %107, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %100
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @AD7291_V_HIGH(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %123 = load i32, i32* @IIO_VOLTAGE, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %126 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %127 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @iio_push_event(%struct.iio_dev* %122, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %115
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %96

134:                                              ; preds = %96
  %135 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %38, %30, %23
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.ad7291_chip_info* @iio_priv(i8*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i64 @ad7291_i2c_read(%struct.ad7291_chip_info*, i32, i32*) #1

declare dso_local i32 @ad7291_i2c_write(%struct.ad7291_chip_info*, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @AD7291_V_LOW(i32) #1

declare dso_local i32 @AD7291_V_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
