; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_package_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_package_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.acpi_object* }

@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_object*)* @acpi_gpio_package_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_gpio_package_count(%union.acpi_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_object* %0, %union.acpi_object** %3, align 8
  %7 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %8 = bitcast %union.acpi_object* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  store %union.acpi_object* %10, %union.acpi_object** %4, align 8
  %11 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %12 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %13 = bitcast %union.acpi_object* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %11, i64 %16
  store %union.acpi_object* %17, %union.acpi_object** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %37, %1
  %19 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %20 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %21 = icmp ult %union.acpi_object* %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %24 = bitcast %union.acpi_object* %23 to i32*
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %34 [
    i32 128, label %26
    i32 129, label %29
  ]

26:                                               ; preds = %22
  %27 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %28 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %27, i64 3
  store %union.acpi_object* %28, %union.acpi_object** %4, align 8
  br label %29

29:                                               ; preds = %22, %26
  %30 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %31 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %30, i32 1
  store %union.acpi_object* %31, %union.acpi_object** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EPROTO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %29
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
