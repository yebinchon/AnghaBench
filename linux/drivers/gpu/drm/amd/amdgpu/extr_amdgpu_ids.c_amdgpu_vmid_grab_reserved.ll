; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_grab_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_grab_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm = type { i32, %struct.TYPE_8__, %struct.amdgpu_vmid** }
%struct.TYPE_8__ = type { i64 }
%struct.amdgpu_ring = type { i64, %struct.amdgpu_device*, %struct.TYPE_7__* }
%struct.amdgpu_device = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.amdgpu_sync = type { %struct.dma_fence* }
%struct.dma_fence = type { i64 }
%struct.amdgpu_job = type { i64, i32 }
%struct.amdgpu_vmid = type { i64, i64, %struct.TYPE_9__*, %struct.amdgpu_sync, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm*, %struct.amdgpu_ring*, %struct.amdgpu_sync*, %struct.dma_fence*, %struct.amdgpu_job*, %struct.amdgpu_vmid**)* @amdgpu_vmid_grab_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vmid_grab_reserved(%struct.amdgpu_vm* %0, %struct.amdgpu_ring* %1, %struct.amdgpu_sync* %2, %struct.dma_fence* %3, %struct.amdgpu_job* %4, %struct.amdgpu_vmid** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_vm*, align 8
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca %struct.amdgpu_sync*, align 8
  %11 = alloca %struct.dma_fence*, align 8
  %12 = alloca %struct.amdgpu_job*, align 8
  %13 = alloca %struct.amdgpu_vmid**, align 8
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.dma_fence*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_vm* %0, %struct.amdgpu_vm** %8, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %9, align 8
  store %struct.amdgpu_sync* %2, %struct.amdgpu_sync** %10, align 8
  store %struct.dma_fence* %3, %struct.dma_fence** %11, align 8
  store %struct.amdgpu_job* %4, %struct.amdgpu_job** %12, align 8
  store %struct.amdgpu_vmid** %5, %struct.amdgpu_vmid*** %13, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %22, align 8
  store %struct.amdgpu_device* %23, %struct.amdgpu_device** %14, align 8
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %16, align 8
  %36 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %10, align 8
  %37 = getelementptr inbounds %struct.amdgpu_sync, %struct.amdgpu_sync* %36, i32 0, i32 0
  %38 = load %struct.dma_fence*, %struct.dma_fence** %37, align 8
  store %struct.dma_fence* %38, %struct.dma_fence** %17, align 8
  %39 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %40 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %42 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %43 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %42, i32 0, i32 2
  %44 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %44, i64 %46
  %48 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %47, align 8
  %49 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  store %struct.amdgpu_vmid* %48, %struct.amdgpu_vmid** %49, align 8
  %50 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %51 = icmp ne %struct.dma_fence* %50, null
  br i1 %51, label %52, label %78

52:                                               ; preds = %6
  %53 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %54 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %53, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %60 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %63 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %62, align 8
  %64 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %71 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %72 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %71, align 8
  %73 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @dma_fence_is_later(%struct.dma_fence* %70, %struct.TYPE_9__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  store %struct.dma_fence* null, %struct.dma_fence** %17, align 8
  br label %78

78:                                               ; preds = %77, %69, %58, %52, %6
  %79 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %80 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %79, align 8
  %81 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %84 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %82, %86
  br i1 %87, label %122, label %88

88:                                               ; preds = %78
  %89 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %90 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %93 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %92, align 8
  %94 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %91, %95
  br i1 %96, label %122, label %97

97:                                               ; preds = %88
  %98 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %99 = icmp ne %struct.dma_fence* %98, null
  br i1 %99, label %122, label %100

100:                                              ; preds = %97
  %101 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %102 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %101, align 8
  %103 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %102, i32 0, i32 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %108 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %107, align 8
  %109 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %108, i32 0, i32 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %141

115:                                              ; preds = %106
  %116 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %117 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %116, align 8
  %118 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %117, i32 0, i32 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @dma_fence_is_signaled(%struct.TYPE_10__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %115, %100, %97, %88, %78
  %123 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %124 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %123, align 8
  %125 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %127 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %126, align 8
  %128 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %127, i32 0, i32 3
  %129 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %130 = call %struct.dma_fence* @amdgpu_sync_peek_fence(%struct.amdgpu_sync* %128, %struct.amdgpu_ring* %129)
  store %struct.dma_fence* %130, %struct.dma_fence** %20, align 8
  %131 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %132 = icmp ne %struct.dma_fence* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %122
  %134 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  store %struct.amdgpu_vmid* null, %struct.amdgpu_vmid** %134, align 8
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  %136 = load %struct.amdgpu_sync*, %struct.amdgpu_sync** %10, align 8
  %137 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %138 = call i32 @amdgpu_sync_fence(%struct.amdgpu_device* %135, %struct.amdgpu_sync* %136, %struct.dma_fence* %137, i32 0)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  store i32 %139, i32* %7, align 4
  br label %172

140:                                              ; preds = %122
  store i32 1, i32* %18, align 4
  br label %141

141:                                              ; preds = %140, %115, %106
  %142 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %143 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %142, i32 0, i32 1
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %143, align 8
  %145 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %146 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %145, align 8
  %147 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %146, i32 0, i32 3
  %148 = load %struct.dma_fence*, %struct.dma_fence** %11, align 8
  %149 = call i32 @amdgpu_sync_fence(%struct.amdgpu_device* %144, %struct.amdgpu_sync* %147, %struct.dma_fence* %148, i32 0)
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = load i32, i32* %19, align 4
  store i32 %153, i32* %7, align 4
  br label %172

154:                                              ; preds = %141
  %155 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %156 = icmp ne %struct.dma_fence* %155, null
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %159 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %158, align 8
  %160 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = call i32 @dma_fence_put(%struct.TYPE_9__* %161)
  %163 = load %struct.dma_fence*, %struct.dma_fence** %17, align 8
  %164 = call %struct.TYPE_9__* @dma_fence_get(%struct.dma_fence* %163)
  %165 = load %struct.amdgpu_vmid**, %struct.amdgpu_vmid*** %13, align 8
  %166 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %165, align 8
  %167 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %166, i32 0, i32 2
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %167, align 8
  br label %168

168:                                              ; preds = %157, %154
  %169 = load i32, i32* %18, align 4
  %170 = load %struct.amdgpu_job*, %struct.amdgpu_job** %12, align 8
  %171 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %168, %152, %133
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @dma_fence_is_later(%struct.dma_fence*, %struct.TYPE_9__*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.TYPE_10__*) #1

declare dso_local %struct.dma_fence* @amdgpu_sync_peek_fence(%struct.amdgpu_sync*, %struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_sync_fence(%struct.amdgpu_device*, %struct.amdgpu_sync*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @dma_fence_get(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
