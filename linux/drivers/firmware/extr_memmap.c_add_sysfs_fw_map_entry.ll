; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_memmap.c_add_sysfs_fw_map_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_memmap.c_add_sysfs_fw_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kset = type { i32 }
%struct.firmware_map_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kset*, i64 }

@add_sysfs_fw_map_entry.map_entries_nr = internal global i32 0, align 4
@add_sysfs_fw_map_entry.mmap_kset = internal global %struct.kset* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"memmap\00", align 1
@firmware_kobj = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware_map_entry*)* @add_sysfs_fw_map_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sysfs_fw_map_entry(%struct.firmware_map_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.firmware_map_entry*, align 8
  store %struct.firmware_map_entry* %0, %struct.firmware_map_entry** %3, align 8
  %4 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %3, align 8
  %5 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EEXIST, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.kset*, %struct.kset** @add_sysfs_fw_map_entry.mmap_kset, align 8
  %14 = icmp ne %struct.kset* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @firmware_kobj, align 4
  %17 = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  store %struct.kset* %17, %struct.kset** @add_sysfs_fw_map_entry.mmap_kset, align 8
  %18 = load %struct.kset*, %struct.kset** @add_sysfs_fw_map_entry.mmap_kset, align 8
  %19 = icmp ne %struct.kset* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.kset*, %struct.kset** @add_sysfs_fw_map_entry.mmap_kset, align 8
  %26 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %3, align 8
  %27 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.kset* %25, %struct.kset** %28, align 8
  %29 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %3, align 8
  %30 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %29, i32 0, i32 0
  %31 = load i32, i32* @add_sysfs_fw_map_entry.map_entries_nr, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @add_sysfs_fw_map_entry.map_entries_nr, align 4
  %33 = call i64 @kobject_add(%struct.TYPE_3__* %30, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.firmware_map_entry*, %struct.firmware_map_entry** %3, align 8
  %37 = getelementptr inbounds %struct.firmware_map_entry, %struct.firmware_map_entry* %36, i32 0, i32 0
  %38 = call i32 @kobject_put(%struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %35, %24
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %20, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.kset* @kset_create_and_add(i8*, i32*, i32) #1

declare dso_local i64 @kobject_add(%struct.TYPE_3__*, i32*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
