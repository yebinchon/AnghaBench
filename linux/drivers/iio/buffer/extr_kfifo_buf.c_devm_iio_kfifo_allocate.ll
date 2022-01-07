; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_devm_iio_kfifo_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_kfifo_buf.c_devm_iio_kfifo_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.device = type { i32 }

@devm_iio_kfifo_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.device* %0) #0 {
  %2 = alloca %struct.iio_buffer*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iio_buffer**, align 8
  %5 = alloca %struct.iio_buffer*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @devm_iio_kfifo_release, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.iio_buffer** @devres_alloc(i32 %6, i32 8, i32 %7)
  store %struct.iio_buffer** %8, %struct.iio_buffer*** %4, align 8
  %9 = load %struct.iio_buffer**, %struct.iio_buffer*** %4, align 8
  %10 = icmp ne %struct.iio_buffer** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.iio_buffer* null, %struct.iio_buffer** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = call %struct.iio_buffer* (...) @iio_kfifo_allocate()
  store %struct.iio_buffer* %13, %struct.iio_buffer** %5, align 8
  %14 = load %struct.iio_buffer*, %struct.iio_buffer** %5, align 8
  %15 = icmp ne %struct.iio_buffer* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.iio_buffer*, %struct.iio_buffer** %5, align 8
  %18 = load %struct.iio_buffer**, %struct.iio_buffer*** %4, align 8
  store %struct.iio_buffer* %17, %struct.iio_buffer** %18, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.iio_buffer**, %struct.iio_buffer*** %4, align 8
  %21 = call i32 @devres_add(%struct.device* %19, %struct.iio_buffer** %20)
  br label %25

22:                                               ; preds = %12
  %23 = load %struct.iio_buffer**, %struct.iio_buffer*** %4, align 8
  %24 = call i32 @devres_free(%struct.iio_buffer** %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.iio_buffer*, %struct.iio_buffer** %5, align 8
  store %struct.iio_buffer* %26, %struct.iio_buffer** %2, align 8
  br label %27

27:                                               ; preds = %25, %11
  %28 = load %struct.iio_buffer*, %struct.iio_buffer** %2, align 8
  ret %struct.iio_buffer* %28
}

declare dso_local %struct.iio_buffer** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.iio_buffer* @iio_kfifo_allocate(...) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.iio_buffer**) #1

declare dso_local i32 @devres_free(%struct.iio_buffer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
