; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.t5403_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@t5403_pressure_conv_ms = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @t5403_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t5403_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.t5403_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.t5403_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.t5403_data* %15, %struct.t5403_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %55 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %58

23:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** @t5403_pressure_conv_ms, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** @t5403_pressure_conv_ms, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.t5403_data*, %struct.t5403_data** %12, align 8
  %40 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.t5403_data*, %struct.t5403_data** %12, align 8
  %44 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.t5403_data*, %struct.t5403_data** %12, align 8
  %46 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %6, align 4
  br label %58

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %24

52:                                               ; preds = %24
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %52, %38, %20
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.t5403_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
