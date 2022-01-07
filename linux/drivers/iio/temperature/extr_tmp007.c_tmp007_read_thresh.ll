; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_read_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_read_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tmp007_data = type { i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@TMP007_TDIE_HIGH_LIMIT = common dso_local global i32 0, align 4
@TMP007_TDIE_LOW_LIMIT = common dso_local global i32 0, align 4
@TMP007_TOBJ_HIGH_LIMIT = common dso_local global i32 0, align 4
@TMP007_TOBJ_LOW_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @tmp007_read_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_read_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tmp007_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %20 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.tmp007_data* %20, %struct.tmp007_data** %16, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %42 [
    i32 129, label %24
    i32 128, label %33
  ]

24:                                               ; preds = %7
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @TMP007_TDIE_HIGH_LIMIT, align 4
  store i32 %29, i32* %18, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @TMP007_TDIE_LOW_LIMIT, align 4
  store i32 %31, i32* %18, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %45

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @TMP007_TOBJ_HIGH_LIMIT, align 4
  store i32 %38, i32* %18, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @TMP007_TOBJ_LOW_LIMIT, align 4
  store i32 %40, i32* %18, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %45

42:                                               ; preds = %7
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %61

45:                                               ; preds = %41, %32
  %46 = load %struct.tmp007_data*, %struct.tmp007_data** %16, align 8
  %47 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @i2c_smbus_read_word_swapped(i32 %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %8, align 4
  br label %61

55:                                               ; preds = %45
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @sign_extend32(i32 %56, i32 15)
  %58 = ashr i32 %57, 7
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %53, %42
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
