; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_errata_outl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-cs5535.c_errata_outl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_gpio_chip = type { i32 }

@GPIO_POSITIVE_EDGE_STS = common dso_local global i32 0, align 4
@GPIO_NEGATIVE_EDGE_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs5535_gpio_chip*, i32, i32)* @errata_outl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @errata_outl(%struct.cs5535_gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cs5535_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cs5535_gpio_chip* %0, %struct.cs5535_gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cs5535_gpio_chip*, %struct.cs5535_gpio_chip** %4, align 8
  %9 = getelementptr inbounds %struct.cs5535_gpio_chip, %struct.cs5535_gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 128
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %11, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GPIO_POSITIVE_EDGE_STS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GPIO_NEGATIVE_EDGE_STS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 65535
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @inl(i64 %27)
  %29 = and i32 %28, 65535
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @inl(i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 16
  %37 = xor i32 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %26
  br label %41

41:                                               ; preds = %40, %18, %3
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @outl(i32 %42, i64 %43)
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
