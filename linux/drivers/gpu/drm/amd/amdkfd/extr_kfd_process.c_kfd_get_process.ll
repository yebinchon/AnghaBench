; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_get_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_get_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32 }
%struct.task_struct = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_process* @kfd_get_process(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.kfd_process*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.kfd_process*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.kfd_process* @ERR_PTR(i32 %11)
  store %struct.kfd_process* %12, %struct.kfd_process** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.kfd_process* @ERR_PTR(i32 %25)
  store %struct.kfd_process* %26, %struct.kfd_process** %2, align 8
  br label %38

27:                                               ; preds = %13
  %28 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %29 = call %struct.kfd_process* @find_process(%struct.task_struct* %28)
  store %struct.kfd_process* %29, %struct.kfd_process** %4, align 8
  %30 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %31 = icmp ne %struct.kfd_process* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.kfd_process* @ERR_PTR(i32 %34)
  store %struct.kfd_process* %35, %struct.kfd_process** %2, align 8
  br label %38

36:                                               ; preds = %27
  %37 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  store %struct.kfd_process* %37, %struct.kfd_process** %2, align 8
  br label %38

38:                                               ; preds = %36, %32, %23, %9
  %39 = load %struct.kfd_process*, %struct.kfd_process** %2, align 8
  ret %struct.kfd_process* %39
}

declare dso_local %struct.kfd_process* @ERR_PTR(i32) #1

declare dso_local %struct.kfd_process* @find_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
