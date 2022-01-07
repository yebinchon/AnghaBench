; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_acpi_dma_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_chan = type opaque
%struct.acpi_dma_spec = type opaque
%struct.acpi_dma = type { %struct.dma_chan* (%struct.acpi_dma_spec.0*, %struct.acpi_dma*)*, i32, i8*, %struct.device* }
%struct.acpi_dma_spec.0 = type opaque
%struct.acpi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_dma_lock = common dso_local global i32 0, align 4
@acpi_dma_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dma_controller_register(%struct.device* %0, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.acpi_dma*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %1, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %6, align 8
  %14 = icmp ne %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %53

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %19)
  store %struct.acpi_device* %20, %struct.acpi_device** %8, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %22 = icmp ne %struct.acpi_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %18
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.acpi_dma* @kzalloc(i32 32, i32 %27)
  store %struct.acpi_dma* %28, %struct.acpi_dma** %9, align 8
  %29 = load %struct.acpi_dma*, %struct.acpi_dma** %9, align 8
  %30 = icmp ne %struct.acpi_dma* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.acpi_dma*, %struct.acpi_dma** %9, align 8
  %37 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %36, i32 0, i32 3
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %6, align 8
  %39 = bitcast %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %38 to %struct.dma_chan* (%struct.acpi_dma_spec.0*, %struct.acpi_dma*)*
  %40 = load %struct.acpi_dma*, %struct.acpi_dma** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %40, i32 0, i32 0
  store %struct.dma_chan* (%struct.acpi_dma_spec.0*, %struct.acpi_dma*)* %39, %struct.dma_chan* (%struct.acpi_dma_spec.0*, %struct.acpi_dma*)** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.acpi_dma*, %struct.acpi_dma** %9, align 8
  %44 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %46 = load %struct.acpi_dma*, %struct.acpi_dma** %9, align 8
  %47 = call i32 @acpi_dma_parse_csrt(%struct.acpi_device* %45, %struct.acpi_dma* %46)
  %48 = call i32 @mutex_lock(i32* @acpi_dma_lock)
  %49 = load %struct.acpi_dma*, %struct.acpi_dma** %9, align 8
  %50 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %49, i32 0, i32 1
  %51 = call i32 @list_add_tail(i32* %50, i32* @acpi_dma_list)
  %52 = call i32 @mutex_unlock(i32* @acpi_dma_lock)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %34, %31, %23, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.acpi_dma* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_dma_parse_csrt(%struct.acpi_device*, %struct.acpi_dma*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
