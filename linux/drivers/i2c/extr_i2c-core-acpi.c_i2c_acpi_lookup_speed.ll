; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_lookup_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_lookup_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_acpi_lookup = type { i64, i64, i64, i64 }
%struct.acpi_device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @i2c_acpi_lookup_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_acpi_lookup_speed(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.i2c_acpi_lookup*, align 8
  %11 = alloca %struct.acpi_device*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.i2c_acpi_lookup*
  store %struct.i2c_acpi_lookup* %13, %struct.i2c_acpi_lookup** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @acpi_bus_get_device(i32 %14, %struct.acpi_device** %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_OK, align 4
  store i32 %18, i32* %5, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %21 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %22 = call i64 @i2c_acpi_do_lookup(%struct.acpi_device* %20, %struct.i2c_acpi_lookup* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @AE_OK, align 4
  store i32 %25, i32* %5, align 4
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %28 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %31 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @AE_OK, align 4
  store i32 %35, i32* %5, align 4
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %38 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %41 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %46 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %10, align 8
  %49 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i32, i32* @AE_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %34, %24, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @i2c_acpi_do_lookup(%struct.acpi_device*, %struct.i2c_acpi_lookup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
