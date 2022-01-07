; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kiq_fini_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kiq_fini_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_HQD_ACTIVE = common dso_local global i32 0, align 4
@mmCP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@AMDGPU_MAX_USEC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"KIQ dequeue request failed.\0A\00", align 1
@mmCP_HQD_IQ_TIMER = common dso_local global i32 0, align 4
@mmCP_HQD_IB_CONTROL = common dso_local global i32 0, align 4
@mmCP_HQD_PERSISTENT_STATE = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_HI = common dso_local global i32 0, align 4
@mmCP_HQD_PQ_WPTR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v9_0_kiq_fini_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_kiq_fini_register(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 0
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* @GC, align 4
  %9 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  %14 = load i32, i32* @GC, align 4
  %15 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %16 = call i32 @WREG32_SOC15_RLC(i32 %14, i32 0, i32 %15, i32 1)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %32, %13
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* @GC, align 4
  %25 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %26 = call i32 @RREG32_SOC15(i32 %24, i32 0, i32 %25)
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  %31 = call i32 @udelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %17

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @AMDGPU_MAX_USEC_TIMEOUT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmCP_HQD_ACTIVE, align 4
  %43 = call i32 @WREG32_SOC15_RLC(i32 %41, i32 0, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmCP_HQD_DEQUEUE_REQUEST, align 4
  %47 = call i32 @WREG32_SOC15_RLC(i32 %45, i32 0, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44, %1
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmCP_HQD_IQ_TIMER, align 4
  %51 = call i32 @WREG32_SOC15_RLC(i32 %49, i32 0, i32 %50, i32 0)
  %52 = load i32, i32* @GC, align 4
  %53 = load i32, i32* @mmCP_HQD_IB_CONTROL, align 4
  %54 = call i32 @WREG32_SOC15_RLC(i32 %52, i32 0, i32 %53, i32 0)
  %55 = load i32, i32* @GC, align 4
  %56 = load i32, i32* @mmCP_HQD_PERSISTENT_STATE, align 4
  %57 = call i32 @WREG32_SOC15_RLC(i32 %55, i32 0, i32 %56, i32 0)
  %58 = load i32, i32* @GC, align 4
  %59 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %60 = call i32 @WREG32_SOC15_RLC(i32 %58, i32 0, i32 %59, i32 1073741824)
  %61 = load i32, i32* @GC, align 4
  %62 = load i32, i32* @mmCP_HQD_PQ_DOORBELL_CONTROL, align 4
  %63 = call i32 @WREG32_SOC15_RLC(i32 %61, i32 0, i32 %62, i32 0)
  %64 = load i32, i32* @GC, align 4
  %65 = load i32, i32* @mmCP_HQD_PQ_RPTR, align 4
  %66 = call i32 @WREG32_SOC15_RLC(i32 %64, i32 0, i32 %65, i32 0)
  %67 = load i32, i32* @GC, align 4
  %68 = load i32, i32* @mmCP_HQD_PQ_WPTR_HI, align 4
  %69 = call i32 @WREG32_SOC15_RLC(i32 %67, i32 0, i32 %68, i32 0)
  %70 = load i32, i32* @GC, align 4
  %71 = load i32, i32* @mmCP_HQD_PQ_WPTR_LO, align 4
  %72 = call i32 @WREG32_SOC15_RLC(i32 %70, i32 0, i32 %71, i32 0)
  ret i32 0
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_RLC(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
