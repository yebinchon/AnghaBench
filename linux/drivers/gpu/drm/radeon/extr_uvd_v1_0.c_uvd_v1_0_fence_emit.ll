; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_fence_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__*, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@UVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvd_v1_0_fence_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %12
  store %struct.radeon_ring* %13, %struct.radeon_ring** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = load i32, i32* @UVD_GPCOM_VCPU_DATA0, align 4
  %25 = call i32 @PACKET0(i32 %24, i32 0)
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 %28)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = load i32, i32* @UVD_GPCOM_VCPU_DATA1, align 4
  %32 = call i32 @PACKET0(i32 %31, i32 0)
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %35 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %37)
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %40 = load i32, i32* @UVD_GPCOM_VCPU_CMD, align 4
  %41 = call i32 @PACKET0(i32 %40, i32 0)
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 0)
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %46 = load i32, i32* @UVD_GPCOM_VCPU_DATA0, align 4
  %47 = call i32 @PACKET0(i32 %46, i32 0)
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 0)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %52 = load i32, i32* @UVD_GPCOM_VCPU_DATA1, align 4
  %53 = call i32 @PACKET0(i32 %52, i32 0)
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 %53)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 0)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = load i32, i32* @UVD_GPCOM_VCPU_CMD, align 4
  %59 = call i32 @PACKET0(i32 %58, i32 0)
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 2)
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
