; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_query_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_query_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AMDGPU_RING_TYPE_GFX = common dso_local global i64 0, align 8
@PACKET3_QUERY_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_ring*, i32, i32)* @gfx10_kiq_query_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx10_kiq_query_status(%struct.amdgpu_ring* %0, %struct.amdgpu_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AMDGPU_RING_TYPE_GFX, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 4, i32 0
  store i32 %18, i32* %9, align 4
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %20 = load i32, i32* @PACKET3_QUERY_STATUS, align 4
  %21 = call i32 @PACKET3(i32 %20, i32 5)
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %24 = call i32 @PACKET3_QUERY_STATUS_CONTEXT_ID(i32 0)
  %25 = call i32 @PACKET3_QUERY_STATUS_INTERRUPT_SEL(i32 0)
  %26 = or i32 %24, %25
  %27 = call i32 @PACKET3_QUERY_STATUS_COMMAND(i32 2)
  %28 = or i32 %26, %27
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PACKET3_QUERY_STATUS_DOORBELL_OFFSET(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @PACKET3_QUERY_STATUS_ENG_SEL(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @upper_32_bits(i32 %44)
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @lower_32_bits(i32 %48)
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @upper_32_bits(i32 %52)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %53)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_QUERY_STATUS_CONTEXT_ID(i32) #1

declare dso_local i32 @PACKET3_QUERY_STATUS_INTERRUPT_SEL(i32) #1

declare dso_local i32 @PACKET3_QUERY_STATUS_COMMAND(i32) #1

declare dso_local i32 @PACKET3_QUERY_STATUS_DOORBELL_OFFSET(i32) #1

declare dso_local i32 @PACKET3_QUERY_STATUS_ENG_SEL(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
