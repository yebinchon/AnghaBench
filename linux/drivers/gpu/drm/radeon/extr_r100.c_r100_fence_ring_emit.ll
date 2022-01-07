; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_fence_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_fence_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__*, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@RADEON_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RADEON_RB3D_DC_FLUSH_ALL = common dso_local global i32 0, align 4
@RADEON_RB3D_ZCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RADEON_RB3D_ZC_FLUSH_ALL = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_GEN_INT_STATUS = common dso_local global i32 0, align 4
@RADEON_SW_INT_FIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_fence_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %5, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %14 = load i32, i32* @RADEON_RB3D_DSTCACHE_CTLSTAT, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %18 = load i32, i32* @RADEON_RB3D_DC_FLUSH_ALL, align 4
  %19 = call i32 @radeon_ring_write(%struct.radeon_ring* %17, i32 %18)
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %21 = load i32, i32* @RADEON_RB3D_ZCACHE_CTLSTAT, align 4
  %22 = call i32 @PACKET0(i32 %21, i32 0)
  %23 = call i32 @radeon_ring_write(%struct.radeon_ring* %20, i32 %22)
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %25 = load i32, i32* @RADEON_RB3D_ZC_FLUSH_ALL, align 4
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %24, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %28 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %29 = call i32 @PACKET0(i32 %28, i32 0)
  %30 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 %29)
  %31 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %32 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %33 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %31, i32 %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %38 = call i32 @r100_ring_hdp_flush(%struct.radeon_device* %36, %struct.radeon_ring* %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PACKET0(i32 %48, i32 0)
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %49)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %57 = load i32, i32* @RADEON_GEN_INT_STATUS, align 4
  %58 = call i32 @PACKET0(i32 %57, i32 0)
  %59 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %58)
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %61 = load i32, i32* @RADEON_SW_INT_FIRE, align 4
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 %61)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @r100_ring_hdp_flush(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
