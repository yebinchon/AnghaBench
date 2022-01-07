; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@VCN_DEC_KMD_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_WRITE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_dec_ring_emit_wreg(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 0
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %7, align 8
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PACKET0(i32 %16, i32 0)
  %18 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %11, i32 %17)
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 2
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PACKET0(i32 %28, i32 0)
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PACKET0(i32 %39, i32 0)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %43 = load i32, i32* @VCN_DEC_KMD_CMD, align 4
  %44 = load i32, i32* @VCN_DEC_CMD_WRITE_REG, align 4
  %45 = shl i32 %44, 1
  %46 = or i32 %43, %45
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %46)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
