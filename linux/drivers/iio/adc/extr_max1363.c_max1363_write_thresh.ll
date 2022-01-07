; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_write_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_write_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.max1363_state = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @max1363_write_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_write_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.max1363_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %18 = call %struct.max1363_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.max1363_state* %18, %struct.max1363_state** %16, align 8
  %19 = load %struct.max1363_state*, %struct.max1363_state** %16, align 8
  %20 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %38 [
    i32 10, label %24
    i32 12, label %31
  ]

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %25, 1023
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %62

30:                                               ; preds = %24
  br label %38

31:                                               ; preds = %7
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 4095
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %62

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %7, %37, %30
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %58 [
    i32 129, label %40
    i32 128, label %49
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.max1363_state*, %struct.max1363_state** %16, align 8
  %43 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %41, i32* %48, align 4
  br label %61

49:                                               ; preds = %38
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.max1363_state*, %struct.max1363_state** %16, align 8
  %52 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %57, align 4
  br label %61

58:                                               ; preds = %38
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %62

61:                                               ; preds = %49, %40
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %58, %34, %27
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.max1363_state* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
