; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_emit_pipeline_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_emit_pipeline_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@AMDGPU_RING_TYPE_GFX = common dso_local global i64 0, align 8
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@PACKET3_SWITCH_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v6_0_ring_emit_pipeline_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_ring_emit_pipeline_sync(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AMDGPU_RING_TYPE_GFX, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 5)
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %22, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %27 = call i32 @WAIT_REG_MEM_MEM_SPACE(i32 1)
  %28 = call i32 @WAIT_REG_MEM_FUNCTION(i32 3)
  %29 = or i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WAIT_REG_MEM_ENGINE(i32 %30)
  %32 = or i32 %29, %31
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, -4
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 -1)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 4)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %1
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %53 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %54 = call i32 @PACKET3(i32 %53, i32 0)
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 0)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %59 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %60 = call i32 @PACKET3(i32 %59, i32 0)
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 %60)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 0)
  br label %64

64:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_MEM_SPACE(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
