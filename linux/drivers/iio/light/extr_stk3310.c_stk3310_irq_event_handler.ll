; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_irq_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_irq_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stk3310_data = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"register read failed\0A\00", align 1
@IIO_PROXIMITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to reset interrupts\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stk3310_irq_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_irq_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.stk3310_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %9, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %14 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.stk3310_data* %14, %struct.stk3310_data** %10, align 8
  %15 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %16 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %19 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regmap_field_read(i32 %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %26 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %31 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %2
  %35 = load i32, i32* @IIO_PROXIMITY, align 4
  %36 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %35, i32 1, i32 %36, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %49 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iio_push_event(%struct.iio_dev* %46, i32 %47, i32 %50)
  %52 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %53 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @regmap_field_write(i32 %54, i32 0)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %60 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %43
  %65 = load %struct.stk3310_data*, %struct.stk3310_data** %10, align 8
  %66 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
