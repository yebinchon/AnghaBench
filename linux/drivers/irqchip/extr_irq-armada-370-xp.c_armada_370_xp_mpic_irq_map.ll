; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-armada-370-xp.c_armada_370_xp_mpic_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-armada-370-xp.c_armada_370_xp_mpic_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }

@per_cpu_int_base = common dso_local global i64 0, align 8
@ARMADA_370_XP_INT_CLEAR_MASK_OFFS = common dso_local global i64 0, align 8
@main_int_base = common dso_local global i64 0, align 8
@ARMADA_370_XP_INT_SET_ENABLE_OFFS = common dso_local global i64 0, align 8
@IRQ_LEVEL = common dso_local global i32 0, align 4
@armada_370_xp_irq_chip = common dso_local global i32 0, align 4
@handle_percpu_devid_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @armada_370_xp_mpic_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_370_xp_mpic_irq_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @irq_get_irq_data(i32 %7)
  %9 = call i32 @armada_370_xp_irq_mask(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @is_percpu_irq(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* @per_cpu_int_base, align 8
  %16 = load i64, i64* @ARMADA_370_XP_INT_CLEAR_MASK_OFFS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %14, i64 %17)
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* @main_int_base, align 8
  %22 = load i64, i64* @ARMADA_370_XP_INT_SET_ENABLE_OFFS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IRQ_LEVEL, align 4
  %28 = call i32 @irq_set_status_flags(i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @is_percpu_irq(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @irq_set_percpu_devid(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @handle_percpu_devid_irq, align 4
  %37 = call i32 @irq_set_chip_and_handler(i32 %35, i32* @armada_370_xp_irq_chip, i32 %36)
  br label %46

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @handle_level_irq, align 4
  %41 = call i32 @irq_set_chip_and_handler(i32 %39, i32* @armada_370_xp_irq_chip, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @irq_to_desc(i32 %42)
  %44 = call i32 @irq_desc_get_irq_data(i32 %43)
  %45 = call i32 @irqd_set_single_target(i32 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @irq_set_probe(i32 %47)
  ret i32 0
}

declare dso_local i32 @armada_370_xp_irq_mask(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i64 @is_percpu_irq(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_percpu_devid(i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irqd_set_single_target(i32) #1

declare dso_local i32 @irq_desc_get_irq_data(i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @irq_set_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
