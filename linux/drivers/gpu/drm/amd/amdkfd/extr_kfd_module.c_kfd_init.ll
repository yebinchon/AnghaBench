; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_module.c_kfd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_module.c_kfd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sched_policy = common dso_local global i64 0, align 8
@KFD_SCHED_POLICY_HWS = common dso_local global i64 0, align 8
@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"sched_policy has invalid value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max_num_of_queues_per_device = common dso_local global i32 0, align 4
@KFD_MAX_NUM_OF_QUEUES_PER_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"max_num_of_queues_per_device must be between 1 to KFD_MAX_NUM_OF_QUEUES_PER_DEVICE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kfd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @sched_policy, align 8
  %4 = load i64, i64* @KFD_SCHED_POLICY_HWS, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @sched_policy, align 8
  %8 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %0
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %49

14:                                               ; preds = %6
  %15 = load i32, i32* @max_num_of_queues_per_device, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @max_num_of_queues_per_device, align 4
  %19 = load i32, i32* @KFD_MAX_NUM_OF_QUEUES_PER_DEVICE, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %14
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %49

25:                                               ; preds = %17
  %26 = call i32 (...) @kfd_chardev_init()
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %47

30:                                               ; preds = %25
  %31 = call i32 (...) @kfd_topology_init()
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %45

35:                                               ; preds = %30
  %36 = call i32 (...) @kfd_process_create_wq()
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = call i32 (...) @kfd_procfs_init()
  %42 = call i32 (...) @kfd_debugfs_init()
  store i32 0, i32* %1, align 4
  br label %49

43:                                               ; preds = %39
  %44 = call i32 (...) @kfd_topology_shutdown()
  br label %45

45:                                               ; preds = %43, %34
  %46 = call i32 (...) @kfd_chardev_exit()
  br label %47

47:                                               ; preds = %45, %29
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %40, %21, %10
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfd_chardev_init(...) #1

declare dso_local i32 @kfd_topology_init(...) #1

declare dso_local i32 @kfd_process_create_wq(...) #1

declare dso_local i32 @kfd_procfs_init(...) #1

declare dso_local i32 @kfd_debugfs_init(...) #1

declare dso_local i32 @kfd_topology_shutdown(...) #1

declare dso_local i32 @kfd_chardev_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
