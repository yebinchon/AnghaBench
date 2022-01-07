; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ad7124_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad7124_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7124_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.ad7124_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad7124_state* %18, %struct.ad7124_state** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %87 [
    i64 129, label %20
    i64 128, label %33
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %90

26:                                               ; preds = %20
  %27 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ad7124_set_channel_odr(%struct.ad7124_state* %27, i64 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %90

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %90

39:                                               ; preds = %33
  %40 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %41 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 1, %55
  store i32 %56, i32* %15, align 4
  br label %63

57:                                               ; preds = %39
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %65 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %68 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = mul nsw i64 %72, 1000000
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @DIV_ROUND_CLOSEST(i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @DIV_ROUND_CLOSEST(i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load %struct.ad7124_state*, %struct.ad7124_state** %12, align 8
  %82 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %83 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @ad7124_set_channel_gain(%struct.ad7124_state* %81, i64 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %90

87:                                               ; preds = %5
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %63, %36, %26, %23
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.ad7124_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad7124_set_channel_odr(%struct.ad7124_state*, i64, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ad7124_set_channel_gain(%struct.ad7124_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
