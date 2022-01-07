; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_configure_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_configure_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rescale = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.iio_chan_spec }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, i32 }

@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"source channel does not support raw/scale\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rescale*)* @rescale_configure_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescale_configure_channel(%struct.device* %0, %struct.rescale* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rescale*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rescale* %1, %struct.rescale** %5, align 8
  %8 = load %struct.rescale*, %struct.rescale** %5, align 8
  %9 = getelementptr inbounds %struct.rescale, %struct.rescale* %8, i32 0, i32 3
  store %struct.iio_chan_spec* %9, %struct.iio_chan_spec** %6, align 8
  %10 = load %struct.rescale*, %struct.rescale** %5, align 8
  %11 = getelementptr inbounds %struct.rescale, %struct.rescale* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %13, align 8
  store %struct.iio_chan_spec* %14, %struct.iio_chan_spec** %7, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rescale*, %struct.rescale** %5, align 8
  %23 = getelementptr inbounds %struct.rescale, %struct.rescale* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rescale*, %struct.rescale** %5, align 8
  %28 = getelementptr inbounds %struct.rescale, %struct.rescale* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %35 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %36 = call i32 @iio_channel_has_info(%struct.iio_chan_spec* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %40 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %41 = call i32 @iio_channel_has_info(%struct.iio_chan_spec* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %38
  %49 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = or i32 %50, %52
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %57 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %58 = call i64 @iio_channel_has_available(%struct.iio_chan_spec* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %48
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @iio_channel_has_info(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @iio_channel_has_available(%struct.iio_chan_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
