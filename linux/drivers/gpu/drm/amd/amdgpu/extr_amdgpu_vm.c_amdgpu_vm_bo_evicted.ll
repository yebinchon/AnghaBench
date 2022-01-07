; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_evicted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_evicted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_bo_base = type { i32, i32, %struct.amdgpu_bo*, %struct.amdgpu_vm* }
%struct.amdgpu_bo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_vm = type { i32 }

@ttm_bo_type_kernel = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_bo_base*)* @amdgpu_vm_bo_evicted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_bo_evicted(%struct.amdgpu_vm_bo_base* %0) #0 {
  %2 = alloca %struct.amdgpu_vm_bo_base*, align 8
  %3 = alloca %struct.amdgpu_vm*, align 8
  %4 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_vm_bo_base* %0, %struct.amdgpu_vm_bo_base** %2, align 8
  %5 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %5, i32 0, i32 3
  %7 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  store %struct.amdgpu_vm* %7, %struct.amdgpu_vm** %3, align 8
  %8 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %8, i32 0, i32 2
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  store %struct.amdgpu_bo* %10, %struct.amdgpu_bo** %4, align 8
  %11 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ttm_bo_type_kernel, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %20, i32 0, i32 1
  %22 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %22, i32 0, i32 0
  %24 = call i32 @list_move(i32* %21, i32* %23)
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %26, i32 0, i32 1
  %28 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %28, i32 0, i32 0
  %30 = call i32 @list_move_tail(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
