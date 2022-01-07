; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_dec_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_SCRATCH2 = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vcn_v2_0_dec_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_0_dec_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_SCRATCH2, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = or i32 %19, -2147483648
  %21 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @lower_32_bits(i32 %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %31, i32* %39, align 4
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = call i32 @WDOORBELL32(i32 %42, i32 %46)
  br label %56

48:                                               ; preds = %22
  %49 = load i32, i32* @UVD, align 4
  %50 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @lower_32_bits(i32 %53)
  %55 = call i32 @WREG32_SOC15(i32 %49, i32 0, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %48, %27
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
