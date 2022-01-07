; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_destroy_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_destroy_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32, i32, i32 }
%struct.kfd_ioctl_destroy_queue_args = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Destroying queue id %d for pasid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_destroy_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_destroy_queue(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfd_ioctl_destroy_queue_args*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.kfd_ioctl_destroy_queue_args*
  store %struct.kfd_ioctl_destroy_queue_args* %10, %struct.kfd_ioctl_destroy_queue_args** %8, align 8
  %11 = load %struct.kfd_ioctl_destroy_queue_args*, %struct.kfd_ioctl_destroy_queue_args** %8, align 8
  %12 = getelementptr inbounds %struct.kfd_ioctl_destroy_queue_args, %struct.kfd_ioctl_destroy_queue_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %15 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %19 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %22 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %21, i32 0, i32 1
  %23 = load %struct.kfd_ioctl_destroy_queue_args*, %struct.kfd_ioctl_destroy_queue_args** %8, align 8
  %24 = getelementptr inbounds %struct.kfd_ioctl_destroy_queue_args, %struct.kfd_ioctl_destroy_queue_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pqm_destroy_queue(i32* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %28 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pqm_destroy_queue(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
