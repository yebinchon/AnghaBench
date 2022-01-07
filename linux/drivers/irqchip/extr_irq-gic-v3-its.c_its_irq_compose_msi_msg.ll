; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.its_device = type { %struct.its_node* }
%struct.its_node = type { i32 (%struct.its_device.0*)* }
%struct.its_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @its_irq_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_irq_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.its_device*, align 8
  %6 = alloca %struct.its_node*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.its_device* %9, %struct.its_device** %5, align 8
  %10 = load %struct.its_device*, %struct.its_device** %5, align 8
  %11 = getelementptr inbounds %struct.its_device, %struct.its_device* %10, i32 0, i32 0
  %12 = load %struct.its_node*, %struct.its_node** %11, align 8
  store %struct.its_node* %12, %struct.its_node** %6, align 8
  %13 = load %struct.its_node*, %struct.its_node** %6, align 8
  %14 = getelementptr inbounds %struct.its_node, %struct.its_node* %13, i32 0, i32 0
  %15 = load i32 (%struct.its_device.0*)*, i32 (%struct.its_device.0*)** %14, align 8
  %16 = load %struct.its_device*, %struct.its_device** %5, align 8
  %17 = bitcast %struct.its_device* %16 to %struct.its_device.0*
  %18 = call i32 %15(%struct.its_device.0* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @lower_32_bits(i32 %19)
  %21 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %22 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @upper_32_bits(i32 %23)
  %25 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %26 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %28 = call i32 @its_get_event_id(%struct.irq_data* %27)
  %29 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %32 = call i32 @irq_data_get_msi_desc(%struct.irq_data* %31)
  %33 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %34 = call i32 @iommu_dma_compose_msi_msg(i32 %32, %struct.msi_msg* %33)
  ret void
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i32 @iommu_dma_compose_msi_msg(i32, %struct.msi_msg*) #1

declare dso_local i32 @irq_data_get_msi_desc(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
