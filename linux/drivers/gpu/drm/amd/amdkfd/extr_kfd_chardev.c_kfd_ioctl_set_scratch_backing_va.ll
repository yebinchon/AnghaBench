; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_set_scratch_backing_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_set_scratch_backing_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_set_scratch_backing_va_args = type { i32, i32 }
%struct.kfd_process_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.kfd_dev = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (i32, i32, i64)* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_set_scratch_backing_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_set_scratch_backing_va(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kfd_process*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_ioctl_set_scratch_backing_va_args*, align 8
  %9 = alloca %struct.kfd_process_device*, align 8
  %10 = alloca %struct.kfd_dev*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.kfd_ioctl_set_scratch_backing_va_args*
  store %struct.kfd_ioctl_set_scratch_backing_va_args* %13, %struct.kfd_ioctl_set_scratch_backing_va_args** %8, align 8
  %14 = load %struct.kfd_ioctl_set_scratch_backing_va_args*, %struct.kfd_ioctl_set_scratch_backing_va_args** %8, align 8
  %15 = getelementptr inbounds %struct.kfd_ioctl_set_scratch_backing_va_args, %struct.kfd_ioctl_set_scratch_backing_va_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.kfd_dev* @kfd_device_by_id(i32 %16)
  store %struct.kfd_dev* %17, %struct.kfd_dev** %10, align 8
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %19 = icmp ne %struct.kfd_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %25 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %28 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %29 = call %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %27, %struct.kfd_process* %28)
  store %struct.kfd_process_device* %29, %struct.kfd_process_device** %9, align 8
  %30 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %31 = call i64 @IS_ERR(%struct.kfd_process_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %35 = call i64 @PTR_ERR(%struct.kfd_process_device* %34)
  store i64 %35, i64* %11, align 8
  br label %77

36:                                               ; preds = %23
  %37 = load %struct.kfd_ioctl_set_scratch_backing_va_args*, %struct.kfd_ioctl_set_scratch_backing_va_args** %8, align 8
  %38 = getelementptr inbounds %struct.kfd_ioctl_set_scratch_backing_va_args, %struct.kfd_ioctl_set_scratch_backing_va_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %41 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %47 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %36
  %54 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %55 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %61 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %63, align 8
  %65 = load %struct.kfd_dev*, %struct.kfd_dev** %10, align 8
  %66 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.kfd_ioctl_set_scratch_backing_va_args*, %struct.kfd_ioctl_set_scratch_backing_va_args** %8, align 8
  %69 = getelementptr inbounds %struct.kfd_ioctl_set_scratch_backing_va_args, %struct.kfd_ioctl_set_scratch_backing_va_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kfd_process_device*, %struct.kfd_process_device** %9, align 8
  %72 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 %64(i32 %67, i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %59, %53, %36
  store i32 0, i32* %4, align 4
  br label %83

77:                                               ; preds = %33
  %78 = load %struct.kfd_process*, %struct.kfd_process** %6, align 8
  %79 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %76, %20
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process_device*) #1

declare dso_local i64 @PTR_ERR(%struct.kfd_process_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
