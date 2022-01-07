; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_detector_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.envelope = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @envelope_detector_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envelope_detector_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.envelope*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.envelope* @iio_priv(%struct.iio_dev* %14)
  store %struct.envelope* %15, %struct.envelope** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %80 [
    i64 129, label %17
    i64 128, label %73
  ]

17:                                               ; preds = %5
  %18 = load %struct.envelope*, %struct.envelope** %12, align 8
  %19 = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 4
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.envelope*, %struct.envelope** %12, align 8
  %22 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.envelope*, %struct.envelope** %12, align 8
  %25 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.envelope*, %struct.envelope** %12, align 8
  %29 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.envelope*, %struct.envelope** %12, align 8
  %31 = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 -1, %32
  %34 = load %struct.envelope*, %struct.envelope** %12, align 8
  %35 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.envelope*, %struct.envelope** %12, align 8
  %37 = call i32 @envelope_detector_setup_compare(%struct.envelope* %36)
  %38 = load %struct.envelope*, %struct.envelope** %12, align 8
  %39 = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 6
  %40 = call i32 @wait_for_completion(i32* %39)
  %41 = load %struct.envelope*, %struct.envelope** %12, align 8
  %42 = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %17
  %46 = load %struct.envelope*, %struct.envelope** %12, align 8
  %47 = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  br label %83

49:                                               ; preds = %17
  %50 = load %struct.envelope*, %struct.envelope** %12, align 8
  %51 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.envelope*, %struct.envelope** %12, align 8
  %56 = getelementptr inbounds %struct.envelope, %struct.envelope* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.envelope*, %struct.envelope** %12, align 8
  %59 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.envelope*, %struct.envelope** %12, align 8
  %64 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %54
  %67 = phi i32 [ %61, %54 ], [ %65, %62 ]
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.envelope*, %struct.envelope** %12, align 8
  %70 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 4
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %72, i32* %6, align 4
  br label %88

73:                                               ; preds = %5
  %74 = load %struct.envelope*, %struct.envelope** %12, align 8
  %75 = getelementptr inbounds %struct.envelope, %struct.envelope* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @iio_read_channel_scale(i32 %76, i32* %77, i32* %78)
  store i32 %79, i32* %6, align 4
  br label %88

80:                                               ; preds = %5
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %88

83:                                               ; preds = %45
  %84 = load %struct.envelope*, %struct.envelope** %12, align 8
  %85 = getelementptr inbounds %struct.envelope, %struct.envelope* %84, i32 0, i32 4
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %80, %73, %66
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.envelope* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @envelope_detector_setup_compare(%struct.envelope*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_read_channel_scale(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
