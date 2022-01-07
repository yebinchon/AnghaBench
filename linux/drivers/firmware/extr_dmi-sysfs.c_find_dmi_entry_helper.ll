; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_find_dmi_entry_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_find_dmi_entry_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i64 }
%struct.find_dmi_data = type { i64, i32, i32 (%struct.dmi_sysfs_entry*, %struct.dmi_header.0*, i32)*, i32, %struct.dmi_sysfs_entry.1* }
%struct.dmi_sysfs_entry = type opaque
%struct.dmi_header.0 = type opaque
%struct.dmi_sysfs_entry.1 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmi_header*, i8*)* @find_dmi_entry_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_dmi_entry_helper(%struct.dmi_header* %0, i8* %1) #0 {
  %3 = alloca %struct.dmi_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.find_dmi_data*, align 8
  %6 = alloca %struct.dmi_sysfs_entry.1*, align 8
  store %struct.dmi_header* %0, %struct.dmi_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.find_dmi_data*
  store %struct.find_dmi_data* %8, %struct.find_dmi_data** %5, align 8
  %9 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %10 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %9, i32 0, i32 4
  %11 = load %struct.dmi_sysfs_entry.1*, %struct.dmi_sysfs_entry.1** %10, align 8
  store %struct.dmi_sysfs_entry.1* %11, %struct.dmi_sysfs_entry.1** %6, align 8
  %12 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %13 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dmi_sysfs_entry.1*, %struct.dmi_sysfs_entry.1** %6, align 8
  %16 = getelementptr inbounds %struct.dmi_sysfs_entry.1, %struct.dmi_sysfs_entry.1* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %23 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %28 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %49

31:                                               ; preds = %21
  %32 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %33 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %37 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %36, i32 0, i32 2
  %38 = load i32 (%struct.dmi_sysfs_entry*, %struct.dmi_header.0*, i32)*, i32 (%struct.dmi_sysfs_entry*, %struct.dmi_header.0*, i32)** %37, align 8
  %39 = load %struct.dmi_sysfs_entry.1*, %struct.dmi_sysfs_entry.1** %6, align 8
  %40 = bitcast %struct.dmi_sysfs_entry.1* %39 to %struct.dmi_sysfs_entry*
  %41 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %42 = bitcast %struct.dmi_header* %41 to %struct.dmi_header.0*
  %43 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %44 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %38(%struct.dmi_sysfs_entry* %40, %struct.dmi_header.0* %42, i32 %45)
  %47 = load %struct.find_dmi_data*, %struct.find_dmi_data** %5, align 8
  %48 = getelementptr inbounds %struct.find_dmi_data, %struct.find_dmi_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %31, %26, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
