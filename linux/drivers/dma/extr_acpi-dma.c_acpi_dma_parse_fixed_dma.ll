; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_parse_fixed_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_parse_fixed_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.acpi_resource_fixed_dma }
%struct.acpi_resource_fixed_dma = type { i32, i32 }
%struct.acpi_dma_parser_data = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ACPI_RESOURCE_TYPE_FIXED_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @acpi_dma_parse_fixed_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dma_parse_fixed_dma(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_resource*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_dma_parser_data*, align 8
  %6 = alloca %struct.acpi_resource_fixed_dma*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.acpi_dma_parser_data*
  store %struct.acpi_dma_parser_data* %8, %struct.acpi_dma_parser_data** %5, align 8
  %9 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACPI_RESOURCE_TYPE_FIXED_DMA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.acpi_resource_fixed_dma* %17, %struct.acpi_resource_fixed_dma** %6, align 8
  %18 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %14
  %28 = load %struct.acpi_resource_fixed_dma*, %struct.acpi_resource_fixed_dma** %6, align 8
  %29 = getelementptr inbounds %struct.acpi_resource_fixed_dma, %struct.acpi_resource_fixed_dma* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.acpi_resource_fixed_dma*, %struct.acpi_resource_fixed_dma** %6, align 8
  %35 = getelementptr inbounds %struct.acpi_resource_fixed_dma, %struct.acpi_resource_fixed_dma* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %5, align 8
  %38 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %40

40:                                               ; preds = %27, %14
  br label %41

41:                                               ; preds = %40, %2
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
