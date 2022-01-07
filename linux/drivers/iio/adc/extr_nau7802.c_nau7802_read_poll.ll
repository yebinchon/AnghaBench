; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.nau7802_state = type { i64, i64, i32, i32 }

@NAU7802_REG_PUCTRL = common dso_local global i32 0, align 4
@NAU7802_PUCTRL_CR_BIT = common dso_local global i32 0, align 4
@NAU7802_SAMP_FREQ_320 = common dso_local global i64 0, align 8
@NAU7802_MIN_CONVERSIONS = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @nau7802_read_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_read_poll(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nau7802_state*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.nau7802_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.nau7802_state* %11, %struct.nau7802_state** %8, align 8
  %12 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %13 = call i32 @nau7802_sync(%struct.nau7802_state* %12)
  %14 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %15 = call i32 @nau7802_read_conversion(%struct.nau7802_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %78, %20
  %22 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %23 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %90

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NAU7802_PUCTRL_CR_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %40 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NAU7802_SAMP_FREQ_320, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @msleep(i32 20)
  br label %48

46:                                               ; preds = %38
  %47 = call i32 @mdelay(i32 4)
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %50 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NAU7802_REG_PUCTRL, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %90

58:                                               ; preds = %48
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %61 = call i32 @nau7802_read_conversion(%struct.nau7802_state* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %90

66:                                               ; preds = %59
  %67 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %68 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NAU7802_MIN_CONVERSIONS, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %74 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %80 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NAU7802_MIN_CONVERSIONS, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %21, label %84

84:                                               ; preds = %78
  %85 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %86 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %64, %56, %29, %18
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.nau7802_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @nau7802_sync(%struct.nau7802_state*) #1

declare dso_local i32 @nau7802_read_conversion(%struct.nau7802_state*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
