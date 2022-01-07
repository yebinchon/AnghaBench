; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5637.c_ms5637_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5637.c_ms5637_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ms_tp_dev = type { i32 }

@ms5637_samp_freq = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ms5637_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5637_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ms_tp_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ms_tp_dev* @iio_priv(%struct.iio_dev* %14)
  store %struct.ms_tp_dev* %15, %struct.ms_tp_dev** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %44 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32*, i32** @ms5637_samp_freq, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %33, %17
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %13, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** @ms5637_samp_freq, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %34

33:                                               ; preds = %24
  br label %20

34:                                               ; preds = %32, %20
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %12, align 8
  %43 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %40, %37
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.ms_tp_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
