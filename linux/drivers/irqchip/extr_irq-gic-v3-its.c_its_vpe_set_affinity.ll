; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.its_vpe = type { i32 }

@IRQ_SET_MASK_OK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @its_vpe_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vpe_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.its_vpe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.its_vpe* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.its_vpe* %11, %struct.its_vpe** %7, align 8
  %12 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %13 = call i32 @cpumask_first(%struct.cpumask* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.its_vpe*, %struct.its_vpe** %7, align 8
  %15 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.its_vpe*, %struct.its_vpe** %7, align 8
  %21 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.its_vpe*, %struct.its_vpe** %7, align 8
  %25 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.its_vpe*, %struct.its_vpe** %7, align 8
  %27 = call i32 @its_send_vmovp(%struct.its_vpe* %26)
  %28 = load %struct.its_vpe*, %struct.its_vpe** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @its_vpe_db_proxy_move(%struct.its_vpe* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %3
  %33 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cpumask_of(i32 %34)
  %36 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %33, i32 %35)
  %37 = load i32, i32* @IRQ_SET_MASK_OK_DONE, align 4
  ret i32 %37
}

declare dso_local %struct.its_vpe* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @its_send_vmovp(%struct.its_vpe*) #1

declare dso_local i32 @its_vpe_db_proxy_move(%struct.its_vpe*, i32, i32) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
