; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, %struct.iio_buffer* }
%struct.iio_buffer = type { i32, i32 }
%struct.poll_table_struct = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_buffer_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = load %struct.iio_buffer*, %struct.iio_buffer** %12, align 8
  store %struct.iio_buffer* %13, %struct.iio_buffer** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %20 = icmp eq %struct.iio_buffer* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %40

22:                                               ; preds = %18
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %24, i32 0, i32 1
  %26 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %27 = call i32 @poll_wait(%struct.file* %23, i32* %25, %struct.poll_table_struct* %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %30 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @iio_buffer_ready(%struct.iio_dev* %28, %struct.iio_buffer* %29, i32 %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* @EPOLLIN, align 4
  %37 = load i32, i32* @EPOLLRDNORM, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i64 @iio_buffer_ready(%struct.iio_dev*, %struct.iio_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
