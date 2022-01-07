; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_edac_remove_sysfs_mci_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_edac_remove_sysfs_mci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.dimm_info**, i32 }
%struct.dimm_info = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unregistering device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edac_remove_sysfs_mci_device(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dimm_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %5 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 1
  %15 = load %struct.dimm_info**, %struct.dimm_info*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dimm_info*, %struct.dimm_info** %15, i64 %17
  %19 = load %struct.dimm_info*, %struct.dimm_info** %18, align 8
  store %struct.dimm_info* %19, %struct.dimm_info** %4, align 8
  %20 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %21 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %33

25:                                               ; preds = %12
  %26 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %27 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %26, i32 0, i32 1
  %28 = call i32 @dev_name(i32* %27)
  %29 = call i32 (i32, i8*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %31 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %30, i32 0, i32 1
  %32 = call i32 @device_unregister(i32* %31)
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
