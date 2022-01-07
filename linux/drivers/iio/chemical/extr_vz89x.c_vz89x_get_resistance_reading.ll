; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_get_resistance_reading.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_get_resistance_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vz89x_data = type { i32* }
%struct.iio_chan_spec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vz89x_data*, %struct.iio_chan_spec*, i32*)* @vz89x_get_resistance_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vz89x_get_resistance_reading(%struct.vz89x_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vz89x_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.vz89x_data* %0, %struct.vz89x_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.vz89x_data*, %struct.vz89x_data** %5, align 8
  %10 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  store i32* %15, i32** %8, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %31 [
    i32 128, label %20
    i32 129, label %26
  ]

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @le32_to_cpup(i32* %21)
  %23 = call i32 @GENMASK(i32 23, i32 0)
  %24 = and i32 %22, %23
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @be32_to_cpup(i32* %27)
  %29 = ashr i32 %28, 8
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %26, %20
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
