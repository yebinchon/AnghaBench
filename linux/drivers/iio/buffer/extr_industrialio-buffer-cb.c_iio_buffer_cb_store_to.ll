; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-cb.c_iio_buffer_cb_store_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-cb.c_iio_buffer_cb_store_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.iio_cb_buffer = type { i32 (i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_buffer*, i8*)* @iio_buffer_cb_store_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_buffer_cb_store_to(%struct.iio_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_cb_buffer*, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.iio_buffer*, %struct.iio_buffer** %3, align 8
  %7 = call %struct.iio_cb_buffer* @buffer_to_cb_buffer(%struct.iio_buffer* %6)
  store %struct.iio_cb_buffer* %7, %struct.iio_cb_buffer** %5, align 8
  %8 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %8, i32 0, i32 0
  %10 = load i32 (i8*, i32)*, i32 (i8*, i32)** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.iio_cb_buffer*, %struct.iio_cb_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.iio_cb_buffer, %struct.iio_cb_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 %10(i8* %11, i32 %14)
  ret i32 %15
}

declare dso_local %struct.iio_cb_buffer* @buffer_to_cb_buffer(%struct.iio_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
