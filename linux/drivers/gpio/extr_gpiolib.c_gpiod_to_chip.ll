; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_to_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_to_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gpio_chip* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc* %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca %struct.gpio_desc*, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %3, align 8
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %5 = icmp ne %struct.gpio_desc* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %8 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store %struct.gpio_chip* null, %struct.gpio_chip** %2, align 8
  br label %18

12:                                               ; preds = %6
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %16, align 8
  store %struct.gpio_chip* %17, %struct.gpio_chip** %2, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  ret %struct.gpio_chip* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
