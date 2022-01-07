; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_nau7802.c_nau7802_read_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.nau7802_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @nau7802_read_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau7802_read_irq(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nau7802_state*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.nau7802_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.nau7802_state* %11, %struct.nau7802_state** %8, align 8
  %12 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %13 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %12, i32 0, i32 2
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %16 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @enable_irq(i32 %19)
  %21 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %22 = call i32 @nau7802_sync(%struct.nau7802_state* %21)
  %23 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %24 = call i32 @nau7802_read_conversion(%struct.nau7802_state* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %54

28:                                               ; preds = %3
  %29 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %30 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %29, i32 0, i32 2
  %31 = call i32 @msecs_to_jiffies(i32 1000)
  %32 = call i32 @wait_for_completion_interruptible_timeout(i32* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %54

42:                                               ; preds = %38
  %43 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %44 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @disable_irq(i32 %47)
  %49 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %50 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %41, %27
  %55 = load %struct.nau7802_state*, %struct.nau7802_state** %8, align 8
  %56 = getelementptr inbounds %struct.nau7802_state, %struct.nau7802_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @disable_irq(i32 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %42
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.nau7802_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @nau7802_sync(%struct.nau7802_state*) #1

declare dso_local i32 @nau7802_read_conversion(%struct.nau7802_state*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
