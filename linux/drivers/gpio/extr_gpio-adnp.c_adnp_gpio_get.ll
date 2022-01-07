; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adnp.c_adnp_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.adnp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @adnp_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adnp_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adnp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.adnp* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.adnp* %12, %struct.adnp** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.adnp*, %struct.adnp** %6, align 8
  %15 = getelementptr inbounds %struct.adnp, %struct.adnp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = lshr i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 7
  store i32 %19, i32* %8, align 4
  %20 = load %struct.adnp*, %struct.adnp** %6, align 8
  %21 = load %struct.adnp*, %struct.adnp** %6, align 8
  %22 = call i64 @GPIO_PLR(%struct.adnp* %21)
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @adnp_read(%struct.adnp* %20, i64 %25, i32* %9)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.adnp* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @adnp_read(%struct.adnp*, i64, i32*) #1

declare dso_local i64 @GPIO_PLR(%struct.adnp*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
