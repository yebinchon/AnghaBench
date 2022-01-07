; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adp5588_gpio = type { i32*, i32*, i32, i32 }

@GPIO_DAT_OUT1 = common dso_local global i64 0, align 8
@GPIO_DIR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @adp5588_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5588_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adp5588_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.adp5588_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.adp5588_gpio* %12, %struct.adp5588_gpio** %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ADP5588_BANK(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ADP5588_BIT(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %18 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %22 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %20
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %34 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %32
  store i32 %40, i32* %38, align 4
  br label %52

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %45 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %43
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %41, %31
  %53 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %54 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @GPIO_DAT_OUT1, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %61 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @adp5588_gpio_write(i32 %55, i64 %59, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %69 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* @GPIO_DIR1, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %76 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @adp5588_gpio_write(i32 %70, i64 %74, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %10, align 8
  %86 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
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
