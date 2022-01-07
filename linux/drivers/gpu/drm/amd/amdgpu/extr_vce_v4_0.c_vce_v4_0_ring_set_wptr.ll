; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@VCE = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR2 = common dso_local global i32 0, align 4
@mmVCE_RB_WPTR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vce_v4_0_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v4_0_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 5
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @lower_32_bits(i32 %14)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @WDOORBELL32(i32 %26, i32 %30)
  br label %70

32:                                               ; preds = %1
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @VCE, align 4
  %39 = load i32, i32* @mmVCE_RB_WPTR, align 4
  %40 = call i32 @SOC15_REG_OFFSET(i32 %38, i32 0, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = call i32 @WREG32(i32 %40, i32 %44)
  br label %70

46:                                               ; preds = %32
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @VCE, align 4
  %53 = load i32, i32* @mmVCE_RB_WPTR2, align 4
  %54 = call i32 @SOC15_REG_OFFSET(i32 %52, i32 0, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lower_32_bits(i32 %57)
  %59 = call i32 @WREG32(i32 %54, i32 %58)
  br label %69

60:                                               ; preds = %46
  %61 = load i32, i32* @VCE, align 4
  %62 = load i32, i32* @mmVCE_RB_WPTR3, align 4
  %63 = call i32 @SOC15_REG_OFFSET(i32 %61, i32 0, i32 %62)
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lower_32_bits(i32 %66)
  %68 = call i32 @WREG32(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %60, %51
  br label %70

70:                                               ; preds = %11, %69, %37
  ret void
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
