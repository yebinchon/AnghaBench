; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_bank_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_bank_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_gpio_priv = type { i64 }
%struct.brcmstb_gpio_bank = type { i32, i32*, %struct.gpio_chip }
%struct.gpio_chip = type { i32 (i64)* }

@GIO_REG_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_bank*)* @brcmstb_gpio_bank_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_gpio_bank_save(%struct.brcmstb_gpio_priv* %0, %struct.brcmstb_gpio_bank* %1) #0 {
  %3 = alloca %struct.brcmstb_gpio_priv*, align 8
  %4 = alloca %struct.brcmstb_gpio_bank*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.brcmstb_gpio_priv* %0, %struct.brcmstb_gpio_priv** %3, align 8
  store %struct.brcmstb_gpio_bank* %1, %struct.brcmstb_gpio_bank** %4, align 8
  %7 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %8 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %7, i32 0, i32 2
  store %struct.gpio_chip* %8, %struct.gpio_chip** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GIO_REG_STAT, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 0
  %16 = load i32 (i64)*, i32 (i64)** %15, align 8
  %17 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %3, align 8
  %18 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %21 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @GIO_BANK_OFF(i32 %22, i32 %23)
  %25 = add nsw i64 %19, %24
  %26 = call i32 %16(i64 %25)
  %27 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %4, align 8
  %28 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %9

36:                                               ; preds = %9
  ret void
}

declare dso_local i64 @GIO_BANK_OFF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
