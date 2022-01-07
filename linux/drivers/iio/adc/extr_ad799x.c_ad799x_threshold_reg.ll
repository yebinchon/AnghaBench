; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_threshold_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_threshold_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i32 }

@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_chan_spec*, i32, i32)* @ad799x_threshold_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_threshold_reg(%struct.iio_chan_spec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_chan_spec* %0, %struct.iio_chan_spec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %28 [
    i32 128, label %9
    i32 129, label %23
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @AD7998_DATALOW_REG(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %9
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @AD7998_DATAHIGH_REG(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AD7998_HYST_REG(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %23, %18, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @AD7998_DATALOW_REG(i32) #1

declare dso_local i32 @AD7998_DATAHIGH_REG(i32) #1

declare dso_local i32 @AD7998_HYST_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
