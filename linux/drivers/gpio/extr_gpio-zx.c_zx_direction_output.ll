; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zx.c_zx_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.zx_gpio = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ZX_GPIO_DIR = common dso_local global i64 0, align 8
@ZX_GPIO_DO1 = common dso_local global i64 0, align 8
@ZX_GPIO_DO0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @zx_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zx_gpio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.zx_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.zx_gpio* %12, %struct.zx_gpio** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.zx_gpio*, %struct.zx_gpio** %8, align 8
  %23 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @raw_spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.zx_gpio*, %struct.zx_gpio** %8, align 8
  %27 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZX_GPIO_DIR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readw_relaxed(i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.zx_gpio*, %struct.zx_gpio** %8, align 8
  %38 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZX_GPIO_DIR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writew_relaxed(i32 %36, i64 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %21
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load %struct.zx_gpio*, %struct.zx_gpio** %8, align 8
  %49 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZX_GPIO_DO1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writew_relaxed(i32 %47, i64 %52)
  br label %63

54:                                               ; preds = %21
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load %struct.zx_gpio*, %struct.zx_gpio** %8, align 8
  %58 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZX_GPIO_DO0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writew_relaxed(i32 %56, i64 %61)
  br label %63

63:                                               ; preds = %54, %45
  %64 = load %struct.zx_gpio*, %struct.zx_gpio** %8, align 8
  %65 = getelementptr inbounds %struct.zx_gpio, %struct.zx_gpio* %64, i32 0, i32 0
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @raw_spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.zx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
