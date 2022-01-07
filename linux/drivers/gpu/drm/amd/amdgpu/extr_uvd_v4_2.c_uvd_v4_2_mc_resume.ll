; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

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
@mmUVD_LMI_ADDR_EXT = common dso_local global i32 0, align 4
@mmUVD_LMI_EXT40_ADDR = common dso_local global i32 0, align 4
@mmUVD_UDEC_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DB_ADDR_CONFIG = common dso_local global i32 0, align 4
@mmUVD_UDEC_DBW_ADDR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @uvd_v4_2_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvd_v4_2_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  %12 = add nsw i32 %10, %11
  %13 = ashr i32 %12, 3
  store i32 %13, i32* %3, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = call i32 @AMDGPU_UVD_FIRMWARE_SIZE(%struct.amdgpu_device* %14)
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  %20 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @WREG32(i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  %31 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @AMDGPU_UVD_STACK_SIZE, align 4
  %38 = load i32, i32* @AMDGPU_UVD_SESSION_SIZE, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %38, %42
  %44 = add nsw i32 %37, %43
  %45 = ashr i32 %44, 3
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
  %49 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 28
  %59 = and i32 %58, 15
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @mmUVD_LMI_ADDR_EXT, align 4
  %61 = load i32, i32* %3, align 4
  %62 = shl i32 %61, 12
  %63 = load i32, i32* %3, align 4
  %64 = shl i32 %63, 0
  %65 = or i32 %62, %64
  %66 = call i32 @WREG32(i32 %60, i32 %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 32
  %74 = and i32 %73, 255
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @mmUVD_LMI_EXT40_ADDR, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, 589824
  %78 = or i32 %77, -2147483648
  %79 = call i32 @WREG32(i32 %75, i32 %78)
  %80 = load i32, i32* @mmUVD_UDEC_ADDR_CONFIG, align 4
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WREG32(i32 %80, i32 %85)
  %87 = load i32, i32* @mmUVD_UDEC_DB_ADDR_CONFIG, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @WREG32(i32 %87, i32 %92)
  %94 = load i32, i32* @mmUVD_UDEC_DBW_ADDR_CONFIG, align 4
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @WREG32(i32 %94, i32 %99)
  ret void
}

declare dso_local i32 @AMDGPU_UVD_FIRMWARE_SIZE(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
