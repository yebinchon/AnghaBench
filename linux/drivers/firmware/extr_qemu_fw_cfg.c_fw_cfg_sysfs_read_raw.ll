; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_sysfs_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_sysfs_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.fw_cfg_sysfs_entry = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @fw_cfg_sysfs_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_cfg_sysfs_read_raw(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fw_cfg_sysfs_entry*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.kobject*, %struct.kobject** %9, align 8
  %16 = call %struct.fw_cfg_sysfs_entry* @to_entry(%struct.kobject* %15)
  store %struct.fw_cfg_sysfs_entry* %16, %struct.fw_cfg_sysfs_entry** %14, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %14, align 8
  %19 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %47

25:                                               ; preds = %6
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %14, align 8
  %28 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp ugt i64 %26, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %14, align 8
  %35 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %14, align 8
  %41 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @fw_cfg_read_blob(i32 %42, i8* %43, i64 %44, i64 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %39, %22
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.fw_cfg_sysfs_entry* @to_entry(%struct.kobject*) #1

declare dso_local i32 @fw_cfg_read_blob(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
