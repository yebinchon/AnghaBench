; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.nau7802_state = type { i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NAU7802_REG_CTRL2 = common dso_local global i32 0, align 4
@NAU7802_CTRL2_CHS_BIT = common dso_local global i32 0, align 4
@NAU7802_REG_CTRL1 = common dso_local global i32 0, align 4
@NAU7802_CTRL1_GAINS_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@nau7802_sample_freq_avail = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @nau7802_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nau7802_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.nau7802_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.nau7802_state* %15, %struct.nau7802_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %131 [
    i64 130, label %17
    i64 128, label %100
    i64 129, label %121
  ]

17:                                               ; preds = %5
  %18 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %19 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %22 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* @NAU7802_REG_CTRL2, align 4
  %25 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %30 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %29, i32 0, i32 3
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %135

33:                                               ; preds = %17
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @NAU7802_CTRL2_CHS_BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @NAU7802_CTRL2_CHS_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %43
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %48, %38
  %54 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %55 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %54, i32 0, i32 4
  store i32 0, i32* %55, align 4
  %56 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %57 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* @NAU7802_REG_CTRL2, align 4
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NAU7802_CTRL2_CHS(i32 %62)
  %64 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %65 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @NAU7802_CTRL2_CRS(i64 %66)
  %68 = or i32 %63, %67
  %69 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %58, i32 %59, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %74 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %73, i32 0, i32 3
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %135

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %48, %43
  %79 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %80 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @nau7802_read_irq(%struct.iio_dev* %86, %struct.iio_chan_spec* %87, i32* %88)
  store i32 %89, i32* %13, align 4
  br label %95

90:                                               ; preds = %78
  %91 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %92 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @nau7802_read_poll(%struct.iio_dev* %91, %struct.iio_chan_spec* %92, i32* %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %97 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %96, i32 0, i32 3
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %6, align 4
  br label %135

100:                                              ; preds = %5
  %101 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %102 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* @NAU7802_REG_CTRL1, align 4
  %105 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %6, align 4
  br label %135

110:                                              ; preds = %100
  %111 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %112 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @NAU7802_CTRL1_GAINS_BITS, align 4
  %117 = and i32 %115, %116
  %118 = add nsw i32 23, %117
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %120, i32* %6, align 4
  br label %135

121:                                              ; preds = %5
  %122 = load i32*, i32** @nau7802_sample_freq_avail, align 8
  %123 = load %struct.nau7802_state*, %struct.nau7802_state** %12, align 8
  %124 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %9, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %10, align 8
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %130, i32* %6, align 4
  br label %135

131:                                              ; preds = %5
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %121, %110, %108, %95, %72, %28
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local %struct.nau7802_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @NAU7802_CTRL2_CHS(i32) #1

declare dso_local i32 @NAU7802_CTRL2_CRS(i64) #1

declare dso_local i32 @nau7802_read_irq(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @nau7802_read_poll(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
