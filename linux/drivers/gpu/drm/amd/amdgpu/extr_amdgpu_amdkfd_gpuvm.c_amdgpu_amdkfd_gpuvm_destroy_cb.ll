; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_destroy_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_destroy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { i32, %struct.TYPE_5__, %struct.amdkfd_process_info* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }
%struct.amdkfd_process_info = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_gpuvm_destroy_cb(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_vm*, align 8
  %5 = alloca %struct.amdkfd_process_info*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %4, align 8
  %7 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %7, i32 0, i32 2
  %9 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %8, align 8
  store %struct.amdkfd_process_info* %9, %struct.amdkfd_process_info** %5, align 8
  %10 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %13, align 8
  store %struct.amdgpu_bo* %14, %struct.amdgpu_bo** %6, align 8
  %15 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %16 = icmp ne %struct.amdkfd_process_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %20 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %19, i32 0)
  %21 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %22 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %21, i32* null, i32 0)
  %23 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %24 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %23)
  %25 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %26 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %29 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %36 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %39 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %81, label %42

42:                                               ; preds = %18
  %43 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %44 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %43, i32 0, i32 6
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %51 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %50, i32 0, i32 5
  %52 = call i32 @list_empty(i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %58 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %57, i32 0, i32 4
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %65 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @dma_fence_put(i32* %67)
  %69 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %70 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %69, i32 0, i32 2
  %71 = call i32 @cancel_delayed_work_sync(i32* %70)
  %72 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %73 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @put_pid(i32 %74)
  %76 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %77 = getelementptr inbounds %struct.amdkfd_process_info, %struct.amdkfd_process_info* %76, i32 0, i32 0
  %78 = call i32 @mutex_destroy(i32* %77)
  %79 = load %struct.amdkfd_process_info*, %struct.amdkfd_process_info** %5, align 8
  %80 = call i32 @kfree(%struct.amdkfd_process_info* %79)
  br label %81

81:                                               ; preds = %17, %42, %18
  ret void
}

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, i32*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.amdkfd_process_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
