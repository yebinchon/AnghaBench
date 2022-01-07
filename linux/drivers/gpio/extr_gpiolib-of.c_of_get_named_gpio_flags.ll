; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_get_named_gpio_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_get_named_gpio_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.gpio_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_get_named_gpio_flags(%struct.device_node* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gpio_desc*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %11, i8* %12, i32 %13, i32* %14)
  store %struct.gpio_desc* %15, %struct.gpio_desc** %10, align 8
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %17 = call i64 @IS_ERR(%struct.gpio_desc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.gpio_desc* %20)
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %24 = call i32 @desc_to_gpio(%struct.gpio_desc* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
