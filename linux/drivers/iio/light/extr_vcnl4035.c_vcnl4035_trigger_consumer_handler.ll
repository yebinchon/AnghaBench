; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_trigger_consumer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_trigger_consumer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.vcnl4035_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VCNL4035_ALS_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Trigger consumer can't read from sensor.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vcnl4035_trigger_consumer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_trigger_consumer_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.vcnl4035_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %12, %struct.iio_poll_func** %5, align 8
  %13 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %14 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %13, i32 0, i32 0
  %15 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.vcnl4035_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.vcnl4035_data* %17, %struct.vcnl4035_data** %7, align 8
  %18 = call i32 @ALIGN(i32 4, i32 4)
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %7, align 8
  %24 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VCNL4035_ALS_DATA, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %22)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %7, align 8
  %32 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = call i32 @iio_get_time_ns(%struct.iio_dev* %38)
  %40 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %37, i32* %22, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iio_trigger_notify_done(i32 %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  %47 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 %46
}

declare dso_local %struct.vcnl4035_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
