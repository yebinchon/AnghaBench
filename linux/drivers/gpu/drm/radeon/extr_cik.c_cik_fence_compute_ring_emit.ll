; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_fence_compute_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_fence_compute_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__*, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@PACKET3_RELEASE_MEM = common dso_local global i32 0, align 4
@EOP_TCL1_ACTION_EN = common dso_local global i32 0, align 4
@EOP_TC_ACTION_EN = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_fence_compute_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
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
  %24 = load i32, i32* @PACKET3_RELEASE_MEM, align 4
  %25 = call i32 @PACKET3(i32 %24, i32 5)
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %23, i32 %25)
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %28 = load i32, i32* @EOP_TCL1_ACTION_EN, align 4
  %29 = load i32, i32* @EOP_TC_ACTION_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %32 = call i32 @EVENT_TYPE(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @EVENT_INDEX(i32 5)
  %35 = or i32 %33, %34
  %36 = call i32 @radeon_ring_write(%struct.radeon_ring* %27, i32 %35)
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %38 = call i32 @DATA_SEL(i32 1)
  %39 = call i32 @INT_SEL(i32 2)
  %40 = or i32 %38, %39
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %37, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, -4
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %44)
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 %48)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %51 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 %53)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 0)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
