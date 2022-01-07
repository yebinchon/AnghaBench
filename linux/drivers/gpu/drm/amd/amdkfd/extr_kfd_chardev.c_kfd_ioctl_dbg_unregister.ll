; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_dbg_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_dbg_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_dbg_unregister_args = type { i32 }
%struct.kfd_dev = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CHIP_CARRIZO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"kfd_ioctl_dbg_unregister not supported on CZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_dbg_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_dbg_unregister(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_dbg_unregister_args*, align 8
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.kfd_ioctl_dbg_unregister_args*
  store %struct.kfd_ioctl_dbg_unregister_args* %12, %struct.kfd_ioctl_dbg_unregister_args** %8, align 8
  %13 = load %struct.kfd_ioctl_dbg_unregister_args*, %struct.kfd_ioctl_dbg_unregister_args** %8, align 8
  %14 = getelementptr inbounds %struct.kfd_ioctl_dbg_unregister_args, %struct.kfd_ioctl_dbg_unregister_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.kfd_dev* @kfd_device_by_id(i32 %15)
  store %struct.kfd_dev* %16, %struct.kfd_dev** %9, align 8
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %18 = icmp ne %struct.kfd_dev* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %21 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %19
  %28 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %29 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHIP_CARRIZO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %27
  %40 = call i32 (...) @kfd_get_dbgmgr_mutex()
  %41 = call i32 @mutex_lock(i32 %40)
  %42 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %43 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %46 = call i64 @kfd_dbgmgr_unregister(i32* %44, %struct.kfd_process* %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %51 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfd_dbgmgr_destroy(i32* %52)
  %54 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %55 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %39
  %57 = call i32 (...) @kfd_get_dbgmgr_mutex()
  %58 = call i32 @mutex_unlock(i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %35, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @kfd_get_dbgmgr_mutex(...) #1

declare dso_local i64 @kfd_dbgmgr_unregister(i32*, %struct.kfd_process*) #1

declare dso_local i32 @kfd_dbgmgr_destroy(i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
