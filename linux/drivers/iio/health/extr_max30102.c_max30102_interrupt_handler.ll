; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.max30102_data = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max30102_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.max30102_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.max30102_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.max30102_data* %13, %struct.max30102_data** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bitmap_weight(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %22 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  br label %24

24:                                               ; preds = %40, %2
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %29 = call i32 @max30102_fifo_count(%struct.max30102_data* %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ true, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %50

33:                                               ; preds = %31
  %34 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @max30102_read_measurement(%struct.max30102_data* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %50

40:                                               ; preds = %33
  %41 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %42 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %45 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iio_push_to_buffers(i32 %43, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %24

50:                                               ; preds = %39, %31
  %51 = load %struct.max30102_data*, %struct.max30102_data** %6, align 8
  %52 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local %struct.max30102_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max30102_fifo_count(%struct.max30102_data*) #1

declare dso_local i32 @max30102_read_measurement(%struct.max30102_data*, i32) #1

declare dso_local i32 @iio_push_to_buffers(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
