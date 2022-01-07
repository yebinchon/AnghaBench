; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_dbg_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_dbg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_dbg_register_args = type { i32 }
%struct.kfd_dev = type { %struct.kfd_dbgmgr*, %struct.TYPE_2__* }
%struct.kfd_dbgmgr = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.kfd_process_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHIP_CARRIZO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"kfd_ioctl_dbg_register not supported on CZ\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"debugger already registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_dbg_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_dbg_register(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_dbg_register_args*, align 8
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca %struct.kfd_dbgmgr*, align 8
  %11 = alloca %struct.kfd_process_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.kfd_ioctl_dbg_register_args*
  store %struct.kfd_ioctl_dbg_register_args* %15, %struct.kfd_ioctl_dbg_register_args** %8, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.kfd_ioctl_dbg_register_args*, %struct.kfd_ioctl_dbg_register_args** %8, align 8
  %17 = getelementptr inbounds %struct.kfd_ioctl_dbg_register_args, %struct.kfd_ioctl_dbg_register_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.kfd_dev* @kfd_device_by_id(i32 %18)
  store %struct.kfd_dev* %19, %struct.kfd_dev** %9, align 8
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %21 = icmp ne %struct.kfd_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %91

25:                                               ; preds = %3
  %26 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %27 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHIP_CARRIZO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %91

37:                                               ; preds = %25
  %38 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %39 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = call i32* (...) @kfd_get_dbgmgr_mutex()
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %44 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %45 = call %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %43, %struct.kfd_process* %44)
  store %struct.kfd_process_device* %45, %struct.kfd_process_device** %11, align 8
  %46 = load %struct.kfd_process_device*, %struct.kfd_process_device** %11, align 8
  %47 = call i64 @IS_ERR(%struct.kfd_process_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %struct.kfd_process_device*, %struct.kfd_process_device** %11, align 8
  %51 = call i64 @PTR_ERR(%struct.kfd_process_device* %50)
  store i64 %51, i64* %13, align 8
  br label %83

52:                                               ; preds = %37
  %53 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %54 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %53, i32 0, i32 0
  %55 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %54, align 8
  %56 = icmp ne %struct.kfd_dbgmgr* %55, null
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %59 = call i32 @kfd_dbgmgr_create(%struct.kfd_dbgmgr** %10, %struct.kfd_dev* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %10, align 8
  %64 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %65 = call i64 @kfd_dbgmgr_register(%struct.kfd_dbgmgr* %63, %struct.kfd_process* %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %10, align 8
  %70 = call i32 @kfd_dbgmgr_destroy(%struct.kfd_dbgmgr* %69)
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %10, align 8
  %73 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %74 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %73, i32 0, i32 0
  store %struct.kfd_dbgmgr* %72, %struct.kfd_dbgmgr** %74, align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %57
  br label %82

77:                                               ; preds = %52
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %82, %49
  %84 = call i32* (...) @kfd_get_dbgmgr_mutex()
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %87 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i64, i64* %13, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %83, %33, %22
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kfd_get_dbgmgr_mutex(...) #1

declare dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process_device*) #1

declare dso_local i64 @PTR_ERR(%struct.kfd_process_device*) #1

declare dso_local i32 @kfd_dbgmgr_create(%struct.kfd_dbgmgr**, %struct.kfd_dev*) #1

declare dso_local i64 @kfd_dbgmgr_register(%struct.kfd_dbgmgr*, %struct.kfd_process*) #1

declare dso_local i32 @kfd_dbgmgr_destroy(%struct.kfd_dbgmgr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
