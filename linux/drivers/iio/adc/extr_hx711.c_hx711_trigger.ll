; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hx711_data = type { i32, i32* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hx711_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_trigger(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.hx711_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %16 = call %struct.hx711_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.hx711_data* %16, %struct.hx711_data** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.hx711_data*, %struct.hx711_data** %7, align 8
  %18 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hx711_data*, %struct.hx711_data** %7, align 8
  %21 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memset(i32* %22, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %57, %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @test_bit(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %57

38:                                               ; preds = %30
  %39 = load %struct.hx711_data*, %struct.hx711_data** %7, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hx711_reset_read(%struct.hx711_data* %39, i32 %47)
  %49 = load %struct.hx711_data*, %struct.hx711_data** %7, align 8
  %50 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %38, %37
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = load %struct.hx711_data*, %struct.hx711_data** %7, align 8
  %63 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %66 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %61, i32* %64, i32 %67)
  %69 = load %struct.hx711_data*, %struct.hx711_data** %7, align 8
  %70 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @iio_trigger_notify_done(i32 %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local %struct.hx711_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @hx711_reset_read(%struct.hx711_data*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
