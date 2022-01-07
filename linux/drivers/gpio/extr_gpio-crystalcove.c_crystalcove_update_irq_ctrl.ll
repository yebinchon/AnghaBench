; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_update_irq_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_update_irq_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crystalcove_gpio = type { i32, i32 }

@CTRL_IN = common dso_local global i32 0, align 4
@CTLI_INTCNT_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crystalcove_gpio*, i32)* @crystalcove_update_irq_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crystalcove_update_irq_ctrl(%struct.crystalcove_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.crystalcove_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.crystalcove_gpio* %0, %struct.crystalcove_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CTRL_IN, align 4
  %8 = call i32 @to_reg(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %10 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CTLI_INTCNT_BE, align 4
  %14 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %3, align 8
  %15 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @to_reg(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
