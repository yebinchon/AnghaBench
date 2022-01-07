; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_iio_request_update_kfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_iio_request_update_kfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.iio_kfifo = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_buffer*)* @iio_request_update_kfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_request_update_kfifo(%struct.iio_buffer* %0) #0 {
  %2 = alloca %struct.iio_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_kfifo*, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.iio_buffer*, %struct.iio_buffer** %2, align 8
  %6 = call %struct.iio_kfifo* @iio_to_kfifo(%struct.iio_buffer* %5)
  store %struct.iio_kfifo* %6, %struct.iio_kfifo** %4, align 8
  %7 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %8 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %11 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %16 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %15, i32 0, i32 2
  %17 = call i32 @kfifo_free(i32* %16)
  %18 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %19 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %20 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %24 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__iio_allocate_kfifo(%struct.iio_kfifo* %18, i32 %22, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %32 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %14
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %36 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %35, i32 0, i32 2
  %37 = call i32 @kfifo_reset_out(i32* %36)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.iio_kfifo*, %struct.iio_kfifo** %4, align 8
  %40 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.iio_kfifo* @iio_to_kfifo(%struct.iio_buffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @__iio_allocate_kfifo(%struct.iio_kfifo*, i32, i32) #1

declare dso_local i32 @kfifo_reset_out(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
