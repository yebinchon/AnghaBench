; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c___devm_iio_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c___devm_iio_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.module = type { i32 }

@devm_iio_device_unreg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__devm_iio_device_register(%struct.device* %0, %struct.iio_dev* %1, %struct.module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.iio_dev**, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %10 = load i32, i32* @devm_iio_device_unreg, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.iio_dev** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.iio_dev** %12, %struct.iio_dev*** %8, align 8
  %13 = load %struct.iio_dev**, %struct.iio_dev*** %8, align 8
  %14 = icmp ne %struct.iio_dev** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = load %struct.iio_dev**, %struct.iio_dev*** %8, align 8
  store %struct.iio_dev* %19, %struct.iio_dev** %20, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = load %struct.module*, %struct.module** %7, align 8
  %23 = call i32 @__iio_device_register(%struct.iio_dev* %21, %struct.module* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.iio_dev**, %struct.iio_dev*** %8, align 8
  %29 = call i32 @devres_add(%struct.device* %27, %struct.iio_dev** %28)
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.iio_dev**, %struct.iio_dev*** %8, align 8
  %32 = call i32 @devres_free(%struct.iio_dev** %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.iio_dev** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @__iio_device_register(%struct.iio_dev*, %struct.module*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.iio_dev**) #1

declare dso_local i32 @devres_free(%struct.iio_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
