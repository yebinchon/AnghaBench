; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_dirout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-amd8111.c_amd_gpio_dirout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.amd_gpio = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@AMD_GPIO_DEBOUNCE = common dso_local global i32 0, align 4
@AMD_GPIO_MODE_OUT = common dso_local global i32 0, align 4
@AMD_GPIO_X_OUT_HI = common dso_local global i32 0, align 4
@AMD_GPIO_X_OUT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Dirout gpio %d, value %d, reg=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @amd_gpio_dirout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_gpio_dirout(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.amd_gpio* %11, %struct.amd_gpio** %7, align 8
  %12 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %12, i32 0, i32 1
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %17 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @AMD_REG_GPIO(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @ioread8(i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AMD_GPIO_DEBOUNCE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @AMD_GPIO_MODE_OUT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @AMD_GPIO_X_OUT_HI, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @AMD_GPIO_X_OUT_LOW, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = or i32 %27, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %39 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @AMD_REG_GPIO(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @iowrite8(i32 %37, i64 %43)
  %45 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %46 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %45, i32 0, i32 1
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %50 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58, i32 %59)
  ret i32 0
}

declare dso_local %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @AMD_REG_GPIO(i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
