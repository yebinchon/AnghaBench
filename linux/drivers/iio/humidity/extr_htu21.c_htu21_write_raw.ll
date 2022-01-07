; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_htu21.c_htu21_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_htu21.c_htu21_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ms_ht_dev = type { i32, i32 }

@htu21_samp_freq = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @htu21_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htu21_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ms_ht_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ms_ht_dev* @iio_priv(%struct.iio_dev* %15)
  store %struct.ms_ht_dev* %16, %struct.ms_ht_dev** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %55 [
    i64 128, label %18
  ]

18:                                               ; preds = %5
  %19 = load i32*, i32** @htu21_samp_freq, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %13, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** @htu21_samp_freq, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %35

34:                                               ; preds = %25
  br label %21

35:                                               ; preds = %33, %21
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %35
  %42 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %12, align 8
  %43 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %12, align 8
  %47 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @ms_sensors_write_resolution(%struct.ms_ht_dev* %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %12, align 8
  %52 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %41, %38
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.ms_ht_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ms_sensors_write_resolution(%struct.ms_ht_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
