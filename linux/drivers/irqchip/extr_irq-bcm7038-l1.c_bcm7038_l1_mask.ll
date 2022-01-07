; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c_bcm7038_l1_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm7038-l1.c_bcm7038_l1_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.bcm7038_l1_chip = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @bcm7038_l1_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm7038_l1_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.bcm7038_l1_chip*, align 8
  %4 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.bcm7038_l1_chip* %6, %struct.bcm7038_l1_chip** %3, align 8
  %7 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %3, align 8
  %8 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %3, align 8
  %13 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__bcm7038_l1_mask(%struct.irq_data* %11, i32 %19)
  %21 = load %struct.bcm7038_l1_chip*, %struct.bcm7038_l1_chip** %3, align 8
  %22 = getelementptr inbounds %struct.bcm7038_l1_chip, %struct.bcm7038_l1_chip* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @raw_spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local %struct.bcm7038_l1_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__bcm7038_l1_mask(%struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
