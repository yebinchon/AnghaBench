; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_dmi_sysfs_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_dmi_sysfs_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.dmi_sysfs_entry = type { i32 }
%struct.dmi_sysfs_attribute = type { i32 (%struct.dmi_sysfs_entry*, i8*)* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @dmi_sysfs_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmi_sysfs_attr_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dmi_sysfs_entry*, align 8
  %9 = alloca %struct.dmi_sysfs_attribute*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = call %struct.dmi_sysfs_entry* @to_entry(%struct.kobject* %10)
  store %struct.dmi_sysfs_entry* %11, %struct.dmi_sysfs_entry** %8, align 8
  %12 = load %struct.attribute*, %struct.attribute** %6, align 8
  %13 = call %struct.dmi_sysfs_attribute* @to_attr(%struct.attribute* %12)
  store %struct.dmi_sysfs_attribute* %13, %struct.dmi_sysfs_attribute** %9, align 8
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.dmi_sysfs_attribute*, %struct.dmi_sysfs_attribute** %9, align 8
  %22 = getelementptr inbounds %struct.dmi_sysfs_attribute, %struct.dmi_sysfs_attribute* %21, i32 0, i32 0
  %23 = load i32 (%struct.dmi_sysfs_entry*, i8*)*, i32 (%struct.dmi_sysfs_entry*, i8*)** %22, align 8
  %24 = load %struct.dmi_sysfs_entry*, %struct.dmi_sysfs_entry** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 %23(%struct.dmi_sysfs_entry* %24, i8* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.dmi_sysfs_entry* @to_entry(%struct.kobject*) #1

declare dso_local %struct.dmi_sysfs_attribute* @to_attr(%struct.attribute*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
