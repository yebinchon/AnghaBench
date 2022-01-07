; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rc5t583.c_rc5t583_gpio_dir_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rc5t583.c_rc5t583_gpio_dir_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rc5t583_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@RC5T583_GPIO_IOSEL = common dso_local global i32 0, align 4
@RC5T583_GPIO_PGSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @rc5t583_gpio_dir_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_gpio_dir_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rc5t583_gpio*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.rc5t583_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.rc5t583_gpio* %12, %struct.rc5t583_gpio** %8, align 8
  %13 = load %struct.rc5t583_gpio*, %struct.rc5t583_gpio** %8, align 8
  %14 = getelementptr inbounds %struct.rc5t583_gpio, %struct.rc5t583_gpio* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rc5t583_gpio_set(%struct.gpio_chip* %18, i32 %19, i32 %20)
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = load i32, i32* @RC5T583_GPIO_IOSEL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = call i32 @rc5t583_set_bits(%struct.device* %22, i32 %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = load i32, i32* @RC5T583_GPIO_PGSEL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = call i32 @rc5t583_clear_bits(%struct.device* %32, i32 %33, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.rc5t583_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @rc5t583_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @rc5t583_set_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rc5t583_clear_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
