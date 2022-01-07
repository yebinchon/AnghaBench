; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ad7606_state = type { i32 (%struct.iio_dev*, i32, i32)*, i32*, i32 (%struct.iio_dev*, i32)*, i32, i32*, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad7606_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7606_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7606_state* %17, %struct.ad7606_state** %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %109 [
    i64 128, label %19
    i64 129, label %65
  ]

19:                                               ; preds = %5
  %20 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %21 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %25 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %28 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @find_closest(i32 %23, i32* %26, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %32 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %35, %19
  %40 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %41 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %40, i32 0, i32 0
  %42 = load i32 (%struct.iio_dev*, i32, i32)*, i32 (%struct.iio_dev*, i32, i32)** %41, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 %42(%struct.iio_dev* %43, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %51 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %50, i32 0, i32 3
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %112

54:                                               ; preds = %39
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %57 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %63 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %62, i32 0, i32 3
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %6, align 4
  br label %112

65:                                               ; preds = %5
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %112

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %74 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %77 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @find_closest(i32 %72, i32* %75, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %81 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %80, i32 0, i32 3
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %84 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %83, i32 0, i32 2
  %85 = load i32 (%struct.iio_dev*, i32)*, i32 (%struct.iio_dev*, i32)** %84, align 8
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 %85(%struct.iio_dev* %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %71
  %92 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %93 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %92, i32 0, i32 3
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %112

96:                                               ; preds = %71
  %97 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %98 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %105 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ad7606_state*, %struct.ad7606_state** %12, align 8
  %107 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %106, i32 0, i32 3
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 0, i32* %6, align 4
  br label %112

109:                                              ; preds = %5
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %96, %91, %68, %54, %49
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_closest(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
