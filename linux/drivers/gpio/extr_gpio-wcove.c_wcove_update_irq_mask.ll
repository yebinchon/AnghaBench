; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_update_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_update_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcove_gpio = type { i32, i64 }

@GROUP0_NR_IRQS = common dso_local global i32 0, align 4
@IRQ_MASK_BASE = common dso_local global i32 0, align 4
@GROUP1_NR_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcove_gpio*, i32)* @wcove_update_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcove_update_irq_mask(%struct.wcove_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.wcove_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wcove_gpio* %0, %struct.wcove_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GROUP0_NR_IRQS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @IRQ_MASK_BASE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GROUP0_NR_IRQS, align 4
  %14 = srem i32 %12, %13
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_MASK_BASE, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GROUP0_NR_IRQS, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* @GROUP1_NR_IRQS, align 4
  %23 = srem i32 %21, %22
  %24 = call i32 @BIT(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %16, %10
  %26 = load %struct.wcove_gpio*, %struct.wcove_gpio** %3, align 8
  %27 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.wcove_gpio*, %struct.wcove_gpio** %3, align 8
  %32 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  br label %45

38:                                               ; preds = %25
  %39 = load %struct.wcove_gpio*, %struct.wcove_gpio** %3, align 8
  %40 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %38, %30
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
