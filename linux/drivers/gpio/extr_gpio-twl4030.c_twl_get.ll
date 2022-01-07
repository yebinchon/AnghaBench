; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_twl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_twl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gpio_twl4030_priv = type { i32, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @twl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_twl4030_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.gpio_twl4030_priv* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.gpio_twl4030_priv* %9, %struct.gpio_twl4030_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %11 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %14 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %33 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  store i32 %37, i32* %7, align 4
  br label %41

38:                                               ; preds = %23
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @twl4030_get_gpio_datain(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %46, %44
  %53 = phi i32 [ %45, %44 ], [ %51, %46 ]
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %20
  %55 = load %struct.gpio_twl4030_priv*, %struct.gpio_twl4030_priv** %5, align 8
  %56 = getelementptr inbounds %struct.gpio_twl4030_priv, %struct.gpio_twl4030_priv* %55, i32 0, i32 3
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.gpio_twl4030_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @twl4030_get_gpio_datain(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
