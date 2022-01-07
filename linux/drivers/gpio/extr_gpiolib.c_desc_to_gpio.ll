; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_desc_to_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_desc_to_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.gpio_desc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @desc_to_gpio(%struct.gpio_desc* %0) #0 {
  %2 = alloca %struct.gpio_desc*, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %2, align 8
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %4 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %2, align 8
  %11 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %15 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %14, i64 0
  %16 = ptrtoint %struct.gpio_desc* %9 to i64
  %17 = ptrtoint %struct.gpio_desc* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = add nsw i64 %8, %19
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
