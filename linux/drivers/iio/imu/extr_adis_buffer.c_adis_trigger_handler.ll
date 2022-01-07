; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_buffer.c_adis_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_buffer.c_adis_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.adis = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i32, i64* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ADIS_REG_PAGE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read data: %d\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adis_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_poll_func*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.adis*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %11, %struct.iio_poll_func** %6, align 8
  %12 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %13 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %12, i32 0, i32 1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  store %struct.iio_dev* %14, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.adis* @iio_device_get_drvdata(%struct.iio_dev* %15)
  store %struct.adis* %16, %struct.adis** %8, align 8
  %17 = load %struct.adis*, %struct.adis** %8, align 8
  %18 = getelementptr inbounds %struct.adis, %struct.adis* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = load %struct.adis*, %struct.adis** %8, align 8
  %26 = getelementptr inbounds %struct.adis, %struct.adis* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load %struct.adis*, %struct.adis** %8, align 8
  %33 = getelementptr inbounds %struct.adis, %struct.adis* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.adis*, %struct.adis** %8, align 8
  %36 = getelementptr inbounds %struct.adis, %struct.adis* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load i32, i32* @ADIS_REG_PAGE_ID, align 4
  %41 = call i64 @ADIS_WRITE_REG(i32 %40)
  %42 = load %struct.adis*, %struct.adis** %8, align 8
  %43 = getelementptr inbounds %struct.adis, %struct.adis* %42, i32 0, i32 6
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %41, i64* %45, align 8
  %46 = load %struct.adis*, %struct.adis** %8, align 8
  %47 = getelementptr inbounds %struct.adis, %struct.adis* %46, i32 0, i32 6
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.adis*, %struct.adis** %8, align 8
  %51 = getelementptr inbounds %struct.adis, %struct.adis* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.adis*, %struct.adis** %8, align 8
  %54 = getelementptr inbounds %struct.adis, %struct.adis* %53, i32 0, i32 6
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @spi_write(%struct.TYPE_5__* %52, i64* %55, i32 2)
  br label %57

57:                                               ; preds = %39, %31
  br label %58

58:                                               ; preds = %57, %24
  %59 = load %struct.adis*, %struct.adis** %8, align 8
  %60 = getelementptr inbounds %struct.adis, %struct.adis* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.adis*, %struct.adis** %8, align 8
  %63 = getelementptr inbounds %struct.adis, %struct.adis* %62, i32 0, i32 5
  %64 = call i32 @spi_sync(%struct.TYPE_5__* %61, i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load %struct.adis*, %struct.adis** %8, align 8
  %69 = getelementptr inbounds %struct.adis, %struct.adis* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %58
  %75 = load %struct.adis*, %struct.adis** %8, align 8
  %76 = getelementptr inbounds %struct.adis, %struct.adis* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.adis*, %struct.adis** %8, align 8
  %83 = getelementptr inbounds %struct.adis, %struct.adis* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.adis*, %struct.adis** %8, align 8
  %85 = getelementptr inbounds %struct.adis, %struct.adis* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %89 = load %struct.adis*, %struct.adis** %8, align 8
  %90 = getelementptr inbounds %struct.adis, %struct.adis* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %93 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %88, i32 %91, i32 %94)
  %96 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @iio_trigger_notify_done(i32 %98)
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %87, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.adis* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ADIS_WRITE_REG(i32) #1

declare dso_local i32 @spi_write(%struct.TYPE_5__*, i64*, i32) #1

declare dso_local i32 @spi_sync(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
