; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-acpi.c_acpi_get_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-acpi.c_acpi_get_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @acpi_get_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @acpi_get_child(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @acpi_bus_get_device(i32* %10, %struct.acpi_device** %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32* null, i32** %3, align 8
  br label %27

14:                                               ; preds = %9
  %15 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %15, i32 %16, i32 0)
  store %struct.acpi_device* %17, %struct.acpi_device** %6, align 8
  %18 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %19 = icmp ne %struct.acpi_device* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32* [ %23, %20 ], [ null, %24 ]
  store i32* %26, i32** %3, align 8
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i64 @acpi_bus_get_device(i32*, %struct.acpi_device**) #1

declare dso_local %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
