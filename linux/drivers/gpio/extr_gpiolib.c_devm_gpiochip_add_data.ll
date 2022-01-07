; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_devm_gpiochip_add_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_devm_gpiochip_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_chip = type { i32 }

@devm_gpio_chip_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_gpiochip_add_data(%struct.device* %0, %struct.gpio_chip* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gpio_chip**, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @devm_gpio_chip_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gpio_chip** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.gpio_chip** %12, %struct.gpio_chip*** %8, align 8
  %13 = load %struct.gpio_chip**, %struct.gpio_chip*** %8, align 8
  %14 = icmp ne %struct.gpio_chip** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @gpiochip_add_data(%struct.gpio_chip* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.gpio_chip**, %struct.gpio_chip*** %8, align 8
  %26 = call i32 @devres_free(%struct.gpio_chip** %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %30 = load %struct.gpio_chip**, %struct.gpio_chip*** %8, align 8
  store %struct.gpio_chip* %29, %struct.gpio_chip** %30, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.gpio_chip**, %struct.gpio_chip*** %8, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.gpio_chip** %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %24, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.gpio_chip** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, i8*) #1

declare dso_local i32 @devres_free(%struct.gpio_chip**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.gpio_chip**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
