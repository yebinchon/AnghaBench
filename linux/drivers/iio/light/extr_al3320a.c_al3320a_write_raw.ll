; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_al3320a.c_al3320a_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_al3320a.c_al3320a_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.al3320a_data = type { i32 }

@al3320a_scales = common dso_local global i32** null, align 8
@AL3320A_REG_CONFIG_RANGE = common dso_local global i32 0, align 4
@AL3320A_GAIN_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @al3320a_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al3320a_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.al3320a_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.al3320a_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.al3320a_data* %15, %struct.al3320a_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %57 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, i32* %13, align 4
  %20 = load i32**, i32*** @al3320a_scales, align 8
  %21 = call i32 @ARRAY_SIZE(i32** %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = load i32**, i32*** @al3320a_scales, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = load i32**, i32*** @al3320a_scales, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.al3320a_data*, %struct.al3320a_data** %12, align 8
  %45 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AL3320A_REG_CONFIG_RANGE, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @AL3320A_GAIN_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @i2c_smbus_write_byte_data(i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %60

52:                                               ; preds = %33, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %18

56:                                               ; preds = %18
  br label %57

57:                                               ; preds = %5, %56
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.al3320a_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
