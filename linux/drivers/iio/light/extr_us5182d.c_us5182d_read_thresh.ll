; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_read_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_read_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.us5182d_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @us5182d_read_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_read_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.us5182d_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %18 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.us5182d_data* %18, %struct.us5182d_data** %16, align 8
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %42 [
    i32 128, label %20
    i32 129, label %31
  ]

20:                                               ; preds = %7
  %21 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %22 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %25 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %14, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %29 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %28, i32 0, i32 2
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %45

31:                                               ; preds = %7
  %32 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %33 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %36 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %14, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %40 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %39, i32 0, i32 2
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %45

42:                                               ; preds = %7
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %47

45:                                               ; preds = %31, %20
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
