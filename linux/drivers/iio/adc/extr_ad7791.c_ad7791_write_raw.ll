; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad7791_state = type { i32, i32 }

@ad7791_sample_freq_avail = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@AD7791_FILTER_RATE_MASK = common dso_local global i32 0, align 4
@AD7791_REG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad7791_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7791_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7791_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad7791_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad7791_state* %16, %struct.ad7791_state** %12, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %90

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %83 [
    i64 128, label %25
  ]

25:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %53, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32**, i32*** @ad7791_sample_freq_avail, align 8
  %29 = call i32 @ARRAY_SIZE(i32** %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i32**, i32*** @ad7791_sample_freq_avail, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load i32**, i32*** @ad7791_sample_freq_avail, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %56

52:                                               ; preds = %41, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %26

56:                                               ; preds = %51, %26
  %57 = load i32, i32* %14, align 4
  %58 = load i32**, i32*** @ad7791_sample_freq_avail, align 8
  %59 = call i32 @ARRAY_SIZE(i32** %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %86

64:                                               ; preds = %56
  %65 = load i32, i32* @AD7791_FILTER_RATE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %68 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %73 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %77 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %76, i32 0, i32 1
  %78 = load i32, i32* @AD7791_REG_FILTER, align 4
  %79 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %80 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ad_sd_write_reg(i32* %77, i32 %78, i32 4, i32 %81)
  br label %86

83:                                               ; preds = %23
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %83, %64, %61
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %21
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.ad7791_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @ad_sd_write_reg(i32*, i32, i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
