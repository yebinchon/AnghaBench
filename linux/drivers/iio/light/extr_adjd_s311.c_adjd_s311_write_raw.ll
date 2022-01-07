; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_adjd_s311.c_adjd_s311_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adjd_s311_data = type { i32 }

@ADJD_S311_CAP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADJD_S311_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @adjd_s311_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjd_s311_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.adjd_s311_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.adjd_s311_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.adjd_s311_data* %14, %struct.adjd_s311_data** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %59 [
    i64 129, label %16
    i64 128, label %36
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ADJD_S311_CAP_MASK, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %12, align 8
  %28 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ADJD_S311_CAP_REG(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(i32 %29, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %62

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ADJD_S311_INT_MASK, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39, %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %42
  %50 = load %struct.adjd_s311_data*, %struct.adjd_s311_data** %12, align 8
  %51 = getelementptr inbounds %struct.adjd_s311_data, %struct.adjd_s311_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ADJD_S311_INT_REG(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @i2c_smbus_write_word_data(i32 %52, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %5
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %49, %46, %26, %23
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.adjd_s311_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @ADJD_S311_CAP_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #1

declare dso_local i32 @ADJD_S311_INT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
