; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@AMDGPU_UVD_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@AMDGPU_UVD_HEAP_SIZE = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@AMDGPU_UVD_STACK_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UVD_SESSION_SIZE = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@mmUVD_UDEC_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DB_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @uvd_v6_0_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v6_0_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lower_32_bits(i32 %11)
  %13 = call i32 @WREG32(i32 %5, i32 %12)
  %14 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @upper_32_bits(i32 %20)
  %22 = call i32 @WREG32(i32 %14, i32 %21)
  %23 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = call i32 @AMDGPU_UVD_FIRMWARE_SIZE(%struct.amdgpu_device* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %27 = load i32, i32* %3, align 4
  %28 = ashr i32 %27, 3
  %29 = call i32 @WREG32(i32 %26, i32 %28)
  %30 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 3
  %40 = call i32 @WREG32(i32 %37, i32 %39)
  %41 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @AMDGPU_UVD_STACK_SIZE, align 4
  %48 = load i32, i32* @AMDGPU_UVD_SESSION_SIZE, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %48, %52
  %54 = add nsw i32 %47, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = ashr i32 %56, 3
  %58 = call i32 @WREG32(i32 %55, i32 %57)
  %59 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  %62 = load i32, i32* @mmUVD_UDEC_ADDR_CONFIG, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @WREG32(i32 %62, i32 %67)
  %69 = load i32, i32* @mmUVD_UDEC_DB_ADDR_CONFIG, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @WREG32(i32 %69, i32 %74)
  %76 = load i32, i32* @mmUVD_UDEC_DBW_ADDR_CONFIG, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @WREG32(i32 %76, i32 %81)
  %83 = load i32, i32* @mmUVD_GP_SCRATCH4, align 4
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @WREG32(i32 %83, i32 %87)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @AMDGPU_UVD_FIRMWARE_SIZE(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
