; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_dev_set_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_dev_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_board_info = type { i64 }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"i2c-%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d-%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, %struct.i2c_client*, %struct.i2c_board_info*)* @i2c_dev_set_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dev_set_name(%struct.i2c_adapter* %0, %struct.i2c_client* %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.i2c_board_info*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %6, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call %struct.acpi_device* @ACPI_COMPANION(i32* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %7, align 8
  %11 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %12 = icmp ne %struct.i2c_board_info* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i32*, i8*, i32, ...) @dev_set_name(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %43

26:                                               ; preds = %13, %3
  %27 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %28 = icmp ne %struct.acpi_device* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %33 = call i32 @acpi_dev_name(%struct.acpi_device* %32)
  %34 = call i32 (i32*, i8*, i32, ...) @dev_set_name(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %43

35:                                               ; preds = %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %39 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = call i32 @i2c_encode_flags_to_addr(%struct.i2c_client* %40)
  %42 = call i32 (i32*, i8*, i32, ...) @dev_set_name(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %35, %29, %18
  ret void
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32, ...) #1

declare dso_local i32 @acpi_dev_name(%struct.acpi_device*) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_encode_flags_to_addr(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
