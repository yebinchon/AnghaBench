; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.brcmstb_gpio_bank = type { %struct.TYPE_2__, i32, %struct.brcmstb_gpio_priv* }
%struct.TYPE_2__ = type { i32 (i64)*, i32, i32 (i64, i32)* }
%struct.brcmstb_gpio_priv = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @brcmstb_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.brcmstb_gpio_bank*, align 8
  %8 = alloca %struct.brcmstb_gpio_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %17)
  store %struct.gpio_chip* %18, %struct.gpio_chip** %6, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = call %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %19)
  store %struct.brcmstb_gpio_bank* %20, %struct.brcmstb_gpio_bank** %7, align 8
  %21 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %22 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %21, i32 0, i32 2
  %23 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %22, align 8
  store %struct.brcmstb_gpio_priv* %23, %struct.brcmstb_gpio_priv** %8, align 8
  %24 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %28 = call i32 @brcmstb_gpio_hwirq_to_offset(i32 %26, %struct.brcmstb_gpio_bank* %27)
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %41 [
    i32 128, label %31
    i32 129, label %33
    i32 131, label %36
    i32 130, label %37
    i32 132, label %39
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %44

36:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %44

37:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %44

39:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %151

44:                                               ; preds = %39, %37, %36, %33, %31
  %45 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %46 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %51 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i64)*, i32 (i64)** %52, align 8
  %54 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %55 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %58 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @GIO_EC(i32 %59)
  %61 = add nsw i64 %56, %60
  %62 = call i32 %53(i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %13, align 4
  %66 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %67 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (i64)*, i32 (i64)** %68, align 8
  %70 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %71 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %74 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @GIO_EI(i32 %75)
  %77 = add nsw i64 %72, %76
  %78 = call i32 %69(i64 %77)
  %79 = load i32, i32* %9, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %11, align 4
  %82 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %83 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (i64)*, i32 (i64)** %84, align 8
  %86 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %87 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %90 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @GIO_LEVEL(i32 %91)
  %93 = add nsw i64 %88, %92
  %94 = call i32 %85(i64 %93)
  %95 = load i32, i32* %9, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  store i32 %97, i32* %15, align 4
  %98 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %99 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32 (i64, i32)*, i32 (i64, i32)** %100, align 8
  %102 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %103 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %106 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @GIO_EC(i32 %107)
  %109 = add nsw i64 %104, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %110, %111
  %113 = call i32 %101(i64 %109, i32 %112)
  %114 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %115 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32 (i64, i32)*, i32 (i64, i32)** %116, align 8
  %118 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %119 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %122 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @GIO_EI(i32 %123)
  %125 = add nsw i64 %120, %124
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %126, %127
  %129 = call i32 %117(i64 %125, i32 %128)
  %130 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %131 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32 (i64, i32)*, i32 (i64, i32)** %132, align 8
  %134 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %135 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %138 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @GIO_LEVEL(i32 %139)
  %141 = add nsw i64 %136, %140
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %142, %143
  %145 = call i32 %133(i64 %141, i32 %144)
  %146 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %7, align 8
  %147 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %16, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %44, %41
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @brcmstb_gpio_hwirq_to_offset(i32, %struct.brcmstb_gpio_bank*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @GIO_EC(i32) #1

declare dso_local i64 @GIO_EI(i32) #1

declare dso_local i64 @GIO_LEVEL(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
