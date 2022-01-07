; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.kxcjk1013_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @kxcjk1013_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.kxcjk1013_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.kxcjk1013_data* %15, %struct.kxcjk1013_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %44 [
    i64 129, label %17
    i64 128, label %28
  ]

17:                                               ; preds = %5
  %18 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %19 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @kxcjk1013_set_odr(%struct.kxcjk1013_data* %21, i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %26 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %47

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %49

34:                                               ; preds = %28
  %35 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %36 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @kxcjk1013_set_scale(%struct.kxcjk1013_data* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %12, align 8
  %42 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %47

44:                                               ; preds = %5
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %34, %17
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %31
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kxcjk1013_set_odr(%struct.kxcjk1013_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kxcjk1013_set_scale(%struct.kxcjk1013_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
