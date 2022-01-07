; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_acpi.c_dw_dma_acpi_controller_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_acpi.c_dw_dma_acpi_controller_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_dma_acpi_controller_free(%struct.dw_dma* %0) #0 {
  %2 = alloca %struct.dw_dma*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.dw_dma* %0, %struct.dw_dma** %2, align 8
  %4 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %5 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @has_acpi_companion(%struct.device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @acpi_dma_controller_free(%struct.device* %13)
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @has_acpi_companion(%struct.device*) #1

declare dso_local i32 @acpi_dma_controller_free(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
