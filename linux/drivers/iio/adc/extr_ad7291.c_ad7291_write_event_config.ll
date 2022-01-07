; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7291.c_ad7291_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i64 }
%struct.ad7291_chip_info = type { i32, i32, i32 }

@AD7291_AUTOCYCLE = common dso_local global i32 0, align 4
@AD7291_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @ad7291_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7291_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ad7291_chip_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7291_chip_info* %16, %struct.ad7291_chip_info** %12, align 8
  %17 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %18 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %21 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 15, %25
  %27 = call i32 @BIT(i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %96 [
    i32 128, label %31
  ]

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %36 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %45 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %66

48:                                               ; preds = %34, %31
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %53 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %61 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %65

64:                                               ; preds = %51, %48
  br label %99

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* @AD7291_AUTOCYCLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %14, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %72 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %77 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load i32, i32* @AD7291_AUTOCYCLE, align 4
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %80, %66
  %85 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %86 = load i32, i32* @AD7291_COMMAND, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @ad7291_i2c_write(%struct.ad7291_chip_info* %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %100

92:                                               ; preds = %84
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %95 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %99

96:                                               ; preds = %5
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %92, %64
  br label %100

100:                                              ; preds = %99, %91
  %101 = load %struct.ad7291_chip_info*, %struct.ad7291_chip_info** %12, align 8
  %102 = getelementptr inbounds %struct.ad7291_chip_info, %struct.ad7291_chip_info* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.ad7291_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ad7291_i2c_write(%struct.ad7291_chip_info*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
