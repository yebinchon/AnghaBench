; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_dec_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %9, align 8
  %14 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %15 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PACKET0(i32 %21, i32 0)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %16, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PACKET0(i32 %32, i32 0)
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lower_32_bits(i32 %38)
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PACKET0(i32 %46, i32 0)
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %50 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @upper_32_bits(i32 %52)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PACKET0(i32 %60, i32 0)
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %64 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 %66)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
