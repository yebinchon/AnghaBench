; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_grab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm = type { i32, %struct.TYPE_6__, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_ring = type { %struct.amdgpu_device*, %struct.TYPE_4__* }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.amdgpu_vmid_mgr* }
%struct.amdgpu_vmid_mgr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_sync = type { %struct.dma_fence* }
%struct.dma_fence = type { i32 }
%struct.amdgpu_job = type { i32, i32, %struct.amdgpu_vmid*, i32 }
%struct.amdgpu_vmid = type { i32*, i32, i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vmid_grab(%struct.amdgpu_vm* %0, %struct.amdgpu_ring* %1, %struct.amdgpu_sync* %2, %struct.dma_fence* %3, %struct.amdgpu_job* %4) #0 {
  %6 = alloca %struct.amdgpu_vm*, align 8
  %7 = alloca %struct.amdgpu_ring*, align 8
  %8 = alloca %struct.amdgpu_sync*, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca %struct.amdgpu_job*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdgpu_vmid_mgr*, align 8
  %14 = alloca %struct.amdgpu_vmid*, align 8
  %15 = alloca %struct.amdgpu_vmid*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_vm* %0, %struct.amdgpu_vm** %6, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %7, align 8
  store %struct.amdgpu_sync* %2, %struct.amdgpu_sync** %8, align 8
  store %struct.dma_fence* %3, %struct.dma_fence** %9, align 8
  store %struct.amdgpu_job* %4, %struct.amdgpu_job** %10, align 8
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  store %struct.amdgpu_device* %20, %struct.amdgpu_device** %11, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %29, i64 %31
  store %struct.amdgpu_vmid_mgr* %32, %struct.amdgpu_vmid_mgr** %13, align 8
  store %struct.amdgpu_vmid* null, %struct.amdgpu_vmid** %14, align 8
  store %struct.amdgpu_vmid* null, %struct.amdgpu_vmid** %15, align 8
  store i32 0, i32* %16, align 4
  %33 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %13, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %38 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %39 = call i32 @amdgpu_vmid_grab_idle(%struct.amdgpu_vm* %36, %struct.amdgpu_ring* %37, %struct.amdgpu_sync* %38, %struct.amdgpu_vmid** %14)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %5
  %43 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %14, align 8
  %44 = icmp ne %struct.amdgpu_vmid* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %5
  br label %156

46:                                               ; preds = %42
  %47 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %48 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %58 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %59 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %60 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %61 = call i32 @amdgpu_vmid_grab_reserved(%struct.amdgpu_vm* %56, %struct.amdgpu_ring* %57, %struct.amdgpu_sync* %58, %struct.dma_fence* %59, %struct.amdgpu_job* %60, %struct.amdgpu_vmid** %15)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %66 = icmp ne %struct.amdgpu_vmid* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %55
  br label %156

68:                                               ; preds = %64
  br label %114

69:                                               ; preds = %46
  %70 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %72 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %73 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %74 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %75 = call i32 @amdgpu_vmid_grab_used(%struct.amdgpu_vm* %70, %struct.amdgpu_ring* %71, %struct.amdgpu_sync* %72, %struct.dma_fence* %73, %struct.amdgpu_job* %74, %struct.amdgpu_vmid** %15)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %156

79:                                               ; preds = %69
  %80 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %81 = icmp ne %struct.amdgpu_vmid* %80, null
  br i1 %81, label %108, label %82

82:                                               ; preds = %79
  %83 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %8, align 8
  %84 = getelementptr inbounds %struct.amdgpu_sync, %struct.amdgpu_sync* %83, i32 0, i32 0
  %85 = load %struct.dma_fence*, %struct.dma_fence** %84, align 8
  store %struct.dma_fence* %85, %struct.dma_fence** %17, align 8
  %86 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %14, align 8
  store %struct.amdgpu_vmid* %86, %struct.amdgpu_vmid** %15, align 8
  %87 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %88 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %87, i32 0, i32 0
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %88, align 8
  %90 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %91 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %90, i32 0, i32 5
  %92 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %93 = call i32 @amdgpu_sync_fence(%struct.amdgpu_device* %89, i32* %91, %struct.dma_fence* %92, i32 0)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %156

97:                                               ; preds = %82
  %98 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %99 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @dma_fence_put(i32* %100)
  %102 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %103 = call i32* @dma_fence_get(%struct.dma_fence* %102)
  %104 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %105 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %104, i32 0, i32 4
  store i32* %103, i32** %105, align 8
  %106 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %107 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %97, %79
  %109 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %110 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %109, i32 0, i32 3
  %111 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %13, align 8
  %112 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %111, i32 0, i32 2
  %113 = call i32 @list_move_tail(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %108, %68
  %115 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %116 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %119 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %121 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %125 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %127 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %114
  %131 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %132 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @dma_fence_put(i32* %133)
  %135 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %136 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %130, %114
  %138 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %15, align 8
  %139 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %13, align 8
  %140 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %138, i64 %143
  %145 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %146 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %145, i32 0, i32 2
  store %struct.amdgpu_vmid* %144, %struct.amdgpu_vmid** %146, align 8
  %147 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %148 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %151 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %7, align 8
  %154 = load %struct.amdgpu_job*, %struct.amdgpu_job** %10, align 8
  %155 = call i32 @trace_amdgpu_vm_grab_id(%struct.amdgpu_vm* %152, %struct.amdgpu_ring* %153, %struct.amdgpu_job* %154)
  br label %156

156:                                              ; preds = %137, %96, %78, %67, %45
  %157 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %13, align 8
  %158 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %157, i32 0, i32 1
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load i32, i32* %16, align 4
  ret i32 %160
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_vmid_grab_idle(%struct.amdgpu_vm*, %struct.amdgpu_ring*, %struct.amdgpu_sync*, %struct.amdgpu_vmid**) #1

declare dso_local i32 @amdgpu_vmid_grab_reserved(%struct.amdgpu_vm*, %struct.amdgpu_ring*, %struct.amdgpu_sync*, %struct.dma_fence*, %struct.amdgpu_job*, %struct.amdgpu_vmid**) #1

declare dso_local i32 @amdgpu_vmid_grab_used(%struct.amdgpu_vm*, %struct.amdgpu_ring*, %struct.amdgpu_sync*, %struct.dma_fence*, %struct.amdgpu_job*, %struct.amdgpu_vmid**) #1

declare dso_local i32 @amdgpu_sync_fence(%struct.amdgpu_device*, i32*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i32* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @trace_amdgpu_vm_grab_id(%struct.amdgpu_vm*, %struct.amdgpu_ring*, %struct.amdgpu_job*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
