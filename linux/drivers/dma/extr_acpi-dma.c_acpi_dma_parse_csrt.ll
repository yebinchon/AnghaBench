; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_parse_csrt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_parse_csrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_dma = type { i32 }
%struct.acpi_csrt_group = type { i32 }
%struct.acpi_table_csrt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_table_header = type { i32 }

@ACPI_SIG_CSRT = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to get the CSRT table\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error in parsing resource group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, %struct.acpi_dma*)* @acpi_dma_parse_csrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dma_parse_csrt(%struct.acpi_device* %0, %struct.acpi_dma* %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_dma*, align 8
  %5 = alloca %struct.acpi_csrt_group*, align 8
  %6 = alloca %struct.acpi_csrt_group*, align 8
  %7 = alloca %struct.acpi_table_csrt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_dma* %1, %struct.acpi_dma** %4, align 8
  %10 = load i32, i32* @ACPI_SIG_CSRT, align 4
  %11 = bitcast %struct.acpi_table_csrt** %7 to %struct.acpi_table_header**
  %12 = call i64 @acpi_get_table(i32 %10, i32 0, %struct.acpi_table_header** %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @ACPI_FAILURE(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @AE_NOT_FOUND, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %16
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %7, align 8
  %27 = getelementptr inbounds %struct.acpi_table_csrt, %struct.acpi_table_csrt* %26, i64 1
  %28 = bitcast %struct.acpi_table_csrt* %27 to %struct.acpi_csrt_group*
  store %struct.acpi_csrt_group* %28, %struct.acpi_csrt_group** %5, align 8
  %29 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %7, align 8
  %30 = bitcast %struct.acpi_table_csrt* %29 to i8*
  %31 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %7, align 8
  %32 = getelementptr inbounds %struct.acpi_table_csrt, %struct.acpi_table_csrt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %30, i64 %35
  %37 = bitcast i8* %36 to %struct.acpi_csrt_group*
  store %struct.acpi_csrt_group* %37, %struct.acpi_csrt_group** %6, align 8
  br label %38

38:                                               ; preds = %53, %25
  %39 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %5, align 8
  %40 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %6, align 8
  %41 = icmp ult %struct.acpi_csrt_group* %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %5, align 8
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = load %struct.acpi_dma*, %struct.acpi_dma** %4, align 8
  %46 = call i32 @acpi_dma_parse_resource_group(%struct.acpi_csrt_group* %43, %struct.acpi_device* %44, %struct.acpi_dma* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 0
  %52 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %62

53:                                               ; preds = %42
  %54 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %5, align 8
  %55 = bitcast %struct.acpi_csrt_group* %54 to i8*
  %56 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_csrt_group, %struct.acpi_csrt_group* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to %struct.acpi_csrt_group*
  store %struct.acpi_csrt_group* %61, %struct.acpi_csrt_group** %5, align 8
  br label %38

62:                                               ; preds = %24, %49, %38
  ret void
}

declare dso_local i64 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @acpi_dma_parse_resource_group(%struct.acpi_csrt_group*, %struct.acpi_device*, %struct.acpi_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
