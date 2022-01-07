; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_SCRATCH2 = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vcn_v1_0_dec_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_dec_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 1
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = or i32 %19, -2147483648
  %21 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @UVD, align 4
  %24 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lower_32_bits(i32 %27)
  %29 = call i32 @WREG32_SOC15(i32 %23, i32 0, i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
