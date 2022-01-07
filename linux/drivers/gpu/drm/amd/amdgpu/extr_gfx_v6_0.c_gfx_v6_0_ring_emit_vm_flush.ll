; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_emit_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_emit_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_RING_TYPE_GFX = common dso_local global i64 0, align 8
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@mmVM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4
@PACKET3_SWITCH_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32)* @gfx_v6_0_ring_emit_vm_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_ring_emit_vm_flush(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AMDGPU_RING_TYPE_GFX, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @amdgpu_gmc_emit_flush_gpu_tlb(%struct.amdgpu_ring* %16, i32 %17, i32 %18)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %22 = call i32 @PACKET3(i32 %21, i32 5)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %25 = call i32 @WAIT_REG_MEM_FUNCTION(i32 0)
  %26 = call i32 @WAIT_REG_MEM_ENGINE(i32 0)
  %27 = or i32 %25, %26
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %27)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %30 = load i32, i32* @mmVM_INVALIDATE_REQUEST, align 4
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 0)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 0)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 0)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %39 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 32)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %3
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %44 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %45 = call i32 @PACKET3(i32 %44, i32 0)
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 0)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %50 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %51 = call i32 @PACKET3(i32 %50, i32 0)
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %51)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 0)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %56 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %57 = call i32 @PACKET3(i32 %56, i32 0)
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %57)
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %59, i32 0)
  br label %61

61:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @amdgpu_gmc_emit_flush_gpu_tlb(%struct.amdgpu_ring*, i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
