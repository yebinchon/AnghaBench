; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_hdp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_hdp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.TYPE_3__*, %struct.amdgpu_device* }
%struct.TYPE_3__ = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)*, %struct.nbio_hdp_flush_reg* }
%struct.nbio_hdp_flush_reg = type { i32, i32, i32 }

@AMDGPU_RING_TYPE_COMPUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v9_0_ring_emit_hdp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_ring_emit_hdp_flush(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nbio_hdp_flush_reg*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %7, i32 0, i32 3
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %13, align 8
  store %struct.nbio_hdp_flush_reg* %14, %struct.nbio_hdp_flush_reg** %6, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AMDGPU_RING_TYPE_COMPUTE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %42 [
    i32 1, label %26
    i32 2, label %34
  ]

26:                                               ; preds = %22
  %27 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %6, align 8
  %28 = getelementptr inbounds %struct.nbio_hdp_flush_reg, %struct.nbio_hdp_flush_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %6, align 8
  %36 = getelementptr inbounds %struct.nbio_hdp_flush_reg, %struct.nbio_hdp_flush_reg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %22
  br label %68

43:                                               ; preds = %34, %26
  store i32 0, i32* %5, align 4
  br label %48

44:                                               ; preds = %1
  %45 = load %struct.nbio_hdp_flush_reg*, %struct.nbio_hdp_flush_reg** %6, align 8
  %46 = getelementptr inbounds %struct.nbio_hdp_flush_reg, %struct.nbio_hdp_flush_reg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %43
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %54, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = call i32 %55(%struct.amdgpu_device* %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %61, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 %62(%struct.amdgpu_device* %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @gfx_v9_0_wait_reg_mem(%struct.amdgpu_ring* %49, i32 %50, i32 0, i32 1, i32 %57, i32 %64, i32 %65, i32 %66, i32 32)
  br label %68

68:                                               ; preds = %48, %42
  ret void
}

declare dso_local i32 @gfx_v9_0_wait_reg_mem(%struct.amdgpu_ring*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
