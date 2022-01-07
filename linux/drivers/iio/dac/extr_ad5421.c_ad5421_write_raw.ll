; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD5421_REG_DAC_DATA = common dso_local global i32 0, align 4
@AD5421_REG_OFFSET = common dso_local global i32 0, align 4
@AD5421_REG_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad5421_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5421_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 65536, i32* %12, align 4
  %13 = load i64, i64* %11, align 8
  switch i64 %13, label %58 [
    i64 128, label %14
    i64 130, label %28
    i64 129, label %44
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp uge i32 %15, 65536
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %62

23:                                               ; preds = %17
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = load i32, i32* @AD5421_REG_DAC_DATA, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ad5421_write(%struct.iio_dev* %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %62

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 32768
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp uge i32 %31, 65536
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %62

39:                                               ; preds = %33
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = load i32, i32* @AD5421_REG_OFFSET, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ad5421_write(%struct.iio_dev* %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %62

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  %46 = icmp uge i32 %45, 65536
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %47
  %54 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %55 = load i32, i32* @AD5421_REG_GAIN, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ad5421_write(%struct.iio_dev* %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %5
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %53, %50, %39, %36, %23, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @ad5421_write(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
