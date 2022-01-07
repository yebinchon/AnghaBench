; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_bus_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_bus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_bus_device = type { i32, i32, %struct.module*, %struct.ipack_bus_ops*, %struct.device* }
%struct.device = type { i32 }
%struct.ipack_bus_ops = type { i32 }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ipack_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipack_bus_device* @ipack_bus_register(%struct.device* %0, i32 %1, %struct.ipack_bus_ops* %2, %struct.module* %3) #0 {
  %5 = alloca %struct.ipack_bus_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipack_bus_ops*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipack_bus_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ipack_bus_ops* %2, %struct.ipack_bus_ops** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ipack_bus_device* @kzalloc(i32 32, i32 %12)
  store %struct.ipack_bus_device* %13, %struct.ipack_bus_device** %11, align 8
  %14 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %15 = icmp ne %struct.ipack_bus_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.ipack_bus_device* null, %struct.ipack_bus_device** %5, align 8
  br label %42

17:                                               ; preds = %4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @ida_simple_get(i32* @ipack_ida, i32 0, i32 0, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %24 = call i32 @kfree(%struct.ipack_bus_device* %23)
  store %struct.ipack_bus_device* null, %struct.ipack_bus_device** %5, align 8
  br label %42

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %28 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %31 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %30, i32 0, i32 4
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %34 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ipack_bus_ops*, %struct.ipack_bus_ops** %8, align 8
  %36 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %37 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %36, i32 0, i32 3
  store %struct.ipack_bus_ops* %35, %struct.ipack_bus_ops** %37, align 8
  %38 = load %struct.module*, %struct.module** %9, align 8
  %39 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  %40 = getelementptr inbounds %struct.ipack_bus_device, %struct.ipack_bus_device* %39, i32 0, i32 2
  store %struct.module* %38, %struct.module** %40, align 8
  %41 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %11, align 8
  store %struct.ipack_bus_device* %41, %struct.ipack_bus_device** %5, align 8
  br label %42

42:                                               ; preds = %25, %22, %16
  %43 = load %struct.ipack_bus_device*, %struct.ipack_bus_device** %5, align 8
  ret %struct.ipack_bus_device* %43
}

declare dso_local %struct.ipack_bus_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ipack_bus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
