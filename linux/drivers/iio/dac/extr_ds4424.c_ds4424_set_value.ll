; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ds4424.c_ds4424_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ds4424.c_ds4424_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ds4424_data = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, %struct.iio_chan_spec*)* @ds4424_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds4424_set_value(%struct.iio_dev* %0, i32 %1, %struct.iio_chan_spec* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca %struct.ds4424_data*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %6, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.ds4424_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.ds4424_data* %10, %struct.ds4424_data** %7, align 8
  %11 = load %struct.ds4424_data*, %struct.ds4424_data** %7, align 8
  %12 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ds4424_data*, %struct.ds4424_data** %7, align 8
  %15 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @DS4424_DAC_ADDR(i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @i2c_smbus_write_byte_data(i32 %16, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ds4424_data*, %struct.ds4424_data** %7, align 8
  %29 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %27, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %25
  %36 = load %struct.ds4424_data*, %struct.ds4424_data** %7, align 8
  %37 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.ds4424_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @DS4424_DAC_ADDR(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
