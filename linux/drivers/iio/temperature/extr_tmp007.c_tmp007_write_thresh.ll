; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_write_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_write_thresh.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @tmp007_write_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_write_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tmp007_data*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.tmp007_data* %19, %struct.tmp007_data** %16, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %41 [
    i32 129, label %23
    i32 128, label %32
  ]

23:                                               ; preds = %7
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @TMP007_TDIE_HIGH_LIMIT, align 4
  store i32 %28, i32* %17, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @TMP007_TDIE_LOW_LIMIT, align 4
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %44

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @TMP007_TOBJ_HIGH_LIMIT, align 4
  store i32 %37, i32* %17, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @TMP007_TOBJ_LOW_LIMIT, align 4
  store i32 %39, i32* %17, align 4
  br label %40

40:                                               ; preds = %38, %36
  br label %44

41:                                               ; preds = %7
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %61

44:                                               ; preds = %40, %31
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, -256
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %61

53:                                               ; preds = %47
  %54 = load %struct.tmp007_data*, %struct.tmp007_data** %16, align 8
  %55 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 %58, 7
  %60 = call i32 @i2c_smbus_write_word_swapped(i32 %56, i32 %57, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53, %50, %41
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
