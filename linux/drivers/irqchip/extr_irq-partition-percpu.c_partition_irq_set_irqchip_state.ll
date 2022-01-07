; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_set_irqchip_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_set_irqchip_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.partition_desc = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32, i32)* @partition_irq_set_irqchip_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_irq_set_irqchip_state(%struct.irq_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.partition_desc*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %12 = call %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.partition_desc* %12, %struct.partition_desc** %8, align 8
  %13 = load %struct.partition_desc*, %struct.partition_desc** %8, align 8
  %14 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.irq_chip* @irq_desc_get_chip(i32 %15)
  store %struct.irq_chip* %16, %struct.irq_chip** %9, align 8
  %17 = load %struct.partition_desc*, %struct.partition_desc** %8, align 8
  %18 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.irq_data* @irq_desc_get_irq_data(i32 %19)
  store %struct.irq_data* %20, %struct.irq_data** %10, align 8
  %21 = load %struct.partition_desc*, %struct.partition_desc** %8, align 8
  %22 = call i32 (...) @smp_processor_id()
  %23 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @partition_check_cpu(%struct.partition_desc* %21, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %30 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %29, i32 0, i32 0
  %31 = load i32 (%struct.irq_data*, i32, i32)*, i32 (%struct.irq_data*, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.irq_data*, i32, i32)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %35 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %34, i32 0, i32 0
  %36 = load i32 (%struct.irq_data*, i32, i32)*, i32 (%struct.irq_data*, i32, i32)** %35, align 8
  %37 = load %struct.irq_data*, %struct.irq_data** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 %36(%struct.irq_data* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %28, %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
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
