; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_enc_ring_get_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_enc_ring_get_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i64, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring* }

@UVD = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @vcn_v2_5_enc_ring_get_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_5_enc_ring_get_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 3
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %17, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i64 0
  %20 = icmp eq %struct.amdgpu_ring* %8, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  br label %65

36:                                               ; preds = %21
  %37 = load i32, i32* @UVD, align 4
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %42 = call i32 @RREG32_SOC15(i32 %37, i64 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %65

43:                                               ; preds = %1
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %43
  %59 = load i32, i32* @UVD, align 4
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %64 = call i32 @RREG32_SOC15(i32 %59, i64 %62, i32 %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %48, %36, %26
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @RREG32_SOC15(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
