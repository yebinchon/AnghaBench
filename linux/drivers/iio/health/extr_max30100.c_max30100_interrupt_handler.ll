; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max30100_data = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max30100_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30100_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.max30100_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.max30100_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.max30100_data* %12, %struct.max30100_data** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %14 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %21 = call i32 @max30100_fifo_count(%struct.max30100_data* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ true, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %27 = call i32 @max30100_read_measurement(%struct.max30100_data* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %41

31:                                               ; preds = %25
  %32 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %33 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %36 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iio_push_to_buffers(i32 %34, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %16

41:                                               ; preds = %30, %23
  %42 = load %struct.max30100_data*, %struct.max30100_data** %6, align 8
  %43 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local %struct.max30100_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max30100_fifo_count(%struct.max30100_data*) #1

declare dso_local i32 @max30100_read_measurement(%struct.max30100_data*) #1

declare dso_local i32 @iio_push_to_buffers(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
