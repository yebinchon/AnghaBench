; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.ad7291_chip_info = type { i32, i32, i32, i32 }

@AD7291_AUTOCYCLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AD7291_VOLTAGE_MASK = common dso_local global i32 0, align 4
@AD7291_COMMAND = common dso_local global i32 0, align 4
@AD7291_VOLTAGE = common dso_local global i32 0, align 4
@AD7291_VALUE_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@AD7291_T_SENSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD7291_T_AVERAGE = common dso_local global i32 0, align 4
@AD7291_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7291_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ad7291_chip_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7291_chip_info* %17, %struct.ad7291_chip_info** %13, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %153 [
    i64 131, label %19
    i64 132, label %104
    i64 130, label %119
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %101 [
    i32 128, label %23
    i32 129, label %86
  ]

23:                                               ; preds = %19
  %24 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %25 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %28 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AD7291_AUTOCYCLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %35 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %34, i32 0, i32 3
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %156

39:                                               ; preds = %23
  %40 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %41 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AD7291_VOLTAGE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 15, %48
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %54 = load i32, i32* @AD7291_COMMAND, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %53, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %39
  %60 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %61 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %60, i32 0, i32 3
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %156

64:                                               ; preds = %39
  %65 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %66 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AD7291_VOLTAGE, align 4
  %69 = call i32 @i2c_smbus_read_word_swapped(i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %74 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %73, i32 0, i32 3
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %6, align 4
  br label %156

77:                                               ; preds = %64
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @AD7291_VALUE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %83 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %82, i32 0, i32 3
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %85, i32* %6, align 4
  br label %156

86:                                               ; preds = %19
  %87 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %88 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AD7291_T_SENSE, align 4
  %91 = call i32 @i2c_smbus_read_word_swapped(i32 %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %156

96:                                               ; preds = %86
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @sign_extend32(i32 %97, i32 11)
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %100, i32* %6, align 4
  br label %156

101:                                              ; preds = %19
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %156

104:                                              ; preds = %5
  %105 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %106 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AD7291_T_AVERAGE, align 4
  %109 = call i32 @i2c_smbus_read_word_swapped(i32 %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  br label %156

114:                                              ; preds = %104
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @sign_extend32(i32 %115, i32 11)
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %118, i32* %6, align 4
  br label %156

119:                                              ; preds = %5
  %120 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %121 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %150 [
    i32 128, label %123
    i32 129, label %147
  ]

123:                                              ; preds = %119
  %124 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %125 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %13, align 8
  %130 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regulator_get_voltage(i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %6, align 4
  br label %156

137:                                              ; preds = %128
  %138 = load i32, i32* %15, align 4
  %139 = sdiv i32 %138, 1000
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  br label %143

141:                                              ; preds = %123
  %142 = load i32*, i32** %9, align 8
  store i32 2500, i32* %142, align 4
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i32, i32* @AD7291_BITS, align 4
  %145 = load i32*, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %146, i32* %6, align 4
  br label %156

147:                                              ; preds = %119
  %148 = load i32*, i32** %9, align 8
  store i32 250, i32* %148, align 4
  %149 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %149, i32* %6, align 4
  br label %156

150:                                              ; preds = %119
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %6, align 4
  br label %156

153:                                              ; preds = %5
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %153, %150, %147, %143, %135, %114, %112, %101, %96, %94, %77, %72, %59, %33
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ad7291_i2c_write(%struct.ad7291_chip_info*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
