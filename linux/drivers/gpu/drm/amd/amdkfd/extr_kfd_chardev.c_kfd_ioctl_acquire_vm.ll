; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_acquire_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_acquire_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_acquire_vm_args = type { i32, i32 }
%struct.kfd_process_device = type { %struct.file* }
%struct.kfd_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_acquire_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_acquire_vm(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_acquire_vm_args*, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  %10 = alloca %struct.kfd_dev*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.kfd_ioctl_acquire_vm_args*
  store %struct.kfd_ioctl_acquire_vm_args* %14, %struct.kfd_ioctl_acquire_vm_args** %8, align 8
  %15 = load %struct.kfd_ioctl_acquire_vm_args*, %struct.kfd_ioctl_acquire_vm_args** %8, align 8
  %16 = getelementptr inbounds %struct.kfd_ioctl_acquire_vm_args, %struct.kfd_ioctl_acquire_vm_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.kfd_dev* @kfd_device_by_id(i32 %17)
  store %struct.kfd_dev* %18, %struct.kfd_dev** %10, align 8
  %19 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %20 = icmp ne %struct.kfd_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.kfd_ioctl_acquire_vm_args*, %struct.kfd_ioctl_acquire_vm_args** %8, align 8
  %26 = getelementptr inbounds %struct.kfd_ioctl_acquire_vm_args, %struct.kfd_ioctl_acquire_vm_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.file* @fget(i32 %27)
  store %struct.file* %28, %struct.file** %11, align 8
  %29 = load %struct.file*, %struct.file** %11, align 8
  %30 = icmp ne %struct.file* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %81

34:                                               ; preds = %24
  %35 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %36 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %39 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %40 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %38, %struct.kfd_process* %39)
  store %struct.kfd_process_device* %40, %struct.kfd_process_device** %9, align 8
  %41 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %42 = icmp ne %struct.kfd_process_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %74

46:                                               ; preds = %34
  %47 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %48 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %47, i32 0, i32 0
  %49 = load %struct.file*, %struct.file** %48, align 8
  %50 = icmp ne %struct.file* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %53 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %52, i32 0, i32 0
  %54 = load %struct.file*, %struct.file** %53, align 8
  %55 = load %struct.file*, %struct.file** %11, align 8
  %56 = icmp eq %struct.file* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 0, %57 ], [ %60, %58 ]
  store i32 %62, i32* %12, align 4
  br label %74

63:                                               ; preds = %46
  %64 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %65 = load %struct.file*, %struct.file** %11, align 8
  %66 = call i32 @kfd_process_device_init_vm(%struct.kfd_process_device* %64, %struct.file* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %63
  %71 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %72 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %4, align 4
  br label %81

74:                                               ; preds = %69, %61, %43
  %75 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %76 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.file*, %struct.file** %11, align 8
  %79 = call i32 @fput(%struct.file* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %70, %31, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @kfd_process_device_init_vm(%struct.kfd_process_device*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
