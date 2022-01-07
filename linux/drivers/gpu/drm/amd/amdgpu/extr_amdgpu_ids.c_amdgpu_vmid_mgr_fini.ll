; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_mgr_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_mgr_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_vmid_mgr* }
%struct.amdgpu_vmid_mgr = type { %struct.amdgpu_vmid*, i32 }
%struct.amdgpu_vmid = type { i32, i32, i32, i32 }

@AMDGPU_MAX_VMHUBS = common dso_local global i32 0, align 4
@AMDGPU_NUM_VMID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vmid_mgr_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_vmid_mgr*, align 8
  %6 = alloca %struct.amdgpu_vmid*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AMDGPU_MAX_VMHUBS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %15, i64 %17
  store %struct.amdgpu_vmid_mgr* %18, %struct.amdgpu_vmid_mgr** %5, align 8
  %19 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %19, i32 0, i32 1
  %21 = call i32 @mutex_destroy(i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %48, %11
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AMDGPU_NUM_VMID, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %29, i64 %31
  store %struct.amdgpu_vmid* %32, %struct.amdgpu_vmid** %6, align 8
  %33 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %33, i32 0, i32 3
  %35 = call i32 @amdgpu_sync_free(i32* %34)
  %36 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %6, align 8
  %37 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_fence_put(i32 %38)
  %40 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %6, align 8
  %41 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_fence_put(i32 %42)
  %44 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_fence_put(i32 %46)
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %22

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %7

55:                                               ; preds = %7
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @amdgpu_sync_free(i32*) #1

declare dso_local i32 @dma_fence_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
