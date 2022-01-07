; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_set_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tegra.c_tegra_gpio_set_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.tegra_gpio_info = type { %struct.tegra_gpio_bank* }
%struct.tegra_gpio_bank = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @tegra_gpio_set_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_set_debounce(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_gpio_info*, align 8
  %9 = alloca %struct.tegra_gpio_bank*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = call %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.tegra_gpio_info* %14, %struct.tegra_gpio_info** %8, align 8
  %15 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %16 = getelementptr inbounds %struct.tegra_gpio_info, %struct.tegra_gpio_info* %15, i32 0, i32 0
  %17 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @GPIO_BANK(i32 %18)
  %20 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %17, i64 %19
  store %struct.tegra_gpio_bank* %20, %struct.tegra_gpio_bank** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DIV_ROUND_UP(i32 %21, i32 1000)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %27 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GPIO_MSK_DBC_EN(%struct.tegra_gpio_info* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info* %26, i32 %29, i32 %30, i32 0)
  store i32 0, i32* %4, align 4
  br label %83

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @min(i32 %33, i32 255)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @GPIO_PORT(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %38 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %46 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %32
  %55 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @GPIO_DBC_CNT(%struct.tegra_gpio_info* %57, i32 %58)
  %60 = call i32 @tegra_gpio_writel(%struct.tegra_gpio_info* %55, i32 %56, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %63 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %54, %32
  %69 = load %struct.tegra_gpio_bank*, %struct.tegra_gpio_bank** %9, align 8
  %70 = getelementptr inbounds %struct.tegra_gpio_bank, %struct.tegra_gpio_bank* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %78 = load %struct.tegra_gpio_info*, %struct.tegra_gpio_info** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @GPIO_MSK_DBC_EN(%struct.tegra_gpio_info* %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info* %77, i32 %80, i32 %81, i32 1)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %68, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.tegra_gpio_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @GPIO_BANK(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @tegra_gpio_mask_write(%struct.tegra_gpio_info*, i32, i32, i32) #1

declare dso_local i32 @GPIO_MSK_DBC_EN(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @GPIO_PORT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tegra_gpio_writel(%struct.tegra_gpio_info*, i32, i32) #1

declare dso_local i32 @GPIO_DBC_CNT(%struct.tegra_gpio_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
