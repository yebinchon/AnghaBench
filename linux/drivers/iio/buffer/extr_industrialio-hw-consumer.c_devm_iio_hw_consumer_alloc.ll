; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-hw-consumer.c_devm_iio_hw_consumer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-hw-consumer.c_devm_iio_hw_consumer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_hw_consumer = type { i32 }
%struct.device = type { i32 }

@devm_iio_hw_consumer_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_hw_consumer* @devm_iio_hw_consumer_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.iio_hw_consumer*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iio_hw_consumer**, align 8
  %5 = alloca %struct.iio_hw_consumer*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @devm_iio_hw_consumer_release, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.iio_hw_consumer** @devres_alloc(i32 %6, i32 8, i32 %7)
  store %struct.iio_hw_consumer** %8, %struct.iio_hw_consumer*** %4, align 8
  %9 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %4, align 8
  %10 = icmp ne %struct.iio_hw_consumer** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.iio_hw_consumer* null, %struct.iio_hw_consumer** %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.iio_hw_consumer* @iio_hw_consumer_alloc(%struct.device* %13)
  store %struct.iio_hw_consumer* %14, %struct.iio_hw_consumer** %5, align 8
  %15 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %5, align 8
  %16 = call i64 @IS_ERR(%struct.iio_hw_consumer* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %4, align 8
  %20 = call i32 @devres_free(%struct.iio_hw_consumer** %19)
  br label %27

21:                                               ; preds = %12
  %22 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %5, align 8
  %23 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %4, align 8
  store %struct.iio_hw_consumer* %22, %struct.iio_hw_consumer** %23, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.iio_hw_consumer**, %struct.iio_hw_consumer*** %4, align 8
  %26 = call i32 @devres_add(%struct.device* %24, %struct.iio_hw_consumer** %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %5, align 8
  store %struct.iio_hw_consumer* %28, %struct.iio_hw_consumer** %2, align 8
  br label %29

29:                                               ; preds = %27, %11
  %30 = load %struct.iio_hw_consumer*, %struct.iio_hw_consumer** %2, align 8
  ret %struct.iio_hw_consumer* %30
}

declare dso_local %struct.iio_hw_consumer** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.iio_hw_consumer* @iio_hw_consumer_alloc(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iio_hw_consumer*) #1

declare dso_local i32 @devres_free(%struct.iio_hw_consumer**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.iio_hw_consumer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
