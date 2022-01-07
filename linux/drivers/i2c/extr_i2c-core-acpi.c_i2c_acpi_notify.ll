; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.acpi_device = type { i32 }
%struct.i2c_board_info = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @i2c_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_acpi_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.i2c_board_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.acpi_device*
  store %struct.acpi_device* %13, %struct.acpi_device** %7, align 8
  %14 = load i64, i64* %5, align 8
  switch i64 %14, label %47 [
    i64 129, label %15
    i64 128, label %30
  ]

15:                                               ; preds = %3
  %16 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %17 = call i32 @i2c_acpi_get_info(%struct.acpi_device* %16, %struct.i2c_board_info* %8, i32* null, i32* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %47

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i32 %21)
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %10, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %24 = icmp ne %struct.i2c_adapter* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %47

26:                                               ; preds = %20
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %28 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %29 = call i32 @i2c_acpi_register_device(%struct.i2c_adapter* %27, %struct.acpi_device* %28, %struct.i2c_board_info* %8)
  br label %47

30:                                               ; preds = %3
  %31 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %32 = call i32 @acpi_device_enumerated(%struct.acpi_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %47

35:                                               ; preds = %30
  %36 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %37 = call %struct.i2c_client* @i2c_acpi_find_client_by_adev(%struct.acpi_device* %36)
  store %struct.i2c_client* %37, %struct.i2c_client** %11, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %39 = icmp ne %struct.i2c_client* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %43 = call i32 @i2c_unregister_device(%struct.i2c_client* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @put_device(i32* %45)
  br label %47

47:                                               ; preds = %3, %41, %40, %34, %26, %25, %19
  %48 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %48
}

declare dso_local i32 @i2c_acpi_get_info(%struct.acpi_device*, %struct.i2c_board_info*, i32*, i32*) #1

declare dso_local %struct.i2c_adapter* @i2c_acpi_find_adapter_by_handle(i32) #1

declare dso_local i32 @i2c_acpi_register_device(%struct.i2c_adapter*, %struct.acpi_device*, %struct.i2c_board_info*) #1

declare dso_local i32 @acpi_device_enumerated(%struct.acpi_device*) #1

declare dso_local %struct.i2c_client* @i2c_acpi_find_client_by_adev(%struct.acpi_device*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
