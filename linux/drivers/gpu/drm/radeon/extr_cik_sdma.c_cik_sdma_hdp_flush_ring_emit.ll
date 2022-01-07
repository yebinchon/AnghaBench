; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_hdp_flush_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_hdp_flush_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@SDMA0 = common dso_local global i32 0, align 4
@SDMA1 = common dso_local global i32 0, align 4
@SDMA_OPCODE_POLL_REG_MEM = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_DONE = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_sdma_hdp_flush_ring_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_sdma_hdp_flush_ring_emit(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = call i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32 1)
  %15 = call i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32 3)
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @SDMA0, align 4
  store i32 %21, i32* %7, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @SDMA1, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %26 = load i32, i32* @SDMA_OPCODE_POLL_REG_MEM, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @SDMA_PACKET(i32 %26, i32 0, i32 %27)
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %25, i32 %28)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = load i32, i32* @GPU_HDP_FLUSH_DONE, align 4
  %32 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %31)
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %34 = load i32, i32* @GPU_HDP_FLUSH_REQ, align 4
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 %34)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 268369930)
  ret void
}

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32) #1

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
