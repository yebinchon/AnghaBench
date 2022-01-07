; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_devm_input_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_devm_input_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.input_devres = type { %struct.input_dev* }

@devm_input_device_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_devres*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @devm_input_device_release, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.input_devres* @devres_alloc(i32 %6, i32 8, i32 %7)
  store %struct.input_devres* %8, %struct.input_devres** %5, align 8
  %9 = load %struct.input_devres*, %struct.input_devres** %5, align 8
  %10 = icmp ne %struct.input_devres* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.input_dev* null, %struct.input_dev** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %13, %struct.input_dev** %4, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = icmp ne %struct.input_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.input_devres*, %struct.input_devres** %5, align 8
  %18 = call i32 @devres_free(%struct.input_devres* %17)
  store %struct.input_dev* null, %struct.input_dev** %2, align 8
  br label %33

19:                                               ; preds = %12
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %20, %struct.device** %23, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = load %struct.input_devres*, %struct.input_devres** %5, align 8
  %28 = getelementptr inbounds %struct.input_devres, %struct.input_devres* %27, i32 0, i32 0
  store %struct.input_dev* %26, %struct.input_dev** %28, align 8
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.input_devres*, %struct.input_devres** %5, align 8
  %31 = call i32 @devres_add(%struct.device* %29, %struct.input_devres* %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  store %struct.input_dev* %32, %struct.input_dev** %2, align 8
  br label %33

33:                                               ; preds = %19, %16, %11
  %34 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  ret %struct.input_dev* %34
}

declare dso_local %struct.input_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @devres_free(%struct.input_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.input_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
