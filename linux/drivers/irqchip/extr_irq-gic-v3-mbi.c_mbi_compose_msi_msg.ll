; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-mbi.c_mbi_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }

@mbi_phys_base = common dso_local global i64 0, align 8
@GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @mbi_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbi_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %5 = load i64, i64* @mbi_phys_base, align 8
  %6 = load i64, i64* @GICD_SETSPI_NSR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @upper_32_bits(i64 %7)
  %9 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %10 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %9, i64 0
  %11 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 4
  %12 = load i64, i64* @mbi_phys_base, align 8
  %13 = load i64, i64* @GICD_SETSPI_NSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @lower_32_bits(i64 %14)
  %16 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %17 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %16, i64 0
  %18 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %25 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %24, i64 0
  %26 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %28 = call i32 @irq_data_get_msi_desc(%struct.irq_data* %27)
  %29 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %30 = call i32 @iommu_dma_compose_msi_msg(i32 %28, %struct.msi_msg* %29)
  ret void
}

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @iommu_dma_compose_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @irq_data_get_msi_desc(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
