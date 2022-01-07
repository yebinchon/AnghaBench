; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adp5588_gpio = type { i32*, i32, i32 }

@GPIO_DAT_OUT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @adp5588_gpio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5588_gpio_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adp5588_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.adp5588_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.adp5588_gpio* %11, %struct.adp5588_gpio** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ADP5588_BANK(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ADP5588_BIT(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %9, align 8
  %17 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %9, align 8
  %24 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %22
  store i32 %30, i32* %28, align 4
  br label %42

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %9, align 8
  %35 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %31, %21
  %43 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %9, align 8
  %44 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @GPIO_DAT_OUT1, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %9, align 8
  %51 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @adp5588_gpio_write(i32 %45, i64 %49, i32 %56)
  %58 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %9, align 8
  %59 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  ret void
}

declare dso_local %struct.adp5588_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ADP5588_BANK(i32) #1

declare dso_local i32 @ADP5588_BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adp5588_gpio_write(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
