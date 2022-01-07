; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_fence.c_amdgpu_amdkfd_fence_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_fence.c_amdgpu_amdkfd_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_amdkfd_fence = type { i32, i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@amdkfd_fence_ops = common dso_local global i32 0, align 4
@fence_seq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amdgpu_amdkfd_fence* @amdgpu_amdkfd_fence_create(i32 %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.amdgpu_amdkfd_fence*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.amdgpu_amdkfd_fence*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.amdgpu_amdkfd_fence* @kzalloc(i32 24, i32 %7)
  store %struct.amdgpu_amdkfd_fence* %8, %struct.amdgpu_amdkfd_fence** %6, align 8
  %9 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %10 = icmp eq %struct.amdgpu_amdkfd_fence* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.amdgpu_amdkfd_fence* null, %struct.amdgpu_amdkfd_fence** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = call i32 @mmgrab(%struct.mm_struct* %13)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %16, i32 0, i32 3
  store %struct.mm_struct* %15, %struct.mm_struct** %17, align 8
  %18 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @get_task_comm(i32 %20, i32 %21)
  %23 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %26, i32 0, i32 1
  %28 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_amdkfd_fence, %struct.amdgpu_amdkfd_fence* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @atomic_inc_return(i32* @fence_seq)
  %32 = call i32 @dma_fence_init(i32* %27, i32* @amdkfd_fence_ops, i32* %29, i32 %30, i32 %31)
  %33 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %6, align 8
  store %struct.amdgpu_amdkfd_fence* %33, %struct.amdgpu_amdkfd_fence** %3, align 8
  br label %34

34:                                               ; preds = %12, %11
  %35 = load %struct.amdgpu_amdkfd_fence*, %struct.amdgpu_amdkfd_fence** %3, align 8
  ret %struct.amdgpu_amdkfd_fence* %35
}

declare dso_local %struct.amdgpu_amdkfd_fence* @kzalloc(i32, i32) #1

declare dso_local i32 @mmgrab(%struct.mm_struct*) #1

declare dso_local i32 @get_task_comm(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
