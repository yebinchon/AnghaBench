; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mscc-ocelot.c_ocelot_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mscc-ocelot.c_ocelot_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_chip_generic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ocelot_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %8)
  store %struct.irq_chip* %9, %struct.irq_chip** %3, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %10)
  store %struct.irq_domain* %11, %struct.irq_domain** %4, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain* %12, i32 0)
  store %struct.irq_chip_generic* %13, %struct.irq_chip_generic** %5, align 8
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %15 = call i32 @ICPU_CFG_INTR_DST_INTR_IDENT(i32 0)
  %16 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = call i32 @chained_irq_enter(%struct.irq_chip* %17, %struct.irq_desc* %18)
  br label %20

20:                                               ; preds = %23, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__fls(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @irq_find_mapping(%struct.irq_domain* %26, i32 %27)
  %29 = call i32 @generic_handle_irq(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %37 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %38 = call i32 @chained_irq_exit(%struct.irq_chip* %36, %struct.irq_desc* %37)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @ICPU_CFG_INTR_DST_INTR_IDENT(i32) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
