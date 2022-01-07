; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad5764_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5764_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %57 [
    i64 128, label %20
    i64 130, label %37
    i64 129, label %47
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %68

30:                                               ; preds = %24
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %60

37:                                               ; preds = %5
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 128
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, -128
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %68

46:                                               ; preds = %40
  br label %60

47:                                               ; preds = %5
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 32
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, -32
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %68

56:                                               ; preds = %50
  br label %60

57:                                               ; preds = %5
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %68

60:                                               ; preds = %56, %46, %30
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @ad5764_chan_info_to_reg(%struct.iio_chan_spec* %61, i64 %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ad5764_write(%struct.iio_dev* %64, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %60, %57, %53, %43, %27
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @ad5764_chan_info_to_reg(%struct.iio_chan_spec*, i64) #1

declare dso_local i32 @ad5764_write(%struct.iio_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
