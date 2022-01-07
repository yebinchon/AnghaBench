; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_direction_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_direction_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.madera_gpio = type { %struct.madera* }
%struct.madera = type { i32 }

@MADERA_GP1_LVL = common dso_local global i32 0, align 4
@MADERA_GPIO1_CTRL_2 = common dso_local global i64 0, align 8
@MADERA_GP1_DIR_MASK = common dso_local global i32 0, align 4
@MADERA_GPIO1_CTRL_1 = common dso_local global i64 0, align 8
@MADERA_GP1_LVL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @madera_gpio_direction_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_gpio_direction_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.madera_gpio*, align 8
  %9 = alloca %struct.madera*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = call %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.madera_gpio* %14, %struct.madera_gpio** %8, align 8
  %15 = load %struct.madera_gpio*, %struct.madera_gpio** %8, align 8
  %16 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %15, i32 0, i32 0
  %17 = load %struct.madera*, %struct.madera** %16, align 8
  store %struct.madera* %17, %struct.madera** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul i32 2, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @MADERA_GP1_LVL, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %11, align 4
  %27 = load %struct.madera*, %struct.madera** %9, align 8
  %28 = getelementptr inbounds %struct.madera, %struct.madera* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @MADERA_GPIO1_CTRL_2, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* @MADERA_GP1_DIR_MASK, align 4
  %35 = call i32 @regmap_update_bits(i32 %29, i64 %33, i32 %34, i32 0)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %25
  %41 = load %struct.madera*, %struct.madera** %9, align 8
  %42 = getelementptr inbounds %struct.madera, %struct.madera* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @MADERA_GPIO1_CTRL_1, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* @MADERA_GP1_LVL_MASK, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @regmap_update_bits(i32 %43, i64 %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %38
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
