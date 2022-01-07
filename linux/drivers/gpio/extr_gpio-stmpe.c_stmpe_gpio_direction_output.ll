; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stmpe_gpio = type { %struct.stmpe* }
%struct.stmpe = type { i32* }

@STMPE_IDX_GPDR_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @stmpe_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmpe_gpio*, align 8
  %8 = alloca %struct.stmpe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.stmpe_gpio* %12, %struct.stmpe_gpio** %7, align 8
  %13 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %14 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %13, i32 0, i32 0
  %15 = load %struct.stmpe*, %struct.stmpe** %14, align 8
  store %struct.stmpe* %15, %struct.stmpe** %8, align 8
  %16 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %17 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @STMPE_IDX_GPDR_LSB, align 4
  %20 = load i32, i32* %5, align 4
  %21 = udiv i32 %20, 8
  %22 = add i32 %19, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = urem i32 %26, 8
  %28 = call i32 @BIT(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @stmpe_gpio_set(%struct.gpio_chip* %29, i32 %30, i32 %31)
  %33 = load %struct.stmpe*, %struct.stmpe** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @stmpe_set_bits(%struct.stmpe* %33, i32 %34, i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stmpe_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
