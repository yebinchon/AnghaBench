; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@VCN_DEC_KMD_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_FENCE = common dso_local global i32 0, align 4
@VCN_DEC_CMD_TRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_dec_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PACKET0(i32 %22, i32 0)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PACKET0(i32 %33, i32 0)
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PACKET0(i32 %44, i32 0)
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @upper_32_bits(i32 %48)
  %50 = and i32 %49, 255
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PACKET0(i32 %57, i32 0)
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %58)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %61 = load i32, i32* @VCN_DEC_KMD_CMD, align 4
  %62 = load i32, i32* @VCN_DEC_CMD_FENCE, align 4
  %63 = shl i32 %62, 1
  %64 = or i32 %61, %63
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PACKET0(i32 %71, i32 0)
  %73 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %66, i32 %72)
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %75 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %74, i32 0)
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PACKET0(i32 %81, i32 0)
  %83 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %76, i32 %82)
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %85 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %84, i32 0)
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PACKET0(i32 %91, i32 0)
  %93 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %86, i32 %92)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %95 = load i32, i32* @VCN_DEC_KMD_CMD, align 4
  %96 = load i32, i32* @VCN_DEC_CMD_TRAP, align 4
  %97 = shl i32 %96, 1
  %98 = or i32 %95, %97
  %99 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %94, i32 %98)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
