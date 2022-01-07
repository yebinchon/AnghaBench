; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.acpi_device = type { i32 }
%struct.list_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@i2c_acpi_add_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_acpi_get_irq(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.list_head, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call %struct.acpi_device* @ACPI_COMPANION(i32* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %4, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = load i32, i32* @i2c_acpi_add_resource, align 4
  %16 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %14, %struct.list_head* %5, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = call i32 @acpi_dev_free_resource_list(%struct.list_head* %5)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = call i32 @acpi_dev_gpio_irq_get(%struct.acpi_device* %28, i32 0)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32, i32*) #1

declare dso_local i32 @acpi_dev_free_resource_list(%struct.list_head*) #1

declare dso_local i32 @acpi_dev_gpio_irq_get(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
