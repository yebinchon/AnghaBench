; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.bmg160_data = type { i32, i32, i32 }

@BMG160_REG_XOUT_L = common dso_local global i32 0, align 4
@AXIS_MAX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bmg160_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.bmg160_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bmg160_data* %15, %struct.bmg160_data** %7, align 8
  %16 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %17 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %20 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BMG160_REG_XOUT_L, align 4
  %23 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %24 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AXIS_MAX, align 4
  %27 = mul nsw i32 %26, 2
  %28 = call i32 @regmap_bulk_read(i32 %21, i32 %22, i32 %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %30 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %37 = load %struct.bmg160_data*, %struct.bmg160_data** %7, align 8
  %38 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %41 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %34
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iio_trigger_notify_done(i32 %47)
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
