; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2772_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_INTENSITY = common dso_local global i32 0, align 4
@tsl2772_int_time_avail = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @tsl2772_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tsl2772_chip*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %22 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %21)
  store %struct.tsl2772_chip* %22, %struct.tsl2772_chip** %16, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %118 [
    i32 128, label %26
    i32 129, label %61
  ]

26:                                               ; preds = %7
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IIO_INTENSITY, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %44 [
    i32 130, label %34
    i32 131, label %39
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %37 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  store i32 0, i32* %17, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %42 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  store i32 0, i32* %17, align 4
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %39, %34
  br label %60

46:                                               ; preds = %26
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %58 [
    i32 130, label %48
    i32 131, label %53
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %51 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  store i32 0, i32* %17, align 4
  br label %59

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %56 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  store i32 0, i32* %17, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %53, %48
  br label %60

60:                                               ; preds = %59, %45
  br label %119

61:                                               ; preds = %7
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IIO_INTENSITY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %69 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %20, align 4
  br label %77

72:                                               ; preds = %61
  %73 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %74 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %20, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %20, align 4
  %79 = sub nsw i32 256, %78
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 %80, 1000000
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %18, align 4
  %85 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %86 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %87 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %84, %92
  %94 = sdiv i32 %83, %93
  store i32 %94, i32* %19, align 4
  %95 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %96 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IIO_INTENSITY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %77
  %101 = load i32, i32* %19, align 4
  %102 = icmp sgt i32 %101, 3
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = sdiv i32 %104, 5
  %106 = add nsw i32 %105, 3
  store i32 %106, i32* %19, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %19, align 4
  %109 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %110 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  br label %117

112:                                              ; preds = %77
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %115 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %107
  store i32 0, i32* %17, align 4
  br label %119

118:                                              ; preds = %7
  br label %119

119:                                              ; preds = %118, %117, %60
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %8, align 4
  br label %127

124:                                              ; preds = %119
  %125 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %126 = call i32 @tsl2772_invoke_change(%struct.iio_dev* %125)
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %122
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tsl2772_invoke_change(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
