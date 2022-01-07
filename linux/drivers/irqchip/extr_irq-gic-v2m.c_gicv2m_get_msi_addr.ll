; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v2m.c_gicv2m_get_msi_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v2m.c_gicv2m_get_msi_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v2m_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GICV2M_GRAVITON_ADDRESS_ONLY = common dso_local global i32 0, align 4
@V2M_MSI_SETSPI_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v2m_data*, i32)* @gicv2m_get_msi_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv2m_get_msi_addr(%struct.v2m_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v2m_data*, align 8
  %5 = alloca i32, align 4
  store %struct.v2m_data* %0, %struct.v2m_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.v2m_data*, %struct.v2m_data** %4, align 8
  %7 = getelementptr inbounds %struct.v2m_data, %struct.v2m_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GICV2M_GRAVITON_ADDRESS_ONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.v2m_data*, %struct.v2m_data** %4, align 8
  %14 = getelementptr inbounds %struct.v2m_data, %struct.v2m_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 32
  %19 = shl i32 %18, 3
  %20 = or i32 %16, %19
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.v2m_data*, %struct.v2m_data** %4, align 8
  %23 = getelementptr inbounds %struct.v2m_data, %struct.v2m_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @V2M_MSI_SETSPI_NS, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
