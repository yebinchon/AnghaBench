; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r420.c_r420_cp_errata_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r420.c_r420_cp_errata_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.radeon_ring* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DC_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r420_cp_errata_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r420_cp_errata_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 1
  %7 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %8 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %9 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %7, i64 %8
  store %struct.radeon_ring* %9, %struct.radeon_ring** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %12 = call i32 @radeon_ring_lock(%struct.radeon_device* %10, %struct.radeon_ring* %11, i32 8)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %16 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %17 = call i32 @PACKET0(i32 %16, i32 0)
  %18 = call i32 @radeon_ring_write(%struct.radeon_ring* %15, i32 %17)
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %20 = load i32, i32* @R300_RB3D_DC_FINISH, align 4
  %21 = call i32 @radeon_ring_write(%struct.radeon_ring* %19, i32 %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %24 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %22, %struct.radeon_ring* %23, i32 0)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @radeon_scratch_free(%struct.radeon_device* %25, i32 %30)
  ret void
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_scratch_free(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
