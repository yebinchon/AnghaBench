; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_svc_get_sh_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_svc_get_sh_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stratix10_svc_sh_memory = type { i64, i64, i32 }
%struct.task_struct = type { i32 }

@svc_normal_to_secure_shm_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"svc_smc_hvc_shm_thread\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"fail to create stratix10_svc_smc_shm_thread\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"timeout to get sh-memory paras from secure world\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"failed to get shared memory info from secure world\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"SM software provides paddr: 0x%016x, size: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stratix10_svc_sh_memory*)* @svc_get_sh_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_get_sh_memory(%struct.platform_device* %0, %struct.stratix10_svc_sh_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stratix10_svc_sh_memory*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stratix10_svc_sh_memory* %1, %struct.stratix10_svc_sh_memory** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %12 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %11, i32 0, i32 2
  %13 = call i32 @init_completion(i32* %12)
  %14 = load i32, i32* @svc_normal_to_secure_shm_thread, align 4
  %15 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %16 = bitcast %struct.stratix10_svc_sh_memory* %15 to i8*
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @cpu_to_node(i32 %17)
  %19 = call %struct.task_struct* @kthread_create_on_node(i32 %14, i8* %16, i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %19, %struct.task_struct** %7, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %21 = call i64 @IS_ERR(%struct.task_struct* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = call i32 @wake_up_process(%struct.task_struct* %29)
  %31 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %32 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %31, i32 0, i32 2
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 10, %33
  %35 = call i32 @wait_for_completion_timeout(i32* %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %68

42:                                               ; preds = %28
  %43 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %44 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %49 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %60 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %5, align 8
  %64 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %57, %52, %37, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.task_struct* @kthread_create_on_node(i32, i8*, i32, i8*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
