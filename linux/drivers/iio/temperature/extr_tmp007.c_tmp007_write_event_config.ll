; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tmp007_data = type { i32, i32, i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@TMP007_STATUS_LHF = common dso_local global i32 0, align 4
@TMP007_STATUS_LLF = common dso_local global i32 0, align 4
@TMP007_STATUS_OHF = common dso_local global i32 0, align 4
@TMP007_STATUS_OLF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TMP007_STATUS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @tmp007_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tmp007_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.tmp007_data* %16, %struct.tmp007_data** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 129, label %20
    i32 128, label %29
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @TMP007_STATUS_LHF, align 4
  store i32 %25, i32* %13, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TMP007_STATUS_LLF, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %41

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @TMP007_STATUS_OHF, align 4
  store i32 %34, i32* %13, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TMP007_STATUS_OLF, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %78

41:                                               ; preds = %37, %28
  %42 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %43 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %46 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TMP007_STATUS_MASK, align 4
  %49 = call i32 @i2c_smbus_read_word_swapped(i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %51 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %78

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  br label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %71 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TMP007_STATUS_MASK, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.tmp007_data*, %struct.tmp007_data** %12, align 8
  %76 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = call i32 @i2c_smbus_write_word_swapped(i32 %72, i32 %73, i32 %74)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %69, %55, %38
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
