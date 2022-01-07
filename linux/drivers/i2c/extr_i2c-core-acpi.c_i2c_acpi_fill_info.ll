; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-acpi.c_i2c_acpi_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.i2c_acpi_lookup = type { i32, i32, i32, i32, i32, %struct.i2c_board_info* }
%struct.i2c_board_info = type { i32, i64 }
%struct.acpi_resource_i2c_serialbus = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_I2C_10BIT_MODE = common dso_local global i64 0, align 8
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @i2c_acpi_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_acpi_fill_info(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_acpi_lookup*, align 8
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.acpi_resource_i2c_serialbus*, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.i2c_acpi_lookup*
  store %struct.i2c_acpi_lookup* %11, %struct.i2c_acpi_lookup** %6, align 8
  %12 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %12, i32 0, i32 5
  %14 = load %struct.i2c_board_info*, %struct.i2c_board_info** %13, align 8
  store %struct.i2c_board_info* %14, %struct.i2c_board_info** %7, align 8
  %15 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %16 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %21 = call i32 @i2c_acpi_get_i2c_resource(%struct.acpi_resource* %20, %struct.acpi_resource_i2c_serialbus** %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %2
  store i32 1, i32* %3, align 4
  br label %77

24:                                               ; preds = %19
  %25 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %77

39:                                               ; preds = %29, %24
  %40 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %8, align 8
  %44 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %47, i32 0, i32 2
  %49 = call i32 @acpi_get_handle(i32 %42, i32 %46, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %77

54:                                               ; preds = %39
  %55 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %8, align 8
  %56 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %59 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %8, align 8
  %61 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.i2c_acpi_lookup*, %struct.i2c_acpi_lookup** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_acpi_lookup, %struct.i2c_acpi_lookup* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.acpi_resource_i2c_serialbus*, %struct.acpi_resource_i2c_serialbus** %8, align 8
  %66 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_I2C_10BIT_MODE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %54
  %71 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %54
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %53, %38, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_acpi_get_i2c_resource(%struct.acpi_resource*, %struct.acpi_resource_i2c_serialbus**) #1

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
