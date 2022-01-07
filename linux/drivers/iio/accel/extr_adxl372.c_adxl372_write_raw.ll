; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adxl372_state = type { i32, i32, i32 }

@adxl372_samp_freq_tbl = common dso_local global i32 0, align 4
@adxl372_bw_freq_tbl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @adxl372_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.adxl372_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.adxl372_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.adxl372_state* %17, %struct.adxl372_state** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %73 [
    i64 128, label %19
    i64 129, label %64
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @adxl372_samp_freq_tbl, align 4
  %21 = load i32, i32* @adxl372_samp_freq_tbl, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @adxl372_find_closest_match(i32 %20, i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @adxl372_set_odr(%struct.adxl372_state* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %76

32:                                               ; preds = %19
  %33 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %34 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %35 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @adxl372_set_activity_time_ms(%struct.adxl372_state* %33, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %76

42:                                               ; preds = %32
  %43 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %44 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %45 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @adxl372_set_inactivity_time_ms(%struct.adxl372_state* %43, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %76

52:                                               ; preds = %42
  %53 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %54 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @adxl372_set_bandwidth(%struct.adxl372_state* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %6, align 4
  br label %76

64:                                               ; preds = %5
  %65 = load i32, i32* @adxl372_bw_freq_tbl, align 4
  %66 = load i32, i32* @adxl372_bw_freq_tbl, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @adxl372_find_closest_match(i32 %65, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.adxl372_state*, %struct.adxl372_state** %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @adxl372_set_bandwidth(%struct.adxl372_state* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %76

73:                                               ; preds = %5
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %64, %62, %50, %40, %30
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.adxl372_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adxl372_find_closest_match(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @adxl372_set_odr(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_activity_time_ms(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_inactivity_time_ms(%struct.adxl372_state*, i32) #1

declare dso_local i32 @adxl372_set_bandwidth(%struct.adxl372_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
