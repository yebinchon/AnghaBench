; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.radeon_ib = type { i64, i32, i32 }

@UVD_RBC_IB_BASE = common dso_local global i32 0, align 4
@UVD_RBC_IB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvd_v1_0_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %5, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %14 = load i32, i32* @UVD_RBC_IB_BASE, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %18 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @radeon_ring_write(%struct.radeon_ring* %17, i32 %20)
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %23 = load i32, i32* @UVD_RBC_IB_SIZE, align 4
  %24 = call i32 @PACKET0(i32 %23, i32 0)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %27 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 %29)
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
