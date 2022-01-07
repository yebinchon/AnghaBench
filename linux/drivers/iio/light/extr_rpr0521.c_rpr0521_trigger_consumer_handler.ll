; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_trigger_consumer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_trigger_consumer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i64, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.rpr0521_data = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@RPR0521_REG_PXS_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Trigger consumer can't read from sensor.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rpr0521_trigger_consumer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_trigger_consumer_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.rpr0521_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %11, %struct.iio_poll_func** %5, align 8
  %12 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %13 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %12, i32 0, i32 1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.rpr0521_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.rpr0521_data* %16, %struct.rpr0521_data** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call i64 @iio_trigger_using_own(%struct.iio_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.rpr0521_data*, %struct.rpr0521_data** %7, align 8
  %22 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.rpr0521_data*, %struct.rpr0521_data** %7, align 8
  %27 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %30 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.rpr0521_data*, %struct.rpr0521_data** %7, align 8
  %32 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %20, %2
  %34 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %35 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = call i64 @iio_get_time_ns(%struct.iio_dev* %39)
  %41 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %42 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.rpr0521_data*, %struct.rpr0521_data** %7, align 8
  %45 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RPR0521_REG_PXS_DATA, align 4
  %48 = bitcast [16 x i32]* %9 to i32**
  %49 = call i32 @regmap_bulk_read(i32 %46, i32 %47, i32** %48, i32 7)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %55 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %56 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %53, i32* %54, i64 %57)
  br label %65

59:                                               ; preds = %43
  %60 = load %struct.rpr0521_data*, %struct.rpr0521_data** %7, align 8
  %61 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %67 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iio_trigger_notify_done(i32 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local %struct.rpr0521_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_trigger_using_own(%struct.iio_dev*) #1

declare dso_local i64 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32**, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
