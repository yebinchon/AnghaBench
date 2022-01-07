; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiochip_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { %struct.gpio_device* }
%struct.gpio_device = type { i64, %struct.gpio_desc* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip* %0, i64 %1) #0 {
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gpio_device*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 0
  %9 = load %struct.gpio_device*, %struct.gpio_device** %8, align 8
  store %struct.gpio_device* %9, %struct.gpio_device** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.gpio_device*, %struct.gpio_device** %6, align 8
  %12 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.gpio_desc* @ERR_PTR(i32 %17)
  store %struct.gpio_desc* %18, %struct.gpio_desc** %3, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.gpio_device*, %struct.gpio_device** %6, align 8
  %21 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %20, i32 0, i32 1
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %22, i64 %23
  store %struct.gpio_desc* %24, %struct.gpio_desc** %3, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  ret %struct.gpio_desc* %26
}

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
