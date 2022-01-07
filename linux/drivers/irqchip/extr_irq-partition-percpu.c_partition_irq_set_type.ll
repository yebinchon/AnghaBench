; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.partition_desc = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @partition_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.partition_desc*, align 8
  %7 = alloca %struct.irq_chip*, align 8
  %8 = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.partition_desc* %10, %struct.partition_desc** %6, align 8
  %11 = load %struct.partition_desc*, %struct.partition_desc** %6, align 8
  %12 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.irq_chip* @irq_desc_get_chip(i32 %13)
  store %struct.irq_chip* %14, %struct.irq_chip** %7, align 8
  %15 = load %struct.partition_desc*, %struct.partition_desc** %6, align 8
  %16 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.irq_data* @irq_desc_get_irq_data(i32 %17)
  store %struct.irq_data* %18, %struct.irq_data** %8, align 8
  %19 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %20 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %19, i32 0, i32 0
  %21 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.irq_data*, i32)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %25 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %24, i32 0, i32 0
  %26 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %25, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 %26(%struct.irq_data* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.partition_desc* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
