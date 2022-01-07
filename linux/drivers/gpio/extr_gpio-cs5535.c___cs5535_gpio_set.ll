; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c___cs5535_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c___cs5535_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_gpio_chip = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs5535_gpio_chip*, i32, i32)* @__cs5535_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cs5535_gpio_set(%struct.cs5535_gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cs5535_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs5535_gpio_chip* %0, %struct.cs5535_gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %4, align 8
  %13 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @outl(i32 %11, i64 %17)
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, 16
  %23 = shl i32 1, %22
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @errata_outl(%struct.cs5535_gpio_chip* %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @errata_outl(%struct.cs5535_gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
