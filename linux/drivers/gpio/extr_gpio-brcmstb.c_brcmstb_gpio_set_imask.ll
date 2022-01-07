; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_set_imask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_set_imask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_gpio_bank = type { i32, %struct.brcmstb_gpio_priv*, %struct.gpio_chip }
%struct.brcmstb_gpio_priv = type { i64 }
%struct.gpio_chip = type { i32, i32 (i64, i32)*, i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_gpio_bank*, i32, i32)* @brcmstb_gpio_set_imask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_gpio_set_imask(%struct.brcmstb_gpio_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmstb_gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.brcmstb_gpio_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.brcmstb_gpio_bank* %0, %struct.brcmstb_gpio_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %13 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %12, i32 0, i32 2
  store %struct.gpio_chip* %13, %struct.gpio_chip** %7, align 8
  %14 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %15 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %14, i32 0, i32 1
  %16 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %15, align 8
  store %struct.brcmstb_gpio_priv* %16, %struct.brcmstb_gpio_priv** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %19 = call i32 @brcmstb_gpio_hwirq_to_offset(i32 %17, %struct.brcmstb_gpio_bank* %18)
  %20 = call i32 @BIT(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 2
  %27 = load i32 (i64)*, i32 (i64)** %26, align 8
  %28 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %29 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %32 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GIO_MASK(i32 %33)
  %35 = add nsw i64 %30, %34
  %36 = call i32 %27(i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %48

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 1
  %51 = load i32 (i64, i32)*, i32 (i64, i32)** %50, align 8
  %52 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %53 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %56 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @GIO_MASK(i32 %57)
  %59 = add nsw i64 %54, %58
  %60 = load i32, i32* %10, align 4
  %61 = call i32 %51(i64 %59, i32 %60)
  %62 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %63 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %62, i32 0, i32 0
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @brcmstb_gpio_hwirq_to_offset(i32, %struct.brcmstb_gpio_bank*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @GIO_MASK(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
