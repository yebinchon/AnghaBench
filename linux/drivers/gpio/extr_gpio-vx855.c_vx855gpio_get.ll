; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vx855.c_vx855gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vx855.c_vx855gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vx855_gpio = type { i32, i32 }

@NR_VX855_GPI = common dso_local global i32 0, align 4
@NR_VX855_GPInO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vx855gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx855gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vx855_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.vx855_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.vx855_gpio* %9, %struct.vx855_gpio** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NR_VX855_GPI, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.vx855_gpio*, %struct.vx855_gpio** %5, align 8
  %15 = getelementptr inbounds %struct.vx855_gpio, %struct.vx855_gpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @inl(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @gpi_i_bit(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %13
  br label %58

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NR_VX855_GPInO, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.vx855_gpio*, %struct.vx855_gpio** %5, align 8
  %31 = getelementptr inbounds %struct.vx855_gpio, %struct.vx855_gpio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @inl(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NR_VX855_GPI, align 4
  %37 = sub i32 %35, %36
  %38 = call i32 @gpo_o_bit(i32 %37)
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %29
  br label %57

43:                                               ; preds = %25
  %44 = load %struct.vx855_gpio*, %struct.vx855_gpio** %5, align 8
  %45 = getelementptr inbounds %struct.vx855_gpio, %struct.vx855_gpio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @inl(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NR_VX855_GPInO, align 4
  %51 = sub i32 %49, %50
  %52 = call i32 @gpio_i_bit(i32 %51)
  %53 = and i32 %48, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.vx855_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @gpi_i_bit(i32) #1

declare dso_local i32 @gpo_o_bit(i32) #1

declare dso_local i32 @gpio_i_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
