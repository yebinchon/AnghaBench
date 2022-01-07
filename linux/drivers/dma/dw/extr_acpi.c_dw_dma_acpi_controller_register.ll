; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_acpi.c_dw_dma_acpi_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_acpi.c_dw_dma_acpi_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.acpi_dma_filter_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@dw_dma_acpi_filter = common dso_local global i32 0, align 4
@acpi_dma_simple_xlate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not register acpi_dma_controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_dma_acpi_controller_register(%struct.dw_dma* %0) #0 {
  %2 = alloca %struct.dw_dma*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_dma_filter_info*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_dma* %0, %struct.dw_dma** %2, align 8
  %6 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %7 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @has_acpi_companion(%struct.device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.acpi_dma_filter_info* @devm_kzalloc(%struct.device* %15, i32 8, i32 %16)
  store %struct.acpi_dma_filter_info* %17, %struct.acpi_dma_filter_info** %4, align 8
  %18 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %4, align 8
  %19 = icmp ne %struct.acpi_dma_filter_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_cap_zero(i32 %24)
  %26 = load i32, i32* @DMA_SLAVE, align 4
  %27 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_cap_set(i32 %26, i32 %29)
  %31 = load i32, i32* @dw_dma_acpi_filter, align 4
  %32 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load i32, i32* @acpi_dma_simple_xlate, align 4
  %36 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %4, align 8
  %37 = call i32 @acpi_dma_controller_register(%struct.device* %34, i32 %35, %struct.acpi_dma_filter_info* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %13, %20, %40, %21
  ret void
}

declare dso_local i32 @has_acpi_companion(%struct.device*) #1

declare dso_local %struct.acpi_dma_filter_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @acpi_dma_controller_register(%struct.device*, i32, %struct.acpi_dma_filter_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
