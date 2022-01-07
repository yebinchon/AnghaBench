; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_direction_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_direction_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sch311x_gpio_block = type { i32, i64*, i64 }

@SCH311X_GPIO_CONF_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sch311x_gpio_direction_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch311x_gpio_direction_in(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sch311x_gpio_block*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.sch311x_gpio_block* %8, %struct.sch311x_gpio_block** %5, align 8
  %9 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %5, align 8
  %10 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %5, align 8
  %13 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %5, align 8
  %16 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %14, %21
  %23 = call i32 @inb(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @SCH311X_GPIO_CONF_DIR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %5, align 8
  %29 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %5, align 8
  %32 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %30, %37
  %39 = call i32 @outb(i32 %27, i64 %38)
  %40 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %5, align 8
  %41 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  ret i32 0
}

declare dso_local %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
