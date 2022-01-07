; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_register_diq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgdev.c_dbgdev_register_diq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgdev = type { %struct.kernel_queue*, i32, i32 }
%struct.kernel_queue = type { i32 }
%struct.queue_properties = type { i32 }

@KFD_QUEUE_TYPE_DIQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to create DIQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DIQ Created with queue id: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error getting DIQ\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dbgdev*)* @dbgdev_register_diq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgdev_register_diq(%struct.kfd_dbgdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dbgdev*, align 8
  %4 = alloca %struct.queue_properties, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernel_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.kfd_dbgdev* %0, %struct.kfd_dbgdev** %3, align 8
  store %struct.kernel_queue* null, %struct.kernel_queue** %6, align 8
  %8 = load i32, i32* @KFD_QUEUE_TYPE_DIQ, align 4
  %9 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %3, align 8
  %11 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %3, align 8
  %14 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pqm_create_queue(i32 %12, i32 %15, i32* null, %struct.queue_properties* %4, i32* %5)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %3, align 8
  %26 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.kernel_queue* @pqm_get_kernel_queue(i32 %27, i32 %28)
  store %struct.kernel_queue* %29, %struct.kernel_queue** %6, align 8
  %30 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %31 = icmp ne %struct.kernel_queue* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %3, align 8
  %35 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pqm_destroy_queue(i32 %36, i32 %37)
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %22
  %42 = load %struct.kernel_queue*, %struct.kernel_queue** %6, align 8
  %43 = load %struct.kfd_dbgdev*, %struct.kfd_dbgdev** %3, align 8
  %44 = getelementptr inbounds %struct.kfd_dbgdev, %struct.kfd_dbgdev* %43, i32 0, i32 0
  store %struct.kernel_queue* %42, %struct.kernel_queue** %44, align 8
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %32, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pqm_create_queue(i32, i32, i32*, %struct.queue_properties*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.kernel_queue* @pqm_get_kernel_queue(i32, i32) #1

declare dso_local i32 @pqm_destroy_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
