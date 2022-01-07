; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sun4i_gpadc_iio = type { i32, i32, i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*, i32)* @sun4i_gpadc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_read(%struct.iio_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sun4i_gpadc_iio*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev* %11)
  store %struct.sun4i_gpadc_iio* %12, %struct.sun4i_gpadc_iio** %9, align 8
  %13 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %9, align 8
  %14 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @sun4i_prepare_for_irq(%struct.iio_dev* %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %56

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @enable_irq(i32 %24)
  %26 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %9, align 8
  %27 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %26, i32 0, i32 4
  %28 = call i32 @msecs_to_jiffies(i32 1000)
  %29 = call i32 @wait_for_completion_timeout(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %56

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %9, align 8
  %37 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %9, align 8
  %42 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %9, align 8
  %47 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40
  store i32 0, i32* %10, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pm_runtime_mark_last_busy(i32 %54)
  br label %56

56:                                               ; preds = %50, %31, %22
  %57 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_put_autosuspend(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @disable_irq(i32 %62)
  %64 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %9, align 8
  %65 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %64, i32 0, i32 3
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.sun4i_gpadc_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sun4i_prepare_for_irq(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
