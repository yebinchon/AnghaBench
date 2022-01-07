; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-polldev.c_devm_input_allocate_polled_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-polldev.c_devm_input_allocate_polled_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.input_polled_devres = type { %struct.input_polled_dev* }

@devm_input_polldev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_polled_dev* @devm_input_allocate_polled_device(%struct.device* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.input_polled_dev*, align 8
  %5 = alloca %struct.input_polled_devres*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @devm_input_polldev_release, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.input_polled_devres* @devres_alloc(i32 %6, i32 8, i32 %7)
  store %struct.input_polled_devres* %8, %struct.input_polled_devres** %5, align 8
  %9 = load %struct.input_polled_devres*, %struct.input_polled_devres** %5, align 8
  %10 = icmp ne %struct.input_polled_devres* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.input_polled_dev* null, %struct.input_polled_dev** %2, align 8
  br label %35

12:                                               ; preds = %1
  %13 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %13, %struct.input_polled_dev** %4, align 8
  %14 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %15 = icmp ne %struct.input_polled_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.input_polled_devres*, %struct.input_polled_devres** %5, align 8
  %18 = call i32 @devres_free(%struct.input_polled_devres* %17)
  store %struct.input_polled_dev* null, %struct.input_polled_dev** %2, align 8
  br label %35

19:                                               ; preds = %12
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.device* %20, %struct.device** %25, align 8
  %26 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  %29 = load %struct.input_polled_devres*, %struct.input_polled_devres** %5, align 8
  %30 = getelementptr inbounds %struct.input_polled_devres, %struct.input_polled_devres* %29, i32 0, i32 0
  store %struct.input_polled_dev* %28, %struct.input_polled_dev** %30, align 8
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.input_polled_devres*, %struct.input_polled_devres** %5, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.input_polled_devres* %32)
  %34 = load %struct.input_polled_dev*, %struct.input_polled_dev** %4, align 8
  store %struct.input_polled_dev* %34, %struct.input_polled_dev** %2, align 8
  br label %35

35:                                               ; preds = %19, %16, %11
  %36 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  ret %struct.input_polled_dev* %36
}

declare dso_local %struct.input_polled_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @devres_free(%struct.input_polled_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.input_polled_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
