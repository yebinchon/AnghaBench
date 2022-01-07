; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_cs5535_gpio_isset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_cs5535_gpio_isset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_gpio_chip = type { i32, i64 }

@cs5535_gpio_chip = common dso_local global %struct.cs5535_gpio_chip zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs5535_gpio_isset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs5535_gpio_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.cs5535_gpio_chip* @cs5535_gpio_chip, %struct.cs5535_gpio_chip** %5, align 8
  %8 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %5, align 8
  %9 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i64 @inl(i64 %20)
  store i64 %21, i64* %7, align 8
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %5, align 8
  %24 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 128
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i64 @inl(i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sub i32 %31, 16
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %14
  %34 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %5, align 8
  %35 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %3, align 4
  %40 = shl i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  ret i32 %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
