; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_add_mc_with_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_add_mc_with_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_5__**, %struct.csrow_info** }
%struct.TYPE_5__ = type { i64 }
%struct.csrow_info = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.attribute_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mem_ctls_mutex = common dso_local global i32 0, align 4
@edac_mc_owner = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to create sysfs device\0A\00", align 1
@OP_RUNNING_POLL = common dso_local global i32 0, align 4
@edac_mc_workq_function = common dso_local global i32 0, align 4
@OP_RUNNING_INTERRUPT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Giving out device to module %s controller %s: DEV %s (%s)\0A\00", align 1
@edac_debug_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edac_mc_add_mc_with_groups(%struct.mem_ctl_info* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @mutex_lock(i32* @mem_ctls_mutex)
  %11 = load i64, i64* @edac_mc_owner, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i64, i64* @edac_mc_owner, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %88

22:                                               ; preds = %13, %2
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %24 = call i64 @add_mc_to_global_list(%struct.mem_ctl_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %88

27:                                               ; preds = %22
  %28 = load i32, i32* @jiffies, align 4
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %30 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = call i32 (...) @edac_get_sysfs_subsys()
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %33 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %35 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %36 = call i64 @edac_create_sysfs_mci_device(%struct.mem_ctl_info* %34, %struct.attribute_group** %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %40 = load i32, i32* @KERN_WARNING, align 4
  %41 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @edac_mc_printk(%struct.mem_ctl_info* %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %85

42:                                               ; preds = %27
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %44 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32, i32* @OP_RUNNING_POLL, align 4
  %49 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %50 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %52 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %51, i32 0, i32 6
  %53 = load i32, i32* @edac_mc_workq_function, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  %55 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %56 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %55, i32 0, i32 6
  %57 = call i32 (...) @edac_mc_get_poll_msec()
  %58 = call i32 @msecs_to_jiffies(i32 %57)
  %59 = call i32 @edac_queue_work(i32* %56, i32 %58)
  br label %64

60:                                               ; preds = %42
  %61 = load i32, i32* @OP_RUNNING_INTERRUPT, align 4
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %63 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %47
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %68 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %71 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %74 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %77 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @edac_op_state_to_string(i32 %78)
  %80 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @edac_mc_printk(%struct.mem_ctl_info* %65, i32 %66, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %69, i32 %72, i32 %75, i32 %79)
  %81 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %82 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* @edac_mc_owner, align 8
  %84 = call i32 @mutex_unlock(i32* @mem_ctls_mutex)
  store i32 0, i32* %3, align 4
  br label %91

85:                                               ; preds = %38
  %86 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %87 = call i32 @del_mc_from_global_list(%struct.mem_ctl_info* %86)
  br label %88

88:                                               ; preds = %85, %26, %19
  %89 = call i32 @mutex_unlock(i32* @mem_ctls_mutex)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %64
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @add_mc_to_global_list(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_get_sysfs_subsys(...) #1

declare dso_local i64 @edac_create_sysfs_mci_device(%struct.mem_ctl_info*, %struct.attribute_group**) #1

declare dso_local i32 @edac_mc_printk(%struct.mem_ctl_info*, i32, i8*, ...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @edac_queue_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @edac_mc_get_poll_msec(...) #1

declare dso_local i32 @edac_op_state_to_string(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_mc_from_global_list(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
