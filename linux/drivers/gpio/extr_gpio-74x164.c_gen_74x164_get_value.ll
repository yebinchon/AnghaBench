; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gen_74x164_chip = type { i32, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @gen_74x164_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_74x164_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gen_74x164_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.gen_74x164_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.gen_74x164_chip* %10, %struct.gen_74x164_chip** %5, align 8
  %11 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %5, align 8
  %12 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 %15, 8
  %17 = sub i32 %14, %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = urem i32 %19, 8
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %5, align 8
  %23 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %5, align 8
  %26 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = lshr i64 %30, %31
  %33 = and i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %5, align 8
  %36 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.gen_74x164_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
