; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@extra_checks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpiod_free(%struct.gpio_desc* %0) #0 {
  %2 = alloca %struct.gpio_desc*, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %2, align 8
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %4 = icmp ne %struct.gpio_desc* %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %7 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %12 = call i64 @gpiod_free_commit(%struct.gpio_desc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %16 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @module_put(i32 %19)
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %22 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @put_device(i32* %24)
  br label %29

26:                                               ; preds = %10, %5, %1
  %27 = load i32, i32* @extra_checks, align 4
  %28 = call i32 @WARN_ON(i32 %27)
  br label %29

29:                                               ; preds = %26, %14
  ret void
}

declare dso_local i64 @gpiod_free_commit(%struct.gpio_desc*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
