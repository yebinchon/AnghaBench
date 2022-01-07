; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_init_irq_valid_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_init_irq_valid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stmpe_gpio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i32)* @stmpe_init_irq_valid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_init_irq_valid_mask(%struct.gpio_chip* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmpe_gpio*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.stmpe_gpio* %10, %struct.stmpe_gpio** %7, align 8
  %11 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %12 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %37

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.stmpe_gpio*, %struct.stmpe_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.stmpe_gpio, %struct.stmpe_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i64*, i64** %5, align 8
  %32 = call i32 @clear_bit(i32 %30, i64* %31)
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %17

37:                                               ; preds = %15, %17
  ret void
}

declare dso_local %struct.stmpe_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
