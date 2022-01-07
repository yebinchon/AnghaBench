; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_dmi_sel_raw_read_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_dmi_sel_raw_read_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_sysfs_entry = type { i32 }
%struct.dmi_header = type { i32 }
%struct.dmi_read_state = type { i32, i32, i32 }
%struct.dmi_system_event_log = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dmi-sysfs: GPNV support missing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"dmi-sysfs: Unknown access method %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_sysfs_entry*, %struct.dmi_header*, i8*)* @dmi_sel_raw_read_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmi_sel_raw_read_helper(%struct.dmi_sysfs_entry* %0, %struct.dmi_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmi_sysfs_entry*, align 8
  %6 = alloca %struct.dmi_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dmi_read_state*, align 8
  %9 = alloca %struct.dmi_system_event_log, align 4
  store %struct.dmi_sysfs_entry* %0, %struct.dmi_sysfs_entry** %5, align 8
  store %struct.dmi_header* %1, %struct.dmi_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.dmi_read_state*
  store %struct.dmi_read_state* %11, %struct.dmi_read_state** %8, align 8
  %12 = load %struct.dmi_header*, %struct.dmi_header** %6, align 8
  %13 = call i32 @dmi_entry_length(%struct.dmi_header* %12)
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 4, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.dmi_header*, %struct.dmi_header** %6, align 8
  %21 = call i32 @memcpy(%struct.dmi_system_event_log* %9, %struct.dmi_header* %20, i32 4)
  %22 = getelementptr inbounds %struct.dmi_system_event_log, %struct.dmi_system_event_log* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %52 [
    i32 129, label %24
    i32 130, label %24
    i32 131, label %24
    i32 128, label %36
    i32 132, label %48
  ]

24:                                               ; preds = %19, %19, %19
  %25 = load %struct.dmi_sysfs_entry*, %struct.dmi_sysfs_entry** %5, align 8
  %26 = load %struct.dmi_read_state*, %struct.dmi_read_state** %8, align 8
  %27 = getelementptr inbounds %struct.dmi_read_state, %struct.dmi_read_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dmi_read_state*, %struct.dmi_read_state** %8, align 8
  %30 = getelementptr inbounds %struct.dmi_read_state, %struct.dmi_read_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dmi_read_state*, %struct.dmi_read_state** %8, align 8
  %33 = getelementptr inbounds %struct.dmi_read_state, %struct.dmi_read_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dmi_sel_raw_read_io(%struct.dmi_sysfs_entry* %25, %struct.dmi_system_event_log* %9, i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %19
  %37 = load %struct.dmi_sysfs_entry*, %struct.dmi_sysfs_entry** %5, align 8
  %38 = load %struct.dmi_read_state*, %struct.dmi_read_state** %8, align 8
  %39 = getelementptr inbounds %struct.dmi_read_state, %struct.dmi_read_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dmi_read_state*, %struct.dmi_read_state** %8, align 8
  %42 = getelementptr inbounds %struct.dmi_read_state, %struct.dmi_read_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dmi_read_state*, %struct.dmi_read_state** %8, align 8
  %45 = getelementptr inbounds %struct.dmi_read_state, %struct.dmi_read_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dmi_sel_raw_read_phys32(%struct.dmi_sysfs_entry* %37, %struct.dmi_system_event_log* %9, i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %19
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %19
  %53 = getelementptr inbounds %struct.dmi_system_event_log, %struct.dmi_system_event_log* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %48, %36, %24, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @dmi_entry_length(%struct.dmi_header*) #1

declare dso_local i32 @memcpy(%struct.dmi_system_event_log*, %struct.dmi_header*, i32) #1

declare dso_local i32 @dmi_sel_raw_read_io(%struct.dmi_sysfs_entry*, %struct.dmi_system_event_log*, i32, i32, i32) #1

declare dso_local i32 @dmi_sel_raw_read_phys32(%struct.dmi_sysfs_entry*, %struct.dmi_system_event_log*, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
