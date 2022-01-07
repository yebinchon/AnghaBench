; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_devm_acpi_dma_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_acpi-dma.c_devm_acpi_dma_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_chan = type opaque
%struct.acpi_dma_spec = type opaque
%struct.acpi_dma = type opaque
%struct.dma_chan.0 = type opaque
%struct.acpi_dma_spec.1 = type opaque
%struct.acpi_dma.2 = type opaque

@devm_acpi_dma_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_acpi_dma_controller_register(%struct.device* %0, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %1, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @devm_acpi_dma_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devres_alloc(i32 %10, i32 0, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %6, align 8
  %21 = bitcast %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %20 to %struct.dma_chan.0* (%struct.acpi_dma_spec.1*, %struct.acpi_dma.2*)*
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @acpi_dma_controller_register(%struct.device* %19, %struct.dma_chan.0* (%struct.acpi_dma_spec.1*, %struct.acpi_dma.2*)* %21, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @devres_free(i8* %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %18
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @devres_add(%struct.device* %31, i8* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %26, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i8* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @acpi_dma_controller_register(%struct.device*, %struct.dma_chan.0* (%struct.acpi_dma_spec.1*, %struct.acpi_dma.2*)*, i8*) #1

declare dso_local i32 @devres_free(i8*) #1

declare dso_local i32 @devres_add(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
