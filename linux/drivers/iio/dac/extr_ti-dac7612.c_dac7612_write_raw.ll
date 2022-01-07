; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7612.c_dac7612_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac7612.c_dac7612_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.dac7612 = type { i32* }

@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DAC7612_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @dac7612_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac7612_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dac7612*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.dac7612* @iio_priv(%struct.iio_dev* %14)
  store %struct.dac7612* %15, %struct.dac7612** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %62

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DAC7612_RESOLUTION, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %62

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.dac7612*, %struct.dac7612** %12, align 8
  %39 = getelementptr inbounds %struct.dac7612, %struct.dac7612* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %42 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %62

48:                                               ; preds = %36
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.dac7612*, %struct.dac7612** %12, align 8
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @dac7612_cmd_single(%struct.dac7612* %52, i64 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %48, %47, %33, %19
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.dac7612* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dac7612_cmd_single(%struct.dac7612*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
