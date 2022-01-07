; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-brcmstb-l2.c_brcmstb_l2_intc_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-brcmstb-l2.c_brcmstb_l2_intc_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.brcmstb_l2_intc_data = type { i32, i32, i32, i32 }
%struct.irq_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @brcmstb_l2_intc_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_l2_intc_irq_handle(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.brcmstb_l2_intc_data*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.brcmstb_l2_intc_data* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.brcmstb_l2_intc_data* %8, %struct.brcmstb_l2_intc_data** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call i32 @chained_irq_enter(%struct.irq_chip* %11, %struct.irq_desc* %12)
  %14 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %3, align 8
  %15 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %3, align 8
  %18 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @irq_reg_readl(i32 %16, i32 %19)
  %21 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %3, align 8
  %22 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %3, align 8
  %25 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @irq_reg_readl(i32 %23, i32 %26)
  %28 = xor i32 %27, -1
  %29 = and i32 %20, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 0
  %35 = call i32 @raw_spin_lock(i32* %34)
  %36 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %37 = call i32 @handle_bad_irq(%struct.irq_desc* %36)
  %38 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %39 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %38, i32 0, i32 0
  %40 = call i32 @raw_spin_unlock(i32* %39)
  br label %61

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ffs(i32 %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %3, align 8
  %52 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @irq_linear_revmap(i32 %53, i32 %54)
  %56 = call i32 @generic_handle_irq(i32 %55)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %42, label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %63 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %64 = call i32 @chained_irq_exit(%struct.irq_chip* %62, %struct.irq_desc* %63)
  ret void
}

declare dso_local %struct.brcmstb_l2_intc_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @irq_reg_readl(i32, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @handle_bad_irq(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
