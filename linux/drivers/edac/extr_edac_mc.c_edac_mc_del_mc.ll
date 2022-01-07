; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_del_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_del_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, i32, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mem_ctls_mutex = common dso_local global i32 0, align 4
@OP_OFFLINE = common dso_local global i32 0, align 4
@edac_mc_owner = common dso_local global i32* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@EDAC_MC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Removed device %d for %s %s: DEV %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_ctl_info* @edac_mc_del_mc(%struct.device* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @mutex_lock(i32* @mem_ctls_mutex)
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mem_ctl_info* @__find_mci_by_dev(%struct.device* %7)
  store %struct.mem_ctl_info* %8, %struct.mem_ctl_info** %4, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %10 = icmp eq %struct.mem_ctl_info* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @mutex_unlock(i32* @mem_ctls_mutex)
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %2, align 8
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* @OP_OFFLINE, align 4
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %18 = call i64 @del_mc_from_global_list(%struct.mem_ctl_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32* null, i32** @edac_mc_owner, align 8
  br label %21

21:                                               ; preds = %20, %13
  %22 = call i32 @mutex_unlock(i32* @mem_ctls_mutex)
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %29 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %28, i32 0, i32 3
  %30 = call i32 @edac_stop_work(i32* %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %33 = call i32 @edac_remove_sysfs_mci_device(%struct.mem_ctl_info* %32)
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = load i32, i32* @EDAC_MC, align 4
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %37 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %40 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %43 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %46 = call i32 @edac_dev_name(%struct.mem_ctl_info* %45)
  %47 = call i32 @edac_printk(i32 %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i32 %46)
  %48 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  store %struct.mem_ctl_info* %48, %struct.mem_ctl_info** %2, align 8
  br label %49

49:                                               ; preds = %31, %11
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  ret %struct.mem_ctl_info* %50
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mem_ctl_info* @__find_mci_by_dev(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @del_mc_from_global_list(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_stop_work(i32*) #1

declare dso_local i32 @edac_remove_sysfs_mci_device(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_printk(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @edac_dev_name(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
