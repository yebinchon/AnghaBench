; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_cs5535_gpio_setup_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_cs5535_gpio_setup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_gpio_chip = type { i32, i32 }

@cs5535_gpio_chip = common dso_local global %struct.cs5535_gpio_chip zeroinitializer, align 4
@GPIO_MAP_W = common dso_local global i32 0, align 4
@GPIO_MAP_Z = common dso_local global i32 0, align 4
@GPIO_MAP_Y = common dso_local global i32 0, align 4
@GPIO_MAP_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs5535_gpio_setup_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs5535_gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.cs5535_gpio_chip* @cs5535_gpio_chip, %struct.cs5535_gpio_chip** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = urem i32 %11, 8
  %13 = mul i32 %12, 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp uge i32 %14, 24
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @GPIO_MAP_W, align 4
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = icmp uge i32 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @GPIO_MAP_Z, align 4
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = icmp uge i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @GPIO_MAP_Y, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @GPIO_MAP_X, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %34 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %33, i32 0, i32 1
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %38 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %39, %40
  %42 = call i32 @inl(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 15, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 7
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %32
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 3
  %59 = shl i32 1, %58
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %32
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %65 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %66, %67
  %69 = call i32 @outl(i32 %63, i32 %68)
  %70 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %7, align 8
  %71 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %70, i32 0, i32 1
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
