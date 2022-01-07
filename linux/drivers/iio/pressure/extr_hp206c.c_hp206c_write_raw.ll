; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hp206c_data = type { i32, i8*, i8* }

@IIO_CHAN_INFO_OVERSAMPLING_RATIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@hp206c_osr_rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @hp206c_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp206c_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hp206c_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.hp206c_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.hp206c_data* %15, %struct.hp206c_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IIO_CHAN_INFO_OVERSAMPLING_RATIO, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %53

22:                                               ; preds = %5
  %23 = load %struct.hp206c_data*, %struct.hp206c_data** %13, align 8
  %24 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 128, label %29
    i32 129, label %37
  ]

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @hp206c_osr_rates, align 4
  %32 = load i32, i32* @hp206c_osr_rates, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i8* @find_closest_descending(i32 %30, i32 %31, i32 %33)
  %35 = load %struct.hp206c_data*, %struct.hp206c_data** %13, align 8
  %36 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %48

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @hp206c_osr_rates, align 4
  %40 = load i32, i32* @hp206c_osr_rates, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i8* @find_closest_descending(i32 %38, i32 %39, i32 %41)
  %43 = load %struct.hp206c_data*, %struct.hp206c_data** %13, align 8
  %44 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %48

45:                                               ; preds = %22
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %45, %37, %29
  %49 = load %struct.hp206c_data*, %struct.hp206c_data** %13, align 8
  %50 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.hp206c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @find_closest_descending(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
