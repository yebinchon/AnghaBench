; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.kfd_process = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@kfd_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Process %d (32-bit) failed to open /dev/kfd\0A32-bit processes are not supported by amdkfd\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"process %d opened, compat mode (32 bit) - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kfd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i64 @iminor(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = call i32 (...) @in_compat_syscall()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @kfd_device, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %14
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = call %struct.kfd_process* @kfd_create_process(%struct.file* %27)
  store %struct.kfd_process* %28, %struct.kfd_process** %6, align 8
  %29 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %30 = call i64 @IS_ERR(%struct.kfd_process* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.kfd_process* %33)
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %26
  %36 = call i64 (...) @kfd_is_locked()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @kfd_device, align 4
  %43 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %47 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %38, %32, %18, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @iminor(%struct.inode*) #1

declare dso_local i32 @in_compat_syscall(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local %struct.kfd_process* @kfd_create_process(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process*) #1

declare dso_local i32 @PTR_ERR(%struct.kfd_process*) #1

declare dso_local i64 @kfd_is_locked(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
