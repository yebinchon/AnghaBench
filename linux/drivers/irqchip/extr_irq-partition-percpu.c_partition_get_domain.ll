; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_get_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_get_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.partition_desc = type { %struct.irq_domain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @partition_get_domain(%struct.partition_desc* %0) #0 {
  %2 = alloca %struct.irq_domain*, align 8
  %3 = alloca %struct.partition_desc*, align 8
  store %struct.partition_desc* %0, %struct.partition_desc** %3, align 8
  %4 = load %struct.partition_desc*, %struct.partition_desc** %3, align 8
  %5 = icmp ne %struct.partition_desc* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.partition_desc*, %struct.partition_desc** %3, align 8
  %8 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %7, i32 0, i32 0
  %9 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  store %struct.irq_domain* %9, %struct.irq_domain** %2, align 8
  br label %11

10:                                               ; preds = %1
  store %struct.irq_domain* null, %struct.irq_domain** %2, align 8
  br label %11

11:                                               ; preds = %10, %6
  %12 = load %struct.irq_domain*, %struct.irq_domain** %2, align 8
  ret %struct.irq_domain* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
