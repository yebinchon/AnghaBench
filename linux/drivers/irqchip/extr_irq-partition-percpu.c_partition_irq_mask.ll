; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.partition_desc = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @partition_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @partition_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.partition_desc*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.partition_desc* %7, %struct.partition_desc** %3, align 8
  %8 = load %struct.partition_desc*, %struct.partition_desc** %3, align 8
  %9 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.irq_chip* @irq_desc_get_chip(i32 %10)
  store %struct.irq_chip* %11, %struct.irq_chip** %4, align 8
  %12 = load %struct.partition_desc*, %struct.partition_desc** %3, align 8
  %13 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.irq_data* @irq_desc_get_irq_data(i32 %14)
  store %struct.irq_data* %15, %struct.irq_data** %5, align 8
  %16 = load %struct.partition_desc*, %struct.partition_desc** %3, align 8
  %17 = call i32 (...) @smp_processor_id()
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @partition_check_cpu(%struct.partition_desc* %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %25 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %24, i32 0, i32 0
  %26 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %25, align 8
  %27 = icmp ne i32 (%struct.irq_data*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %30 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %29, i32 0, i32 0
  %31 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %30, align 8
  %32 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %33 = call i32 %31(%struct.irq_data* %32)
  br label %34

34:                                               ; preds = %28, %23, %1
  ret void
}

declare dso_local %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(i32) #1

declare dso_local i64 @partition_check_cpu(%struct.partition_desc*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
