; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_domain_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_domain_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.xgene_gpio_sb* }
%struct.xgene_gpio_sb = type { i64, i32 }
%struct.irq_data = type { i32 }

@MPA_GPIO_SEL_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.irq_data*)* @xgene_gpio_sb_domain_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_gpio_sb_domain_deactivate(%struct.irq_domain* %0, %struct.irq_data* %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.xgene_gpio_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store %struct.irq_data* %1, %struct.irq_data** %4, align 8
  %7 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %8 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %7, i32 0, i32 0
  %9 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %8, align 8
  store %struct.xgene_gpio_sb* %9, %struct.xgene_gpio_sb** %5, align 8
  %10 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %5, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %5, align 8
  %16 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %15, i32 0, i32 1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @gpiochip_unlock_as_irq(i32* %16, i32 %17)
  %19 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %5, align 8
  %20 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %19, i32 0, i32 1
  %21 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %5, align 8
  %22 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MPA_GPIO_SEL_LO, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 2
  %28 = call i32 @xgene_gpio_set_bit(i32* %20, i64 %25, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb*, i32) #1

declare dso_local i32 @gpiochip_unlock_as_irq(i32*, i32) #1

declare dso_local i32 @xgene_gpio_set_bit(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
