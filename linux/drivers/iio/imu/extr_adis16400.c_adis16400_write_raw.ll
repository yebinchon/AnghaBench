; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adis16400_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.adis16400_state*)*, i32 (%struct.adis16400_state*, i32)* }

@adis16400_addresses = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @adis16400_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16400_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.adis16400_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.adis16400_state* %16, %struct.adis16400_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %97 [
    i64 130, label %18
    i64 129, label %36
    i64 128, label %70
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %23 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %22, i32 0, i32 2
  %24 = load i32*, i32** @adis16400_addresses, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @adis_write_reg_16(i32* %23, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %100

36:                                               ; preds = %5
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %42 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %44 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.adis16400_state*)*, i32 (%struct.adis16400_state*)** %46, align 8
  %48 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %49 = call i32 %47(%struct.adis16400_state* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %100

57:                                               ; preds = %36
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 1000
  %64 = add nsw i32 %61, %63
  %65 = call i32 @adis16400_set_filter(%struct.iio_dev* %58, i32 %59, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %100

70:                                               ; preds = %5
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %71, 1000
  %73 = load i32, i32* %10, align 4
  %74 = sdiv i32 %73, 1000
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %100

81:                                               ; preds = %70
  %82 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %86 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (%struct.adis16400_state*, i32)*, i32 (%struct.adis16400_state*, i32)** %88, align 8
  %90 = load %struct.adis16400_state*, %struct.adis16400_state** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 %89(%struct.adis16400_state* %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %100

97:                                               ; preds = %5
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %81, %78, %57, %52, %18
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.adis16400_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @adis16400_set_filter(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
