; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_read_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm36651_data = type { %struct.i2c_client*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CM36651_CS_CONF1 = common dso_local global i32 0, align 4
@CM36651_ALS_DISABLE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@CM36651_PROXIMITY_EV_EN = common dso_local global i32 0, align 4
@CM36651_PS_CONF1 = common dso_local global i32 0, align 4
@CM36651_PS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm36651_data*, %struct.iio_chan_spec*, i32*)* @cm36651_read_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_read_output(%struct.cm36651_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm36651_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.cm36651_data* %0, %struct.cm36651_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %11 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %72 [
    i32 129, label %18
    i32 128, label %41
  ]

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %19, i32 %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %75

30:                                               ; preds = %18
  %31 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %32 = load i32, i32* @CM36651_CS_CONF1, align 4
  %33 = load i32, i32* @CM36651_ALS_DISABLE, align 4
  %34 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %30
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %9, align 4
  br label %73

41:                                               ; preds = %3
  %42 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %43 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %42, i32 0, i32 0
  %44 = load %struct.i2c_client*, %struct.i2c_client** %43, align 8
  %45 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %44)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %41
  %53 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %54 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %55 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %54, i32 0, i32 1
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.cm36651_data*, %struct.cm36651_data** %5, align 8
  %60 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %59, i32 0, i32 0
  %61 = load %struct.i2c_client*, %struct.i2c_client** %60, align 8
  %62 = load i32, i32* @CM36651_PS_CONF1, align 4
  %63 = load i32, i32* @CM36651_PS_DISABLE, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %75

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %71, i32* %9, align 4
  br label %73

72:                                               ; preds = %3
  br label %73

73:                                               ; preds = %72, %70, %39
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %67, %50, %37, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
