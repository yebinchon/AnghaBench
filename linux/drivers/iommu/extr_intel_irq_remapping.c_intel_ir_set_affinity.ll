; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_ir_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_ir_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__*, %struct.irq_data* }
%struct.TYPE_2__ = type { {}* }
%struct.cpumask = type { i32 }
%struct.irq_cfg = type { i32 }

@IRQ_SET_MASK_OK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @intel_ir_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ir_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca %struct.irq_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 1
  %13 = load %struct.irq_data*, %struct.irq_data** %12, align 8
  store %struct.irq_data* %13, %struct.irq_data** %8, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %15 = call %struct.irq_cfg* @irqd_cfg(%struct.irq_data* %14)
  store %struct.irq_cfg* %15, %struct.irq_cfg** %9, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.irq_data*, %struct.cpumask*, i32)**
  %21 = load i32 (%struct.irq_data*, %struct.cpumask*, i32)*, i32 (%struct.irq_data*, %struct.cpumask*, i32)** %20, align 8
  %22 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %23 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %21(%struct.irq_data* %22, %struct.cpumask* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IRQ_SET_MASK_OK_DONE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %3
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %36 = call i32 @intel_ir_reconfigure_irte(%struct.irq_data* %35, i32 0)
  %37 = load %struct.irq_cfg*, %struct.irq_cfg** %9, align 8
  %38 = call i32 @send_cleanup_vector(%struct.irq_cfg* %37)
  %39 = load i32, i32* @IRQ_SET_MASK_OK_DONE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %32
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.irq_cfg* @irqd_cfg(%struct.irq_data*) #1

declare dso_local i32 @intel_ir_reconfigure_irte(%struct.irq_data*, i32) #1

declare dso_local i32 @send_cleanup_vector(%struct.irq_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
