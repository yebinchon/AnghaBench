; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hx711_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @hx711_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hx711_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.hx711_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.hx711_data* %16, %struct.hx711_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %68 [
    i64 128, label %18
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %71

24:                                               ; preds = %18
  %25 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %26 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @hx711_get_scale_to_gain(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %34 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %71

37:                                               ; preds = %24
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %40 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %46 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %52 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %55 = call i32 @hx711_read(%struct.hx711_data* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %60 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %71

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.hx711_data*, %struct.hx711_data** %12, align 8
  %66 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %65, i32 0, i32 2
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %64, %58, %32, %21
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.hx711_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hx711_get_scale_to_gain(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hx711_read(%struct.hx711_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
