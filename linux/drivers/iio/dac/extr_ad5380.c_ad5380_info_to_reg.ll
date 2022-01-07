; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5380.c_ad5380_info_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5380.c_ad5380_info_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i64)* @ad5380_info_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5380_info_to_reg(%struct.iio_chan_spec* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca i64, align 8
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  switch i64 %6, label %22 [
    i64 128, label %7
    i64 130, label %12
    i64 129, label %17
  ]

7:                                                ; preds = %2
  %8 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %9 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @AD5380_REG_DATA(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AD5380_REG_OFFSET(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @AD5380_REG_GAIN(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %17, %12, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @AD5380_REG_DATA(i32) #1

declare dso_local i32 @AD5380_REG_OFFSET(i32) #1

declare dso_local i32 @AD5380_REG_GAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
