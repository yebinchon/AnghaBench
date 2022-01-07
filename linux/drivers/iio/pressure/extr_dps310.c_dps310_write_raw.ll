; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.dps310_data = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @dps310_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dps310_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.dps310_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.dps310_data* %15, %struct.dps310_data** %13, align 8
  %16 = load %struct.dps310_data*, %struct.dps310_data** %13, align 8
  %17 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %16, i32 0, i32 0
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %65

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  switch i64 %24, label %57 [
    i64 130, label %25
    i64 131, label %41
  ]

25:                                               ; preds = %23
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %33
  ]

29:                                               ; preds = %25
  %30 = load %struct.dps310_data*, %struct.dps310_data** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dps310_set_pres_samp_freq(%struct.dps310_data* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  br label %40

33:                                               ; preds = %25
  %34 = load %struct.dps310_data*, %struct.dps310_data** %13, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dps310_set_temp_samp_freq(%struct.dps310_data* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %37, %33, %29
  br label %60

41:                                               ; preds = %23
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %53 [
    i32 129, label %45
    i32 128, label %49
  ]

45:                                               ; preds = %41
  %46 = load %struct.dps310_data*, %struct.dps310_data** %13, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dps310_set_pres_precision(%struct.dps310_data* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  br label %56

49:                                               ; preds = %41
  %50 = load %struct.dps310_data*, %struct.dps310_data** %13, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dps310_set_temp_precision(%struct.dps310_data* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %49, %45
  br label %60

57:                                               ; preds = %23
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %56, %40
  %61 = load %struct.dps310_data*, %struct.dps310_data** %13, align 8
  %62 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.dps310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dps310_set_pres_samp_freq(%struct.dps310_data*, i32) #1

declare dso_local i32 @dps310_set_temp_samp_freq(%struct.dps310_data*, i32) #1

declare dso_local i32 @dps310_set_pres_precision(%struct.dps310_data*, i32) #1

declare dso_local i32 @dps310_set_temp_precision(%struct.dps310_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
