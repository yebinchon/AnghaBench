; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_match_acpi_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_match_acpi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device_id = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"SMO8500\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32*, i32*)* @kxcjk1013_match_acpi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kxcjk1013_match_acpi_device(%struct.device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.acpi_device_id*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.acpi_device_id* @acpi_match_device(i32 %13, %struct.device* %14)
  store %struct.acpi_device_id* %15, %struct.acpi_device_id** %8, align 8
  %16 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %17 = icmp ne %struct.acpi_device_id* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %21 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.acpi_device_id*, %struct.acpi_device_id** %8, align 8
  %29 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i8* @dev_name(%struct.device* %33)
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %27, %18
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
