; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/amplifiers/extr_ad8366.c_ad8366_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ad8366_state = type { i32, i32*, i32, %struct.ad8366_info* }
%struct.ad8366_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad8366_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad8366_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad8366_state*, align 8
  %13 = alloca %struct.ad8366_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ad8366_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad8366_state* %18, %struct.ad8366_state** %12, align 8
  %19 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %20 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %19, i32 0, i32 3
  %21 = load %struct.ad8366_info*, %struct.ad8366_info** %20, align 8
  store %struct.ad8366_info* %21, %struct.ad8366_info** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = load i32, i32* %10, align 4
  %28 = sdiv i32 %27, 1000
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %15, align 4
  br label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 1000
  %33 = load i32, i32* %10, align 4
  %34 = sdiv i32 %33, 1000
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.ad8366_info*, %struct.ad8366_info** %13, align 8
  %39 = getelementptr inbounds %struct.ad8366_info, %struct.ad8366_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.ad8366_info*, %struct.ad8366_info** %13, align 8
  %45 = getelementptr inbounds %struct.ad8366_info, %struct.ad8366_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %103

51:                                               ; preds = %42
  %52 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %53 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %69 [
    i32 131, label %55
    i32 130, label %59
    i32 129, label %63
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = sub nsw i32 %56, 4500
  %58 = sdiv i32 %57, 253
  store i32 %58, i32* %14, align 4
  br label %69

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 15000, %60
  %62 = sdiv i32 %61, 1000
  store i32 %62, i32* %14, align 4
  br label %69

63:                                               ; preds = %51
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %64, 500
  %66 = sub nsw i32 %65, 20000
  %67 = sdiv i32 %66, 500
  %68 = and i32 %67, 63
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %51, %63, %59, %55
  %70 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %71 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %70, i32 0, i32 2
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load i64, i64* %11, align 8
  switch i64 %73, label %95 [
    i64 128, label %74
  ]

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %77 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %75, i32* %82, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %84 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %85 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %90 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ad8366_write(%struct.iio_dev* %83, i32 %88, i32 %93)
  store i32 %94, i32* %16, align 4
  br label %98

95:                                               ; preds = %69
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %95, %74
  %99 = load %struct.ad8366_state*, %struct.ad8366_state** %12, align 8
  %100 = getelementptr inbounds %struct.ad8366_state, %struct.ad8366_state* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %16, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %48
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.ad8366_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad8366_write(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
