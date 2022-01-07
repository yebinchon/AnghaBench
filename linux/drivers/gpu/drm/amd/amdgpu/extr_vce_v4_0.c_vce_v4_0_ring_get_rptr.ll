; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_ring_get_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_ring_get_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@VCE = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR2 = common dso_local global i32 0, align 4
@mmVCE_RB_RPTR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @vce_v4_0_ring_get_rptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v4_0_ring_get_rptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 1
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @VCE, align 4
  %14 = load i32, i32* @mmVCE_RB_RPTR, align 4
  %15 = call i32 @SOC15_REG_OFFSET(i32 %13, i32 0, i32 %14)
  %16 = call i32 @RREG32(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @VCE, align 4
  %24 = load i32, i32* @mmVCE_RB_RPTR2, align 4
  %25 = call i32 @SOC15_REG_OFFSET(i32 %23, i32 0, i32 %24)
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @VCE, align 4
  %29 = load i32, i32* @mmVCE_RB_RPTR3, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %28, i32 0, i32 %29)
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %22, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
