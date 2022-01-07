; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_fence_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_fence_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__*, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_ring = type { i32 }
%struct.radeon_fence = type { i64, i32 }

@PACKET3_FULL_CACHE_ENA = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_ENGINE_ME = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE_EOP = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_EVENT_TS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_fence_ring_emit(%struct.radeon_device* %0, %struct.radeon_fence* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_fence* %1, %struct.radeon_fence** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @PACKET3_FULL_CACHE_ENA, align 4
  %25 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PACKET3_SH_ACTION_ENA, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %31 = call i32 @PACKET3(i32 %30, i32 3)
  %32 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %31)
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %34 = load i32, i32* @PACKET3_ENGINE_ME, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 -1)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 0)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 10)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %46 = call i32 @PACKET3(i32 %45, i32 4)
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %46)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %49 = load i32, i32* @CACHE_FLUSH_AND_INV_EVENT_TS, align 4
  %50 = call i32 @EVENT_TYPE(i32 %49)
  %51 = call i32 @EVENT_INDEX(i32 5)
  %52 = or i32 %50, %51
  %53 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 %52)
  %54 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i32 @radeon_ring_write(%struct.radeon_ring* %54, i32 %56)
  %58 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @upper_32_bits(i32 %59)
  %61 = and i32 %60, 255
  %62 = call i32 @DATA_SEL(i32 1)
  %63 = or i32 %61, %62
  %64 = call i32 @INT_SEL(i32 2)
  %65 = or i32 %63, %64
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %58, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %68 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 0)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
