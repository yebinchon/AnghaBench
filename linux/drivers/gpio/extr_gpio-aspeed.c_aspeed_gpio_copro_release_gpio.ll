; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-aspeed.c_aspeed_gpio_copro_release_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-aspeed.c_aspeed_gpio_copro_release_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.aspeed_gpio = type { i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aspeed_gpio_bank = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GPIO_CMDSRC_ARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_gpio_copro_release_gpio(%struct.gpio_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.aspeed_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aspeed_gpio_bank*, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %3, align 8
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %12 = call %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %4, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = call %struct.aspeed_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.aspeed_gpio* %14, %struct.aspeed_gpio** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %16 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.aspeed_gpio_bank* @to_bank(i32 %17)
  store %struct.aspeed_gpio_bank* %18, %struct.aspeed_gpio_bank** %9, align 8
  %19 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %20 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %87

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %32 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %87

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 3
  store i32 %41, i32* %7, align 4
  %42 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %43 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %42, i32 0, i32 1
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %47 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %81

57:                                               ; preds = %39
  %58 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %59 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %67 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %57
  %75 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %76 = load %struct.aspeed_gpio_bank*, %struct.aspeed_gpio_bank** %9, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @GPIO_CMDSRC_ARM, align 4
  %79 = call i32 @aspeed_gpio_change_cmd_source(%struct.aspeed_gpio* %75, %struct.aspeed_gpio_bank* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %57
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.aspeed_gpio*, %struct.aspeed_gpio** %5, align 8
  %83 = getelementptr inbounds %struct.aspeed_gpio, %struct.aspeed_gpio* %82, i32 0, i32 1
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %36, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.gpio_chip* @gpiod_to_chip(%struct.gpio_desc*) #1

declare dso_local %struct.aspeed_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local %struct.aspeed_gpio_bank* @to_bank(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aspeed_gpio_change_cmd_source(%struct.aspeed_gpio*, %struct.aspeed_gpio_bank*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
