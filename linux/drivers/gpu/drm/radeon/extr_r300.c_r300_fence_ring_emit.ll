; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_fence_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_fence_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.radeon_ring* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@R300_RE_SCISSORS_TL = common dso_local global i32 0, align 4
@R300_RE_SCISSORS_BR = common dso_local global i32 0, align 4
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DC_FLUSH = common dso_local global i32 0, align 4
@R300_RB3D_ZCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_ZC_FLUSH = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4
@RADEON_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@RADEON_HDP_READ_BUFFER_INVALIDATE = common dso_local global i32 0, align 4
@RADEON_GEN_INT_STATUS = common dso_local global i32 0, align 4
@RADEON_SW_INT_FIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r300_fence_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %5, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %14 = load i32, i32* @R300_RE_SCISSORS_TL, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %18 = call i32 @radeon_ring_write(%struct.radeon_ring* %17, i32 0)
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %20 = load i32, i32* @R300_RE_SCISSORS_BR, align 4
  %21 = call i32 @PACKET0(i32 %20, i32 0)
  %22 = call i32 @radeon_ring_write(%struct.radeon_ring* %19, i32 %21)
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 0)
  %25 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %26 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %27 = call i32 @PACKET0(i32 %26, i32 0)
  %28 = call i32 @radeon_ring_write(%struct.radeon_ring* %25, i32 %27)
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = load i32, i32* @R300_RB3D_DC_FLUSH, align 4
  %31 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %30)
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %33 = load i32, i32* @R300_RB3D_ZCACHE_CTLSTAT, align 4
  %34 = call i32 @PACKET0(i32 %33, i32 0)
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %32, i32 %34)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = load i32, i32* @R300_ZC_FLUSH, align 4
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %41 = call i32 @PACKET0(i32 %40, i32 0)
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %44 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %45 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RADEON_WAIT_DMA_GUI_IDLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 %48)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %51 = load i32, i32* @RADEON_HOST_PATH_CNTL, align 4
  %52 = call i32 @PACKET0(i32 %51, i32 0)
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %52)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RADEON_HDP_READ_BUFFER_INVALIDATE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %61)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %64 = load i32, i32* @RADEON_HOST_PATH_CNTL, align 4
  %65 = call i32 @PACKET0(i32 %64, i32 0)
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %72)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %79 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PACKET0(i32 %83, i32 0)
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %87 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %89)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %92 = load i32, i32* @RADEON_GEN_INT_STATUS, align 4
  %93 = call i32 @PACKET0(i32 %92, i32 0)
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 %93)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %96 = load i32, i32* @RADEON_SW_INT_FIRE, align 4
  %97 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 %96)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
