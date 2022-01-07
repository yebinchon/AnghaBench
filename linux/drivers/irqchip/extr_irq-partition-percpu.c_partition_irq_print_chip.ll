; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_print_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_print_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.seq_file = type { i32 }
%struct.partition_desc = type { i32 }
%struct.irq_chip = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c" %5s-%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.seq_file*)* @partition_irq_print_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @partition_irq_print_chip(%struct.irq_data* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.partition_desc*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.partition_desc* %9, %struct.partition_desc** %5, align 8
  %10 = load %struct.partition_desc*, %struct.partition_desc** %5, align 8
  %11 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.irq_chip* @irq_desc_get_chip(i32 %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %6, align 8
  %14 = load %struct.partition_desc*, %struct.partition_desc** %5, align 8
  %15 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.irq_data* @irq_desc_get_irq_data(i32 %16)
  store %struct.irq_data* %17, %struct.irq_data** %7, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %20 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  ret void
}

declare dso_local %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
