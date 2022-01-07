; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sch311x.c_sch311x_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sch311x_gpio_block = type { i32, i64*, i64 }

@SCH311X_GPIO_CONF_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sch311x_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch311x_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sch311x_gpio_block*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.sch311x_gpio_block* %10, %struct.sch311x_gpio_block** %7, align 8
  %11 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %12 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %15 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %18 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %16, %23
  %25 = call i32 @inb(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @SCH311X_GPIO_CONF_DIR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %32 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %35 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %33, %40
  %42 = call i32 @outb(i32 %30, i64 %41)
  %43 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @__sch311x_gpio_set(%struct.sch311x_gpio_block* %43, i32 %44, i32 %45)
  %47 = load %struct.sch311x_gpio_block*, %struct.sch311x_gpio_block** %7, align 8
  %48 = getelementptr inbounds %struct.sch311x_gpio_block, %struct.sch311x_gpio_block* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  ret i32 0
}

declare dso_local %struct.sch311x_gpio_block* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @__sch311x_gpio_set(%struct.sch311x_gpio_block*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
