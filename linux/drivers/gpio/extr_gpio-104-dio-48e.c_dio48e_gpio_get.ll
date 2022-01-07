; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-dio-48e.c_dio48e_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.dio48e_gpio = type { i32*, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @dio48e_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio48e_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dio48e_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.dio48e_gpio* %13, %struct.dio48e_gpio** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = udiv i32 %14, 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = urem i32 %16, 8
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ugt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  store i32 %27, i32* %9, align 4
  %28 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %6, align 8
  %29 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %28, i32 0, i32 1
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %26
  %43 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %43, i32 0, i32 1
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @raw_spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %26
  %50 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %6, align 8
  %51 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @inb(i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.dio48e_gpio*, %struct.dio48e_gpio** %6, align 8
  %58 = getelementptr inbounds %struct.dio48e_gpio, %struct.dio48e_gpio* %57, i32 0, i32 1
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @raw_spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %49, %42
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.dio48e_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
