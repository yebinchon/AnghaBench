; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp03.c_hp03_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp03.c_hp03_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hp03_priv = type { i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @hp03_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp03_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hp03_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.hp03_priv* @iio_priv(%struct.iio_dev* %14)
  store %struct.hp03_priv* %15, %struct.hp03_priv** %12, align 8
  %16 = load %struct.hp03_priv*, %struct.hp03_priv** %12, align 8
  %17 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.hp03_priv*, %struct.hp03_priv** %12, align 8
  %20 = call i32 @hp03_update_temp_pressure(%struct.hp03_priv* %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.hp03_priv*, %struct.hp03_priv** %12, align 8
  %22 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %21, i32 0, i32 2
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %66

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  switch i64 %29, label %63 [
    i64 131, label %30
    i64 130, label %49
  ]

30:                                               ; preds = %28
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 128, label %40
  ]

34:                                               ; preds = %30
  %35 = load %struct.hp03_priv*, %struct.hp03_priv** %12, align 8
  %36 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %6, align 4
  br label %66

40:                                               ; preds = %30
  %41 = load %struct.hp03_priv*, %struct.hp03_priv** %12, align 8
  %42 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %45, i32* %6, align 4
  br label %66

46:                                               ; preds = %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %66

49:                                               ; preds = %28
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %60 [
    i32 129, label %53
    i32 128, label %57
  ]

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 1000, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %56, i32* %6, align 4
  br label %66

57:                                               ; preds = %49
  %58 = load i32*, i32** %9, align 8
  store i32 10, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %28
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %60, %57, %53, %46, %40, %34, %26
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.hp03_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hp03_update_temp_pressure(%struct.hp03_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
