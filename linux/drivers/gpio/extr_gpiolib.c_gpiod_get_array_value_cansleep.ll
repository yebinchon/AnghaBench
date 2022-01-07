; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_get_array_value_cansleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_get_array_value_cansleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_array = type { i32 }

@extra_checks = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_get_array_value_cansleep(i32 %0, %struct.gpio_desc** %1, %struct.gpio_array* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_desc**, align 8
  %8 = alloca %struct.gpio_array*, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.gpio_desc** %1, %struct.gpio_desc*** %7, align 8
  store %struct.gpio_array* %2, %struct.gpio_array** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i32, i32* @extra_checks, align 4
  %11 = call i32 @might_sleep_if(i32 %10)
  %12 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %13 = icmp ne %struct.gpio_desc** %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %20 = load %struct.gpio_array*, %struct.gpio_array** %8, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @gpiod_get_array_value_complex(i32 0, i32 1, i32 %18, %struct.gpio_desc** %19, %struct.gpio_array* %20, i64* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @gpiod_get_array_value_complex(i32, i32, i32, %struct.gpio_desc**, %struct.gpio_array*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
