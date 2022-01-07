; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@INOUTSEL = common dso_local global i32 0, align 4
@OUTDT = common dso_local global i32 0, align 4
@INDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @gpio_rcar_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_rcar_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @BIT(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call i32 @gpiochip_get_data(%struct.gpio_chip* %9)
  %11 = load i32, i32* @INOUTSEL, align 4
  %12 = call i32 @gpio_rcar_read(i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %18 = call i32 @gpiochip_get_data(%struct.gpio_chip* %17)
  %19 = load i32, i32* @OUTDT, align 4
  %20 = call i32 @gpio_rcar_read(i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = call i32 @gpiochip_get_data(%struct.gpio_chip* %28)
  %30 = load i32, i32* @INDT, align 4
  %31 = call i32 @gpio_rcar_read(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gpio_rcar_read(i32, i32) #1

declare dso_local i32 @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
