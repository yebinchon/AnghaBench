; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SX9500_REG_IRQ_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"i2c transfer error in irq\0A\00", align 1
@SX9500_CLOSE_IRQ = common dso_local global i32 0, align 4
@SX9500_FAR_IRQ = common dso_local global i32 0, align 4
@SX9500_CONVDONE_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sx9500_irq_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.sx9500_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.sx9500_data* %12, %struct.sx9500_data** %6, align 8
  %13 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %14 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %17 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SX9500_REG_IRQ_SRC, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %8)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %25 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %49

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SX9500_CLOSE_IRQ, align 4
  %32 = load i32, i32* @SX9500_FAR_IRQ, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = call i32 @sx9500_push_events(%struct.iio_dev* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SX9500_CONVDONE_IRQ, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %46 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %45, i32 0, i32 1
  %47 = call i32 @complete(i32* %46)
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.sx9500_data*, %struct.sx9500_data** %6, align 8
  %51 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %53
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sx9500_push_events(%struct.iio_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
