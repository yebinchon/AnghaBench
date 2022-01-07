; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tcs3472_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@tcs3472_agains = common dso_local global i32* null, align 8
@TCS3472_CONTROL_AGAIN_MASK = common dso_local global i32 0, align 4
@TCS3472_CONTROL = common dso_local global i32 0, align 4
@TCS3472_ATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @tcs3472_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3472_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcs3472_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.tcs3472_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.tcs3472_data* %15, %struct.tcs3472_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %99 [
    i64 129, label %17
    i64 128, label %64
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %102

23:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %58, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** @tcs3472_agains, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** @tcs3472_agains, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %30, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load i32, i32* @TCS3472_CONTROL_AGAIN_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %41 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %46 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %50 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TCS3472_CONTROL, align 4
  %53 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %54 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i2c_smbus_write_byte_data(i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %102

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %24

61:                                               ; preds = %24
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %102

64:                                               ; preds = %5
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %102

70:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %93, %70
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 256, %76
  %78 = mul nsw i32 %77, 2400
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %83 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %85 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TCS3472_ATIME, align 4
  %88 = load %struct.tcs3472_data*, %struct.tcs3472_data** %12, align 8
  %89 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @i2c_smbus_write_byte_data(i32 %86, i32 %87, i32 %90)
  store i32 %91, i32* %6, align 4
  br label %102

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %102

99:                                               ; preds = %5
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %96, %80, %67, %61, %37, %20
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.tcs3472_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
