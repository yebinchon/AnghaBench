; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zynq.c_zynq_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.zynq_gpio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @zynq_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zynq_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.zynq_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.zynq_gpio* %10, %struct.zynq_gpio** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %13 = call i32 @zynq_gpio_get_bank_pin(i32 %11, i32* %6, i32* %7, %struct.zynq_gpio* %12)
  %14 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %15 = call i64 @gpio_data_ro_bug(%struct.zynq_gpio* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %19 = call i64 @zynq_gpio_is_zynq(%struct.zynq_gpio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp ule i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %26 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ZYNQ_GPIO_DATA_RO_OFFSET(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %34 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ZYNQ_GPIO_DATA_OFFSET(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %24
  br label %61

41:                                               ; preds = %17
  %42 = load i32, i32* %6, align 4
  %43 = icmp ule i32 %42, 2
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %46 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @ZYNQ_GPIO_DATA_RO_OFFSET(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @readl_relaxed(i64 %50)
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %41
  %53 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %54 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ZYNQ_GPIO_DATA_OFFSET(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @readl_relaxed(i64 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %60, %40
  br label %70

62:                                               ; preds = %2
  %63 = load %struct.zynq_gpio*, %struct.zynq_gpio** %8, align 8
  %64 = getelementptr inbounds %struct.zynq_gpio, %struct.zynq_gpio* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @ZYNQ_GPIO_DATA_RO_OFFSET(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @readl_relaxed(i64 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %62, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = lshr i32 %71, %72
  %74 = and i32 %73, 1
  ret i32 %74
}

declare dso_local %struct.zynq_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @zynq_gpio_get_bank_pin(i32, i32*, i32*, %struct.zynq_gpio*) #1

declare dso_local i64 @gpio_data_ro_bug(%struct.zynq_gpio*) #1

declare dso_local i64 @zynq_gpio_is_zynq(%struct.zynq_gpio*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ZYNQ_GPIO_DATA_RO_OFFSET(i32) #1

declare dso_local i64 @ZYNQ_GPIO_DATA_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
