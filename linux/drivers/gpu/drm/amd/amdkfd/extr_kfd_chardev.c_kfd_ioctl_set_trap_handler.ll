; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_set_trap_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_set_trap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_set_trap_handler_args = type { i32, i32, i32 }
%struct.kfd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*, i32*, i32, i32)* }
%struct.kfd_process_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_set_trap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_set_trap_handler(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_set_trap_handler_args*, align 8
  %9 = alloca %struct.kfd_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kfd_process_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.kfd_ioctl_set_trap_handler_args*
  store %struct.kfd_ioctl_set_trap_handler_args* %13, %struct.kfd_ioctl_set_trap_handler_args** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.kfd_ioctl_set_trap_handler_args*, %struct.kfd_ioctl_set_trap_handler_args** %8, align 8
  %15 = getelementptr inbounds %struct.kfd_ioctl_set_trap_handler_args, %struct.kfd_ioctl_set_trap_handler_args* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.kfd_dev* @kfd_device_by_id(i32 %16)
  store %struct.kfd_dev* %17, %struct.kfd_dev** %9, align 8
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %19 = icmp ne %struct.kfd_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %3
  %24 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %25 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %28 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %29 = call %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %27, %struct.kfd_process* %28)
  store %struct.kfd_process_device* %29, %struct.kfd_process_device** %11, align 8
  %30 = load %struct.kfd_process_device*, %struct.kfd_process_device** %11, align 8
  %31 = call i64 @IS_ERR(%struct.kfd_process_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @ESRCH, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %60

36:                                               ; preds = %23
  %37 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %38 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_4__*, i32*, i32, i32)*, i64 (%struct.TYPE_4__*, i32*, i32, i32)** %41, align 8
  %43 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %44 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.kfd_process_device*, %struct.kfd_process_device** %11, align 8
  %47 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %46, i32 0, i32 0
  %48 = load %struct.kfd_ioctl_set_trap_handler_args*, %struct.kfd_ioctl_set_trap_handler_args** %8, align 8
  %49 = getelementptr inbounds %struct.kfd_ioctl_set_trap_handler_args, %struct.kfd_ioctl_set_trap_handler_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kfd_ioctl_set_trap_handler_args*, %struct.kfd_ioctl_set_trap_handler_args** %8, align 8
  %52 = getelementptr inbounds %struct.kfd_ioctl_set_trap_handler_args, %struct.kfd_ioctl_set_trap_handler_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 %42(%struct.TYPE_4__* %45, i32* %47, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %36
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %62 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
