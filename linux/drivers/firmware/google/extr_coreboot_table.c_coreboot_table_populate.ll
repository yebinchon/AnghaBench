; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_coreboot_table.c_coreboot_table_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_coreboot_table.c_coreboot_table_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coreboot_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.device* }
%struct.coreboot_table_entry = type { i64 }
%struct.coreboot_table_header = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"coreboot%d\00", align 1
@coreboot_bus_type = common dso_local global i32 0, align 4
@coreboot_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @coreboot_table_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreboot_table_populate(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.coreboot_device*, align 8
  %10 = alloca %struct.coreboot_table_entry*, align 8
  %11 = alloca %struct.coreboot_table_header*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.coreboot_table_header*
  store %struct.coreboot_table_header* %13, %struct.coreboot_table_header** %11, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.coreboot_table_header*, %struct.coreboot_table_header** %11, align 8
  %16 = getelementptr inbounds %struct.coreboot_table_header, %struct.coreboot_table_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  store i8* %19, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %79, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.coreboot_table_header*, %struct.coreboot_table_header** %11, align 8
  %23 = getelementptr inbounds %struct.coreboot_table_header, %struct.coreboot_table_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.coreboot_table_entry*
  store %struct.coreboot_table_entry* %28, %struct.coreboot_table_entry** %10, align 8
  %29 = load %struct.coreboot_table_entry*, %struct.coreboot_table_entry** %10, align 8
  %30 = getelementptr inbounds %struct.coreboot_table_entry, %struct.coreboot_table_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 4, %31
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.coreboot_device* @kzalloc(i64 %32, i32 %33)
  store %struct.coreboot_device* %34, %struct.coreboot_device** %9, align 8
  %35 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %36 = icmp ne %struct.coreboot_device* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %26
  %41 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %42 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_set_name(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %47 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store %struct.device* %45, %struct.device** %48, align 8
  %49 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %50 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32* @coreboot_bus_type, i32** %51, align 8
  %52 = load i32, i32* @coreboot_device_release, align 4
  %53 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %54 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %57 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %56, i32 0, i32 1
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.coreboot_table_entry*, %struct.coreboot_table_entry** %10, align 8
  %60 = getelementptr inbounds %struct.coreboot_table_entry, %struct.coreboot_table_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i32* %57, i8* %58, i64 %61)
  %63 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %64 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %63, i32 0, i32 0
  %65 = call i32 @device_register(%struct.TYPE_4__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %40
  %69 = load %struct.coreboot_device*, %struct.coreboot_device** %9, align 8
  %70 = getelementptr inbounds %struct.coreboot_device, %struct.coreboot_device* %69, i32 0, i32 0
  %71 = call i32 @put_device(%struct.TYPE_4__* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %40
  %74 = load %struct.coreboot_table_entry*, %struct.coreboot_table_entry** %10, align 8
  %75 = getelementptr inbounds %struct.coreboot_table_entry, %struct.coreboot_table_entry* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr i8, i8* %77, i64 %76
  store i8* %78, i8** %8, align 8
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %20

82:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %68, %37
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.coreboot_device* @kzalloc(i64, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
