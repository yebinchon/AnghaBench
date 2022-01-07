; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v2m.c_gicv2m_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v2m.c_gicv2m_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.msi_msg = type { i64, i32, i32 }
%struct.v2m_data = type { i32, i64 }

@GICV2M_GRAVITON_ADDRESS_ONLY = common dso_local global i32 0, align 4
@GICV2M_NEEDS_SPI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @gicv2m_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gicv2m_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.v2m_data*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.v2m_data* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.v2m_data* %8, %struct.v2m_data** %5, align 8
  %9 = load %struct.v2m_data*, %struct.v2m_data** %5, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @gicv2m_get_msi_addr(%struct.v2m_data* %9, i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @upper_32_bits(i32 %14)
  %16 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %17 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %21 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.v2m_data*, %struct.v2m_data** %5, align 8
  %23 = getelementptr inbounds %struct.v2m_data, %struct.v2m_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GICV2M_GRAVITON_ADDRESS_ONLY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.v2m_data*, %struct.v2m_data** %5, align 8
  %39 = getelementptr inbounds %struct.v2m_data, %struct.v2m_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GICV2M_NEEDS_SPI_OFFSET, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.v2m_data*, %struct.v2m_data** %5, align 8
  %46 = getelementptr inbounds %struct.v2m_data, %struct.v2m_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %49 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %54 = call i32 @irq_data_get_msi_desc(%struct.irq_data* %53)
  %55 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %56 = call i32 @iommu_dma_compose_msi_msg(i32 %54, %struct.msi_msg* %55)
  ret void
}

declare dso_local %struct.v2m_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @gicv2m_get_msi_addr(%struct.v2m_data*, i64) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @iommu_dma_compose_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @irq_data_get_msi_desc(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
