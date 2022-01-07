; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v2_2.c_uvd_v2_2_fence_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v2_2.c_uvd_v2_2_fence_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__*, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@UVD_CONTEXT_ID = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvd_v2_2_fence_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
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
  %24 = load i32, i32* @UVD_CONTEXT_ID, align 4
  %25 = call i32 @PACKET0(i32 %24, i32 0)
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %28 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 %30)
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %33 = load i32, i32* @UVD_GPCOM_VCPU_DATA0, align 4
  %34 = call i32 @PACKET0(i32 %33, i32 0)
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %32, i32 %34)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i32 %38)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = load i32, i32* @UVD_GPCOM_VCPU_DATA1, align 4
  %42 = call i32 @PACKET0(i32 %41, i32 0)
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = and i32 %46, 255
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %50 = load i32, i32* @UVD_GPCOM_VCPU_CMD, align 4
  %51 = call i32 @PACKET0(i32 %50, i32 0)
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %51)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 0)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %56 = load i32, i32* @UVD_GPCOM_VCPU_DATA0, align 4
  %57 = call i32 @PACKET0(i32 %56, i32 0)
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 0)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %62 = load i32, i32* @UVD_GPCOM_VCPU_DATA1, align 4
  %63 = call i32 @PACKET0(i32 %62, i32 0)
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %63)
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %65, i32 0)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = load i32, i32* @UVD_GPCOM_VCPU_CMD, align 4
  %69 = call i32 @PACKET0(i32 %68, i32 0)
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %69)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %72 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 2)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
