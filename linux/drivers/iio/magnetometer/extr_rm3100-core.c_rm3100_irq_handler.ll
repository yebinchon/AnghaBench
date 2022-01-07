; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rm3100_data = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"device mode out of control, current mode: %d\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rm3100_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm3100_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.rm3100_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.iio_dev*
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.rm3100_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.rm3100_data* %10, %struct.rm3100_data** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %23 [
    i32 128, label %14
    i32 129, label %18
  ]

14:                                               ; preds = %2
  %15 = load %struct.rm3100_data*, %struct.rm3100_data** %6, align 8
  %16 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %15, i32 0, i32 1
  %17 = call i32 @complete(i32* %16)
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.rm3100_data*, %struct.rm3100_data** %6, align 8
  %20 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iio_trigger_poll(i32 %21)
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %23, %18, %14
  %33 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %33
}

declare dso_local %struct.rm3100_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
