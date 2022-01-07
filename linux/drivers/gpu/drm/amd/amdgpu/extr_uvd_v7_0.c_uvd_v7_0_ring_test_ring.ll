; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_CONTEXT_ID = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @uvd_v7_0_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @UVD, align 4
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @mmUVD_CONTEXT_ID, align 4
  %16 = call i32 @WREG32_SOC15(i32 %11, i32 %14, i32 %15, i32 -889266515)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %18 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %17, i32 3)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %25 = load i32, i32* @UVD, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @mmUVD_CONTEXT_ID, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %25, i32 %28, i32 %29)
  %31 = call i32 @PACKET0(i32 %30, i32 0)
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 -559038737)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %36 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %55, %23
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i32, i32* @UVD, align 4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @mmUVD_CONTEXT_ID, align 4
  %49 = call i32 @RREG32_SOC15(i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, -559038737
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %58

53:                                               ; preds = %43
  %54 = call i32 @udelay(i32 1)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %37

58:                                               ; preds = %52, %37
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp uge i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
