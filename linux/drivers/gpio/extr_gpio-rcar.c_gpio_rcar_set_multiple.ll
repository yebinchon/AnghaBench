; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-rcar.c_gpio_rcar_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64*, i64 }
%struct.gpio_rcar_priv = type { i32 }

@OUTDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @gpio_rcar_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_rcar_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.gpio_rcar_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.gpio_rcar_priv* %12, %struct.gpio_rcar_priv** %7, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i64 @GENMASK(i64 %19, i32 0)
  %21 = and i64 %15, %20
  store i64 %21, i64* %10, align 8
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %26, %3
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %65

38:                                               ; preds = %34
  %39 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %40 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %44 = load i32, i32* @OUTDT, align 4
  %45 = call i64 @gpio_rcar_read(%struct.gpio_rcar_priv* %43, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %50, %53
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %58 = load i32, i32* @OUTDT, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @gpio_rcar_write(%struct.gpio_rcar_priv* %57, i32 %58, i64 %59)
  %61 = load %struct.gpio_rcar_priv*, %struct.gpio_rcar_priv** %7, align 8
  %62 = getelementptr inbounds %struct.gpio_rcar_priv, %struct.gpio_rcar_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.gpio_rcar_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @GENMASK(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @gpio_rcar_read(%struct.gpio_rcar_priv*, i32) #1

declare dso_local i32 @gpio_rcar_write(%struct.gpio_rcar_priv*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
