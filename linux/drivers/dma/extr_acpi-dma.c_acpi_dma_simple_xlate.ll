; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_simple_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_simple_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.acpi_dma_spec = type { i32 }
%struct.acpi_dma = type { %struct.acpi_dma_filter_info* }
%struct.acpi_dma_filter_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_chan* @acpi_dma_simple_xlate(%struct.acpi_dma_spec* %0, %struct.acpi_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.acpi_dma_spec*, align 8
  %5 = alloca %struct.acpi_dma*, align 8
  %6 = alloca %struct.acpi_dma_filter_info*, align 8
  store %struct.acpi_dma_spec* %0, %struct.acpi_dma_spec** %4, align 8
  store %struct.acpi_dma* %1, %struct.acpi_dma** %5, align 8
  %7 = load %struct.acpi_dma*, %struct.acpi_dma** %5, align 8
  %8 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %7, i32 0, i32 0
  %9 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %8, align 8
  store %struct.acpi_dma_filter_info* %9, %struct.acpi_dma_filter_info** %6, align 8
  %10 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %6, align 8
  %11 = icmp ne %struct.acpi_dma_filter_info* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %6, align 8
  %14 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %27

18:                                               ; preds = %12
  %19 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %4, align 8
  %26 = call %struct.dma_chan* @dma_request_channel(i32 %21, i32 %24, %struct.acpi_dma_spec* %25)
  store %struct.dma_chan* %26, %struct.dma_chan** %3, align 8
  br label %27

27:                                               ; preds = %18, %17
  %28 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %28
}

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.acpi_dma_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
