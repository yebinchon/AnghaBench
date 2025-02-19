; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@VCN_DEC_KMD_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_REG_READ_COND_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_dec_ring_emit_reg_wait(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PACKET0(i32 %18, i32 0)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 2
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PACKET0(i32 %30, i32 0)
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PACKET0(i32 %41, i32 0)
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PACKET0(i32 %52, i32 0)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = load i32, i32* @VCN_DEC_KMD_CMD, align 4
  %57 = load i32, i32* @VCN_DEC_CMD_REG_READ_COND_WAIT, align 4
  %58 = shl i32 %57, 1
  %59 = or i32 %56, %58
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %59)
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
