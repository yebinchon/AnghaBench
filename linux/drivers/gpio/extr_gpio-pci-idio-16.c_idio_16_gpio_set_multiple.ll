; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pci-idio-16.c_idio_16_gpio_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pci-idio-16.c_idio_16_gpio_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.idio_16_gpio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @idio_16_gpio_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idio_16_gpio_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.idio_16_gpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.idio_16_gpio* %11, %struct.idio_16_gpio** %7, align 8
  %12 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, 255
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %3
  %21 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %22 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i64 @ioread8(i32* %24)
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = or i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %42 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @iowrite8(i32 %40, i32* %44)
  br label %46

46:                                               ; preds = %20, %3
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = lshr i64 %48, 8
  store i64 %49, i64* %47, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, 255
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %46
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %55, align 8
  %57 = lshr i64 %56, 8
  store i64 %57, i64* %55, align 8
  %58 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %59 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i64 @ioread8(i32* %61)
  %63 = load i64*, i64** %5, align 8
  %64 = load i64, i64* %63, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = load i64, i64* %70, align 8
  %72 = and i64 %69, %71
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = or i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %79 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @iowrite8(i32 %77, i32* %81)
  br label %83

83:                                               ; preds = %54, %46
  %84 = load %struct.idio_16_gpio*, %struct.idio_16_gpio** %7, align 8
  %85 = getelementptr inbounds %struct.idio_16_gpio, %struct.idio_16_gpio* %84, i32 0, i32 0
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @raw_spin_unlock_irqrestore(i32* %85, i64 %86)
  ret void
}

declare dso_local %struct.idio_16_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ioread8(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
