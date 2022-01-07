; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-palmas.c_palmas_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.palmas_gpio = type { %struct.palmas* }
%struct.palmas = type { i32 }

@PALMAS_GPIO_DATA_DIR2 = common dso_local global i32 0, align 4
@PALMAS_GPIO_DATA_DIR = common dso_local global i32 0, align 4
@PALMAS_GPIO_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed, %d\0A\00", align 1
@PALMAS_GPIO_DATA_OUT2 = common dso_local global i32 0, align 4
@PALMAS_GPIO_DATA_OUT = common dso_local global i32 0, align 4
@PALMAS_GPIO_DATA_IN2 = common dso_local global i32 0, align 4
@PALMAS_GPIO_DATA_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @palmas_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.palmas_gpio*, align 8
  %7 = alloca %struct.palmas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.palmas_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.palmas_gpio* %13, %struct.palmas_gpio** %6, align 8
  %14 = load %struct.palmas_gpio*, %struct.palmas_gpio** %6, align 8
  %15 = getelementptr inbounds %struct.palmas_gpio, %struct.palmas_gpio* %14, i32 0, i32 0
  %16 = load %struct.palmas*, %struct.palmas** %15, align 8
  store %struct.palmas* %16, %struct.palmas** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = udiv i32 %17, 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = urem i32 %19, 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @PALMAS_GPIO_DATA_DIR2, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @PALMAS_GPIO_DATA_DIR, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load %struct.palmas*, %struct.palmas** %7, align 8
  %30 = load i32, i32* @PALMAS_GPIO_BASE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @palmas_read(%struct.palmas* %29, i32 %30, i32 %31, i32* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %91

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @PALMAS_GPIO_DATA_OUT2, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @PALMAS_GPIO_DATA_OUT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %10, align 4
  br label %67

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @PALMAS_GPIO_DATA_IN2, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @PALMAS_GPIO_DATA_IN, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %56
  %68 = load %struct.palmas*, %struct.palmas** %7, align 8
  %69 = load i32, i32* @PALMAS_GPIO_BASE, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @palmas_read(%struct.palmas* %68, i32 %69, i32 %70, i32* %8)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %91

82:                                               ; preds = %67
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %74, %35
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.palmas_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @palmas_read(%struct.palmas*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
