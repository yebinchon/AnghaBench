; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ds4424.c_ds4424_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ds4424.c_ds4424_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%union.ds4424_raw_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@S8_MIN = common dso_local global i32 0, align 4
@S8_MAX = common dso_local global i32 0, align 4
@DS4424_SOURCE_I = common dso_local global i32 0, align 4
@DS4424_SINK_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ds4424_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds4424_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.ds4424_raw_data, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %54

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %51 [
    i64 128, label %20
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @S8_MIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @S8_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %54

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @DS4424_SOURCE_I, align 4
  %36 = bitcast %union.ds4424_raw_data* %12 to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = bitcast %union.ds4424_raw_data* %12 to i32*
  store i32 %37, i32* %38, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @DS4424_SINK_I, align 4
  %41 = bitcast %union.ds4424_raw_data* %12 to i32*
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 0, %42
  %44 = bitcast %union.ds4424_raw_data* %12 to i32*
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = bitcast %union.ds4424_raw_data* %12 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = call i32 @ds4424_set_value(%struct.iio_dev* %46, i32 %48, %struct.iio_chan_spec* %49)
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %18
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %45, %28, %15
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @ds4424_set_value(%struct.iio_dev*, i32, %struct.iio_chan_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
