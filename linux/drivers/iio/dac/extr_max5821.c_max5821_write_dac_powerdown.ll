; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_write_dac_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_write_dac_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.max5821_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @max5821_write_dac_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5821_write_dac_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.max5821_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.max5821_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.max5821_data* %16, %struct.max5821_data** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %42

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.max5821_data*, %struct.max5821_data** %12, align 8
  %26 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %24, i32* %31, align 4
  %32 = load %struct.max5821_data*, %struct.max5821_data** %12, align 8
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %34 = call i32 @max5821_sync_powerdown_mode(%struct.max5821_data* %32, %struct.iio_chan_spec* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %42

39:                                               ; preds = %23
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %37, %21
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.max5821_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @max5821_sync_powerdown_mode(%struct.max5821_data*, %struct.iio_chan_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
