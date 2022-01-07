; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.rpr0521_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @rpr0521_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.rpr0521_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.rpr0521_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.rpr0521_data* %15, %struct.rpr0521_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %58 [
    i64 128, label %17
    i64 129, label %32
    i64 130, label %47
  ]

17:                                               ; preds = %5
  %18 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %19 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @rpr0521_set_gain(%struct.rpr0521_data* %21, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %29 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %61

32:                                               ; preds = %5
  %33 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %34 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @rpr0521_write_samp_freq_common(%struct.rpr0521_data* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %44 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %61

47:                                               ; preds = %5
  %48 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %49 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @rpr0521_write_ps_offset(%struct.rpr0521_data* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.rpr0521_data*, %struct.rpr0521_data** %12, align 8
  %55 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %5
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %47, %32, %17
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.rpr0521_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpr0521_set_gain(%struct.rpr0521_data*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rpr0521_write_samp_freq_common(%struct.rpr0521_data*, i32, i32, i32) #1

declare dso_local i32 @rpr0521_write_ps_offset(%struct.rpr0521_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
