; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_iio_kfifo_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_iio_kfifo_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32, i32* }
%struct.iio_kfifo = type { i32, %struct.iio_buffer, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@kfifo_access_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_buffer* @iio_kfifo_allocate() #0 {
  %1 = alloca %struct.iio_buffer*, align 8
  %2 = alloca %struct.iio_kfifo*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.iio_kfifo* @kzalloc(i32 32, i32 %3)
  store %struct.iio_kfifo* %4, %struct.iio_kfifo** %2, align 8
  %5 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %6 = icmp ne %struct.iio_kfifo* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.iio_buffer* null, %struct.iio_buffer** %1, align 8
  br label %25

8:                                                ; preds = %0
  %9 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %10 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %12 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %11, i32 0, i32 1
  %13 = call i32 @iio_buffer_init(%struct.iio_buffer* %12)
  %14 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %15 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %15, i32 0, i32 1
  store i32* @kfifo_access_funcs, i32** %16, align 8
  %17 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %18 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %21 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.iio_kfifo*, %struct.iio_kfifo** %2, align 8
  %24 = getelementptr inbounds %struct.iio_kfifo, %struct.iio_kfifo* %23, i32 0, i32 1
  store %struct.iio_buffer* %24, %struct.iio_buffer** %1, align 8
  br label %25

25:                                               ; preds = %8, %7
  %26 = load %struct.iio_buffer*, %struct.iio_buffer** %1, align 8
  ret %struct.iio_buffer* %26
}

declare dso_local %struct.iio_kfifo* @kzalloc(i32, i32) #1

declare dso_local i32 @iio_buffer_init(%struct.iio_buffer*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
