; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_enc_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_enc_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i64, i32, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring* }
%struct.TYPE_4__ = type { i32* }

@UVD = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @uvd_v7_0_enc_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v7_0_enc_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
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
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @lower_32_bits(i32 %14)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @WDOORBELL32(i32 %26, i32 %30)
  br label %68

32:                                               ; preds = %1
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %42, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i64 0
  %45 = icmp eq %struct.amdgpu_ring* %33, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %32
  %47 = load i32, i32* @UVD, align 4
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @lower_32_bits(i32 %54)
  %56 = call i32 @WREG32_SOC15(i32 %47, i64 %50, i32 %51, i32 %55)
  br label %68

57:                                               ; preds = %32
  %58 = load i32, i32* @UVD, align 4
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @lower_32_bits(i32 %65)
  %67 = call i32 @WREG32_SOC15(i32 %58, i64 %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %11, %57, %46
  ret void
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
