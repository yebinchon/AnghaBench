; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_single_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_single_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8, i32 }
%struct.adis = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adis_single_conversion(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.adis*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.adis* @iio_device_get_drvdata(%struct.iio_dev* %12)
  store %struct.adis* %13, %struct.adis** %9, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.adis*, %struct.adis** %9, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 8
  %26 = call i32 @adis_read_reg(%struct.adis* %17, i32 %20, i32* %10, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %70

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.adis*, %struct.adis** %9, align 8
  %37 = call i32 @adis_check_status(%struct.adis* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %70

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 4
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 115
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @sign_extend32(i32 %50, i32 %55)
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %68

58:                                               ; preds = %42
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %59, %65
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %49
  %69 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %40, %29
  %71 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local %struct.adis* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adis_read_reg(%struct.adis*, i32, i32*, i32) #1

declare dso_local i32 @adis_check_status(%struct.adis*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
