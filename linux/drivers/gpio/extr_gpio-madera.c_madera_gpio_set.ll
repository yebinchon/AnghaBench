; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-madera.c_madera_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.madera_gpio = type { %struct.madera* }
%struct.madera = type { i32, i32 }

@MADERA_GP1_LVL = common dso_local global i32 0, align 4
@MADERA_GPIO1_CTRL_1 = common dso_local global i64 0, align 8
@MADERA_GP1_LVL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to write to 0x%x (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @madera_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.madera_gpio*, align 8
  %8 = alloca %struct.madera*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.madera_gpio* %13, %struct.madera_gpio** %7, align 8
  %14 = load %struct.madera_gpio*, %struct.madera_gpio** %7, align 8
  %15 = getelementptr inbounds %struct.madera_gpio, %struct.madera_gpio* %14, i32 0, i32 0
  %16 = load %struct.madera*, %struct.madera** %15, align 8
  store %struct.madera* %16, %struct.madera** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 2, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @MADERA_GP1_LVL, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %10, align 4
  %26 = load %struct.madera*, %struct.madera** %8, align 8
  %27 = getelementptr inbounds %struct.madera, %struct.madera* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @MADERA_GPIO1_CTRL_1, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* @MADERA_GP1_LVL_MASK, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @regmap_update_bits(i32 %28, i64 %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.madera*, %struct.madera** %8, align 8
  %40 = getelementptr inbounds %struct.madera, %struct.madera* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @MADERA_GPIO1_CTRL_1, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %24
  ret void
}

declare dso_local %struct.madera_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
