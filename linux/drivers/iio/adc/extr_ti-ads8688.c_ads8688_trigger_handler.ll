; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads8688.c_ads8688_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, i32 }

@ADS8688_MAX_CHANNELS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ads8688_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads8688_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
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
  %16 = load i32, i32* @ADS8688_MAX_CHANNELS, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 1
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ads8688_read(%struct.iio_dev* %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %20, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %35, %34
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = call i32 @iio_get_time_ns(%struct.iio_dev* %49)
  %51 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %48, i32* %20, i32 %50)
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iio_trigger_notify_done(i32 %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_bit(i32, i32) #2

declare dso_local i32 @ads8688_read(%struct.iio_dev*, i32) #2

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #2

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #2

declare dso_local i32 @iio_trigger_notify_done(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
