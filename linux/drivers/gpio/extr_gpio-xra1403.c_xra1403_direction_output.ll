; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xra1403.c_xra1403_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xra1403.c_xra1403_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.xra1403 = type { i32 }

@XRA_GCR = common dso_local global i32 0, align 4
@XRA_OCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @xra1403_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xra1403_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xra1403*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = call %struct.xra1403* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.xra1403* %11, %struct.xra1403** %9, align 8
  %12 = load %struct.xra1403*, %struct.xra1403** %9, align 8
  %13 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XRA_GCR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @to_reg(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = urem i32 %18, 8
  %20 = call i32 @BIT(i32 %19)
  %21 = call i32 @regmap_update_bits(i32 %14, i32 %17, i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.xra1403*, %struct.xra1403** %9, align 8
  %28 = getelementptr inbounds %struct.xra1403, %struct.xra1403* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XRA_OCR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @to_reg(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = urem i32 %33, 8
  %35 = call i32 @BIT(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = urem i32 %39, 8
  %41 = call i32 @BIT(i32 %40)
  br label %43

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = call i32 @regmap_update_bits(i32 %29, i32 %32, i32 %35, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.xra1403* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @to_reg(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
