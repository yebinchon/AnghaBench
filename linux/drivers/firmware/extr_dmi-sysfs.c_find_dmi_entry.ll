; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_find_dmi_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_find_dmi_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_sysfs_entry = type { i32 }
%struct.find_dmi_data = type { i8*, i32, i32, i32, %struct.dmi_sysfs_entry* }

@EIO = common dso_local global i32 0, align 4
@find_dmi_entry_helper = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_sysfs_entry*, i32, i8*)* @find_dmi_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dmi_entry(%struct.dmi_sysfs_entry* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmi_sysfs_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.find_dmi_data, align 8
  %9 = alloca i32, align 4
  store %struct.dmi_sysfs_entry* %0, %struct.dmi_sysfs_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %8, i32 0, i32 0
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %8, i32 0, i32 1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %8, i32 0, i32 2
  %16 = load %struct.dmi_sysfs_entry*, %struct.dmi_sysfs_entry** %5, align 8
  %17 = getelementptr inbounds %struct.dmi_sysfs_entry, %struct.dmi_sysfs_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %8, i32 0, i32 3
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %8, i32 0, i32 4
  %22 = load %struct.dmi_sysfs_entry*, %struct.dmi_sysfs_entry** %5, align 8
  store %struct.dmi_sysfs_entry* %22, %struct.dmi_sysfs_entry** %21, align 8
  %23 = load i32, i32* @find_dmi_entry_helper, align 4
  %24 = call i32 @dmi_walk(i32 %23, %struct.find_dmi_data* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @dmi_walk(i32, %struct.find_dmi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
