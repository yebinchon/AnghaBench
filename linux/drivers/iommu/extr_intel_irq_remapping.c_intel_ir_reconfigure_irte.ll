; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_ir_reconfigure_irte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_ir_reconfigure_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.intel_ir_data* }
%struct.intel_ir_data = type { %struct.TYPE_2__, %struct.irte }
%struct.TYPE_2__ = type { i64 }
%struct.irte = type { i32, i32 }
%struct.irq_cfg = type { i32, i32 }

@IRQ_REMAPPING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32)* @intel_ir_reconfigure_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ir_reconfigure_irte(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_ir_data*, align 8
  %6 = alloca %struct.irte*, align 8
  %7 = alloca %struct.irq_cfg*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load %struct.intel_ir_data*, %struct.intel_ir_data** %9, align 8
  store %struct.intel_ir_data* %10, %struct.intel_ir_data** %5, align 8
  %11 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %12 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %11, i32 0, i32 1
  store %struct.irte* %12, %struct.irte** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = call %struct.irq_cfg* @irqd_cfg(%struct.irq_data* %13)
  store %struct.irq_cfg* %14, %struct.irq_cfg** %7, align 8
  %15 = load %struct.irq_cfg*, %struct.irq_cfg** %7, align 8
  %16 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.irte*, %struct.irte** %6, align 8
  %19 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.irq_cfg*, %struct.irq_cfg** %7, align 8
  %21 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IRTE_DEST(i32 %22)
  %24 = load %struct.irte*, %struct.irte** %6, align 8
  %25 = getelementptr inbounds %struct.irte, %struct.irte* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %30 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IRQ_REMAPPING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28, %2
  %36 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %37 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %36, i32 0, i32 0
  %38 = load %struct.irte*, %struct.irte** %6, align 8
  %39 = call i32 @modify_irte(%struct.TYPE_2__* %37, %struct.irte* %38)
  br label %40

40:                                               ; preds = %35, %28
  ret void
}

declare dso_local %struct.irq_cfg* @irqd_cfg(%struct.irq_data*) #1

declare dso_local i32 @IRTE_DEST(i32) #1

declare dso_local i32 @modify_irte(%struct.TYPE_2__*, %struct.irte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
