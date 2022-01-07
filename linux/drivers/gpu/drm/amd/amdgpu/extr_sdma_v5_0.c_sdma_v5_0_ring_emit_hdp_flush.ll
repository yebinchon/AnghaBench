; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_hdp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_hdp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)*, %struct.nbio_hdp_flush_reg* }
%struct.nbio_hdp_flush_reg = type { i32, i32 }

@SDMA_OP_POLL_REGMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @sdma_v5_0_ring_emit_hdp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_ring_emit_hdp_flush(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbio_hdp_flush_reg*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 1
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %12, align 8
  store %struct.nbio_hdp_flush_reg* %13, %struct.nbio_hdp_flush_reg** %5, align 8
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %5, align 8
  %20 = getelementptr inbounds %struct.nbio_hdp_flush_reg, %struct.nbio_hdp_flush_reg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %5, align 8
  %24 = getelementptr inbounds %struct.nbio_hdp_flush_reg, %struct.nbio_hdp_flush_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = load i32, i32* @SDMA_OP_POLL_REGMEM, align 4
  %29 = call i32 @SDMA_PKT_HEADER_OP(i32 %28)
  %30 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32 1)
  %31 = or i32 %29, %30
  %32 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32 3)
  %33 = or i32 %31, %32
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %39, align 8
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = call i32 %40(%struct.amdgpu_device* %41)
  %43 = shl i32 %42, 2
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %49, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = call i32 %50(%struct.amdgpu_device* %51)
  %53 = shl i32 %52, 2
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %62 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32 4095)
  %63 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32 10)
  %64 = or i32 %62, %63
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 %64)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
